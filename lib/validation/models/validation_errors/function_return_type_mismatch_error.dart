import 'package:dart2ast_engine/dart2ast.dart';

class FunctionReturnTypeMismatchError extends ValidationError {
  final String functionName;
  final String expectedType;
  final String actualType;

  FunctionReturnTypeMismatchError(
    this.functionName,
    this.expectedType,
    this.actualType,
    super.position,
  );

  String get message =>
      'Function $functionName has return type $actualType, but expected $expectedType';

  @override
  List<Object?> get props => [functionName, expectedType, actualType, ...super.props];
}
