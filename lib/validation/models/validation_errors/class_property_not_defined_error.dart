import 'package:dart2ast_engine/dart2ast.dart';

class ClassPropertyNotDefinedError extends ValidationError {
  final String className;
  final String propertyName;

  ClassPropertyNotDefinedError(
      this.className,
      this.propertyName,
      super.position,
      );

  String get message => 'Class $className does not define property $propertyName';
}
