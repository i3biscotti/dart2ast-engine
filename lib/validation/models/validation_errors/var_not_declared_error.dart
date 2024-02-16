import 'package:dart2ast_engine/dart2ast.dart';

class VarNotDeclaredError extends ValidationError {
  final String varName;

  factory VarNotDeclaredError(String varName, Point position) {
    return VarNotDeclaredError._(
      varName,
      'Variable $varName not declared',
      position,
    );
  }

  VarNotDeclaredError._(this.varName, super.message, super.position);

  @override
  List<Object?> get props => [varName, ...super.props];
}
