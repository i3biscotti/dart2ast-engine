import 'package:dart2ast_engine/dart2ast.dart';

class ExpressionMismatchError extends ValidationError {
  final String typeExpected;
  final String typeReceived;

  ExpressionMismatchError(this.typeExpected, this.typeReceived, super.position);

  String get message => 'Expression type mismatch. Expected $typeExpected, received $typeReceived';
}
