import 'package:dart2ast_engine/validation/models/validation_errors/validation_error.dart';

class FunctionMissingReturnError  extends ValidationError {

  final String functionName;

  FunctionMissingReturnError(this.functionName, super.position);

  @override
  String get message => "Function $functionName is missing return statement";
}
