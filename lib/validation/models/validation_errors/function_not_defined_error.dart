import 'package:dart2ast_engine/dart2ast.dart';

class FunctionNotDefinedError extends ValidationError {
  final String functionName;

  FunctionNotDefinedError(this.functionName, super.position);

  String get message => 'Function $functionName is not defined';

  @override
  List<Object?> get props => [functionName, ...super.props];
}