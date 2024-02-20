import 'package:dart2ast_engine/dart2ast.dart';

class ClassAlreadyDeclaredError extends ValidationError {
  final String className;

  ClassAlreadyDeclaredError(this.className, super.position);

  String get message => 'Class $className is already declared';

  @override
  List<Object?> get props => [className, super.position];
}
