import 'package:dart2ast_engine/dart2ast.dart';
import 'package:uuid/uuid.dart';

typedef ProcessOperationCallback = void Function(Node node, ScopeContext scope);

String generateScopeId() => Uuid().v8();

extension NodeProcessExtension on Node {
  void specificProcess<T extends Node>(
    void Function(T, ScopeContext) operation,
  ) {
    process((node, scope) {
      if (node is T) operation(node, scope);
    });
  }

  void process(
    ProcessOperationCallback operation, [
    ScopeContext scope = const ScopeContext(),
  ]) {
    operation(this, scope);

    final _ = switch (this) {
      ProgramFile program => program.process(operation, ScopeContext.rootScope),
      Statement statement => statement.process(operation, scope),
      Expression expression => expression.process(operation, scope),
      _ => throw UnsupportedError('Unknown node type')
    };
  }
}

extension ProgramFileProcessExtension on ProgramFile {
  void process(ProcessOperationCallback operation, ScopeContext scope) {
    operation(this, scope);

    for (var line in lines) {
      line.process(operation, scope);
    }
  }
}

extension StatementProcessExtension on Statement {
  void process(ProcessOperationCallback operation, ScopeContext scope) {
    operation(this, scope);

    switch (this) {
      case VariableDeclarationStatement statement:
        statement.value?.process(operation, scope);
        break;

      case AssignmentStatement statement:
        statement.value.process(operation, scope);
        break;

      case ExpressionDefinitionStatement statement:
        statement.value.process(operation, scope);
        break;

      case IfDefinitionStatement statement:
        //TODO:grazie simo !!!
        break;

      case WhileDefinitionStatement statement:
        //TODO:simo grazie anche di questo!!!
        break;

      case FunctionDefinitionStatement statement:
        var newScope = "$scope/${generateScopeId()}";
        statement.body.forEach((e) => e.process(operation, newScope));
        break;

      case ClassDefinitionStatement statement:
        var newScope = "$scope/${generateScopeId()}";
        statement.methods.forEach((e) => e.process(operation, newScope));
        statement.properties.forEach((e) => e.process(operation, newScope));
        statement.constructors.forEach((e) => e.process(operation, newScope));
        break;

      case ConstructorDefinitionStatement statement:
        var newScope = "$scope/${generateScopeId()}";
        statement.body.forEach((e) => e.process(operation, newScope));
        break;

      default:
        throw UnsupportedError('Unknown statement type');
    }
  }
}

extension VariableDeclarationStatementExtension
    on VariableDeclarationStatement {
  void process(ProcessOperationCallback operation, ScopeContext scope) {
    value?.process(operation, scope);

    final sign = VariableSign(
      name,
      valueType ?? _extractType(value!, scope),
      varType == VariableType.variable || varType == VariableType.type,
    );

    scope.declaredVariables[name] = sign;
  }

  VariableValueType _extractType(Expression e, ScopeContext context) =>
      switch (e) {
        IntLit _ => VariableValueType.INT,
        DecLit _ => VariableValueType.DOUBLE,
        BoolLit _ => VariableValueType.BOOLEAN,
        StringLit _ => VariableValueType.STRING,
        BinaryExpression bin => _extractType(bin.left, context),
        UnaryLogicExpression _ => VariableValueType.BOOLEAN,
        UnaryMathExpression un => _extractType(un.value, context),
        ParenthesysExpression un => _extractType(un.value, context),
        VarReferenceExpression ref =>
          context.read<VariableSign>(ref.name)!.type,
        FunctionCallExpression call =>
          _extractFunctionReturnOrClassType(call, context),
        _ => throw UnsupportedError('Unknown expression type')
      };

  VariableValueType _extractFunctionReturnOrClassType(
    FunctionCallExpression e,
    ScopeContext context,
  ) {
    final classFound = context.read<ClassSign>(e.name);
    final functionFound = context.read<FunctionSign>(e.name);

    if (classFound != null) {
      return VariableValueType(e.name);
    } else if (functionFound != null) {
      return functionFound.returnType;
    } else {
      throw UnsupportedError('Unknown expression type');
    }
  }
}

extension ClassDefinitionStatementProcessExtension on ClassDefinitionStatement {
  void process(ProcessOperationCallback operation, ScopeContext scope) {
    operation(this, scope);

    for (var method in methods) {
      method.process(operation, scope);
    }

    for (var property in properties) {
      property.process(operation, scope);
    }

    for (var constructor in constructors) {
      constructor.process(operation, scope);
    }
  }
}

extension ExpressionTransformExtension on Expression {
  void process(ProcessOperationCallback operation, ScopeContext scope) {
    operation(this, scope);

    switch (this.runtimeType) {
      case BinaryExpression expression:
        expression.left.process(operation, scope);
        expression.right.process(operation, scope);
        break;
      case UnaryLogicExpression expression:
        expression.value.process(operation, scope);
        break;
      case UnaryMathExpression expression:
        expression.value.process(operation, scope);
        break;
      case ParenthesysExpression expression:
        expression.value.process(operation, scope);
        break;
      case VarReferenceExpression:
      case IntLit:
      case DecLit:
      case BoolLit:
      case StringLit:
        break;
      default:
        throw UnsupportedError('Unknown expression type ${this.runtimeType}');
    }
  }
}
