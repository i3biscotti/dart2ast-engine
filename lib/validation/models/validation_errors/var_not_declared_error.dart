import 'package:dart2ast_engine/dart2ast.dart';

class VarNotDeclaredError extends ValidationError {
  final String varName;

  VarNotDeclaredError(this.varName, super.position);

  String get message => 'Variable $varName is not declared';

  @override
  List<Object?> get props => [varName, ...super.props];
}
