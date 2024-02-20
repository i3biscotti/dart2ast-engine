import 'package:dart2ast_engine/validation/models/validation_errors/validation_error.dart';

class FunctionSignMismatchError extends ValidationError {
  final String functionName;
  final String expectedSign;
  final String actualSign;

  FunctionSignMismatchError(
    this.functionName,
    this.expectedSign,
    this.actualSign,
    super.position,
  );

  String get message =>
      'Function $functionName has sign $actualSign, but expected $expectedSign';

  @override
  List<Object?> get props => [functionName, expectedSign, actualSign, ...super.props];
}
