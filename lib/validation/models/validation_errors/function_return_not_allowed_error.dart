import 'package:dart2ast_engine/validation/models/validation_errors/validation_error.dart';

class FunctionReturnNotAllowedError  extends ValidationError {

  final String functionName;

  FunctionReturnNotAllowedError(this.functionName, super.position);

  @override
  String get message => "Function $functionName is not allowed to return a value";
}
