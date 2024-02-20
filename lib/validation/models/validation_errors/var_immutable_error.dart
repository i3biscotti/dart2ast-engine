import 'package:dart2ast_engine/dart2ast.dart';

class VarImmutableError extends ValidationError {
  final String varName;

  VarImmutableError(this.varName, super.position);

  String get message => 'Variable $varName is immutable';

  @override
  List<Object?> get props => [varName, super.position];
}
