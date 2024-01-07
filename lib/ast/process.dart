import 'package:dart2ast_engine/ast/models.dart';

typedef ProcessOperationCallback = void Function(Node node);
typedef TransformOperationCallback = Node Function(Node node);

extension NodeProcessExtension on Node {
  void specificProcess<T extends Node>(void Function(T) operation) {
    process((node) {
      if (node is T) operation(node);
    });
  }

  void process(ProcessOperationCallback operation) {
    operation(this);

    switch (this) {
      case ProgramFile DartFile:
        DartFile.process(operation);
        break;
      case Statement statement:
        statement.process(operation);
        break;
      case Expression expression:
        expression.process(operation);
        break;
      default:
        throw UnsupportedError('Unknown node type');
    }
  }
}

extension DartFileProcessExtension on ProgramFile {
  void process(ProcessOperationCallback operation) {
    operation(this);

    for (var line in lines) {
      line.process(operation);
    }
  }
}

extension StatementProcessExtension on Statement {
  void process(ProcessOperationCallback operation) {
    operation(this);

    switch (this) {
      case VariableDeclarationStatement statement:
        statement.value.process(operation);
        break;
      case AssignmentStatement statement:
        statement.value.process(operation);
        break;
      default:
        throw UnsupportedError('Unknown statement type');
    }
  }
}

extension ExpressionTransformExtension on Expression {
  void process(ProcessOperationCallback operation) {
    operation(this);
  }
}
