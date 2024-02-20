import 'package:dart2ast_engine/dart2ast.dart';

abstract class ValidationError extends LangError {
  ValidationError(super.position);

  @override
  List<Object?> get props => [super.position];
}
