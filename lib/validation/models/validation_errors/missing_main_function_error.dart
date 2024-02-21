import 'package:dart2ast_engine/dart2ast.dart';

class MissingMainFunctionError extends ValidationError{

  MissingMainFunctionError(super.position);

  @override
  String get message => "Entrypoint main function is missing in program";
}