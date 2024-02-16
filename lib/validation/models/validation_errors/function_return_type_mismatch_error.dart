import 'package:dart2ast_engine/dart2ast.dart';

class FunctionReturnTypeMismatchError extends ValidationError {
  final String functionName;
  final String expectedType;
  final String actualType;

  FunctionReturnTypeMismatchError._(
    this.functionName,
    this.expectedType,
    this.actualType,
    super.message,
    super.position,
  );

  factory FunctionReturnTypeMismatchError(
    String functionName,
    String expectedType,
    String actualType,
    Point position,
  ) {
    return FunctionReturnTypeMismatchError._(
      functionName,
      expectedType,
      actualType,
      '$functionName returns $actualType but expected $expectedType',
      position,
    );
  }
}
