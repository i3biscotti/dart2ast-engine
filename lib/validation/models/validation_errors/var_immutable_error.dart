import 'package:dart2ast_engine/dart2ast.dart';

class VarImmutableError extends ValidationError {
  final String varName;

  factory VarImmutableError(String varName, Point position) {
    return VarImmutableError._(
      varName,
      'You can\'t assign a new value to $varName because it is immutable',
      position,
    );
  }

  VarImmutableError._(this.varName, super.message, super.position);

  @override
  List<Object?> get props => [varName, super.position];
}
