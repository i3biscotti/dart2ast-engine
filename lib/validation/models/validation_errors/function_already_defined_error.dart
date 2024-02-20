import 'package:dart2ast_engine/validation/models/validation_errors/validation_error.dart';

class FunctionAlreadyDefinedError extends ValidationError {
  final String functionName;

  FunctionAlreadyDefinedError(this.functionName, super.position);

  String get message => 'Function $functionName is already defined';

  @override
  List<Object?> get props => [functionName, super.position];

}