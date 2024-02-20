import 'package:dart2ast_engine/dart2ast.dart';

class ClassMethodNotDefinedError extends ValidationError {
  final String className;
  final String methodName;

  ClassMethodNotDefinedError(
    this.className,
    this.methodName,
    super.position,
  );

  String get message => 'Class $className does not define method $methodName';
}
