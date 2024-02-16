import 'package:dart2ast_engine/dart2ast.dart';

class ValidationError extends LangError {
  ValidationError(super.message, super.position);

  @override
  List<Object?> get props => [super.position];
}
