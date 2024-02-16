import 'package:dart2ast_engine/dart2ast.dart';

class ClassAlreayDeclaredError extends ValidationError {
  final String className;

  factory ClassAlreayDeclaredError(String className, Point position) {
    return ClassAlreayDeclaredError._(
      className,
      'Class $className is already declared',
      position,
    );
  }

  ClassAlreayDeclaredError._(this.className, super.message, super.position);

  @override
  List<Object?> get props => [className, super.position];
}
