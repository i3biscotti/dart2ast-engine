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
        statement.process(operation, scope);
        break;

      case AssignmentStatement statement:
        statement.value.process(operation, scope);
        break;

      case ExpressionDefinitionStatement statement:
        statement.value.process(operation, scope);
        break;

      case IfDefinitionStatement statement:
        statement.process(operation, scope);
        break;

      case WhileDefinitionStatement statement:
        statement.process(operation, scope);
        break;

      case ForDefinitionStatement statement:
        statement.process(operation, scope);
        break;

      case FunctionDefinitionStatement statement:
        statement.process(operation, scope);
        break;

      case ClassDefinitionStatement statement:
        statement.process(operation, scope);
        break;

      case ReturnStatement statement:
        statement.value.process(operation, scope);
        break;
    }
  }

  ScopeContext _prepareNewScope(
    ScopeContext scope,
    List<Statement> StatementsBlock,
  ) {
    final newScope = scope.wrap();

    final classes = StatementsBlock.whereType<ClassDefinitionStatement>()
        .map((e) => _generateClassSign(newScope, e));

    final functions =
        StatementsBlock.whereType<FunctionDefinitionStatement>().map((e) {
      return FunctionSign(
        e.name,
        e.returnType!,
        e.parameters.map((e) => ParamSign(e.name, e.valueType!)).toList(),
      );
    });

    newScope.declaredClasses.addEntries(
      classes.map((e) => MapEntry(e.name, e)),
    );

    newScope.declaredFunctions.addEntries(
      functions.map((e) => MapEntry(e.name, e)),
    );

    return newScope;
  }

  FunctionSign _generateFunctionSign(FunctionDefinitionStatement statement) {
    return FunctionSign(
      statement.name,
      statement.returnType!,
      statement.parameters.map((e) => ParamSign(e.name, e.valueType!)).toList(),
    );
  }

  FunctionSign _generateConstructorFunctionSign(
    ConstructorDefinitionStatement constr,
  ) {
    var functionName = constr.className;
    functionName +=
        constr.constructorName != null ? '.' + constr.constructorName! : '';

    return FunctionSign(
      functionName,
      VariableValueType(constr.className),
      constr.parameters.map((e) => ParamSign(e.name, e.valueType!)).toList(),
    );
  }

  ClassSign _generateClassSign(
    ScopeContext context,
    ClassDefinitionStatement statement,
  ) {
    final classProperties = statement.properties.map((e) {
      return VariableSign(
        e.name,
        e.valueType ?? extractType(context, e.value!),
        true,
      );
    }).toList();

    final classMethods = statement.methods.map(_generateFunctionSign).toList();

    final classSign = ClassSign(
      statement.name,
      classProperties,
      classMethods,
      {},
    );

    return classSign;
  }
}

extension VariableDeclarationStatementExtension
    on VariableDeclarationStatement {
  void process(ProcessOperationCallback operation, ScopeContext scope) {
    value?.process(operation, scope);

    final sign = VariableSign(
      name,
      valueType ?? extractType(scope, value!),
      varType == VariableType.variable || varType == VariableType.type,
    );

    scope.declaredVariables[name] = sign;
  }
}

extension ClassDefinitionStatementProcessExtension on ClassDefinitionStatement {
  void process(ProcessOperationCallback operation, ScopeContext scope) {
    for (var property in properties) {
      property.process(operation, scope);
    }

    final childContext = _prepareNewScope(scope, []);

    childContext.declaredFunctions.addEntries(
      methods.map(_generateFunctionSign).map((e) => MapEntry(e.name, e)),
    );

    childContext.declaredFunctions.addEntries(
      constructors
          .map(_generateConstructorFunctionSign)
          .map((e) => MapEntry(e.name, e)),
    );

    for (var method in methods) {
      method.process(operation, scope);
    }

    for (var constructor in constructors) {
      constructor.process(operation, scope);
    }
  }
}

extension ConstructorDefinitionStatementProcessExtension
    on ConstructorDefinitionStatement {
  void process(ProcessOperationCallback operation, ScopeContext scope) {
    final newScope = scope.wrap();

    for (var statement in body) {
      statement.process(operation, newScope);
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

extension ForDefinitionStatementProcessExtension on ForDefinitionStatement {
  void process(ProcessOperationCallback operation, ScopeContext scope) {
    final newScope = scope.wrap();

    switch (forCondition) {
      case ForEachCondition c:
        operation(c.itemDefinition, newScope);
        operation(c.expression, newScope);

        newScope.declaredVariables[c.itemDefinition.name] = VariableSign(
          c.itemDefinition.name,
          VariableValueType.DYNAMIC,
          c.itemDefinition.varType == VariableType.variable ||
              c.itemDefinition.varType == VariableType.type,
        );

        break;
      case StandardForCondition c:
        operation(c.initStatement, newScope);

        if (c.initStatement is VarDeclarationForStatement) {
          final variable = c.initStatement as VariableDeclarationStatement;

          newScope.declaredVariables[variable.name] = VariableSign(
            variable.name,
            variable.valueType ?? extractType(newScope, variable.value!),
            variable.varType == VariableType.variable ||
                variable.varType == VariableType.type,
          );
        }

        operation(c.controlExpression, newScope);
        operation(c.incrementStatement, newScope);

        break;
    }

    for (var statement in statements) {
      statement.process(operation, newScope);
    }
  }
}

extension WhileDefinitionStatementProcessExtension on WhileDefinitionStatement {
  void process(ProcessOperationCallback operation, ScopeContext scope) {
    final childContext = scope.wrap();

    for (var statement in statements) {
      statement.process(operation, childContext);
    }
  }
}

extension IfDefinitionStatementProcessExtension on IfDefinitionStatement {
  void process(ProcessOperationCallback operation, ScopeContext scope) {
    _processBlock(ifBlock, operation, scope);

    elseIfBlocks.forEach((block) => _processBlock(block, operation, scope));

    if (elseBlock != null) {
      _processBlock(elseBlock!, operation, scope);
    }
  }

  _processBlock(
    IfBlock block,
    ProcessOperationCallback operation,
    ScopeContext scope,
  ) {
    final childContext = scope.wrap();

    for (var statement in block.statements) {
      statement.process(operation, childContext);
    }
  }
}

extension FunctionDefinitionStatementProcessExtension
    on FunctionDefinitionStatement {
  void process(ProcessOperationCallback operation, ScopeContext scope) {
    final childContext = _prepareNewScope(scope, body);

    childContext.declaredVariables.addEntries(
      parameters.map((e) {
        return MapEntry(
          e.name,
          VariableSign(e.name, e.valueType!, true),
        );
      }),
    );

    for (var statement in body) {
      statement.process(operation, childContext);
    }
  }
}
