import 'package:dart2ast_engine/dart2ast.dart';

class VarAlreadyDeclaredError extends ValidationError {
  final String varName;

  factory VarAlreadyDeclaredError(String varName, Point position) {
    return VarAlreadyDeclaredError._(
      varName,
      'Variable $varName is already declared',
      position,
    );
  }

  VarAlreadyDeclaredError._(this.varName, super.message, super.position);

  @override
  List<Object?> get props => [varName, super.position];
}
