import 'package:dart2ast_engine/ast/models.dart';
import 'package:uuid/uuid.dart';

typedef ProcessOperationCallback = void Function(Node node, String scope);

String generateScopeId() => Uuid().v8();

extension NodeProcessExtension on Node {
  void specificProcess<T extends Node>(void Function(T, String) operation) {
    process((node, scope) {
      if (node is T) operation(node, scope);
    });
  }

  void process(ProcessOperationCallback operation, [String scope = '']) {
    operation(this, scope);

    switch (this) {
      case ProgramFile DartFile:
        DartFile.process(operation, '/');
        break;
      case Statement statement:
        statement.process(operation, scope);
        break;
      case Expression expression:
        expression.process(operation, scope);
        break;
      default:
        throw UnsupportedError('Unknown node type');
    }
  }
}

extension DartFileProcessExtension on ProgramFile {
  void process(ProcessOperationCallback operation, String scope) {
    operation(this, scope);

    for (var line in lines) {
      line.process(operation, scope);
    }
  }
}

extension StatementProcessExtension on Statement {
  void process(ProcessOperationCallback operation, String scope) {
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

      case ForDefinitionStatement statement:
      //TODO
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

extension ExpressionTransformExtension on Expression {
  void process(ProcessOperationCallback operation, String scope) {
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
