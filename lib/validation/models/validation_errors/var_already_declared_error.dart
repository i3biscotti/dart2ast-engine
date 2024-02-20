import 'package:dart2ast_engine/dart2ast.dart';

class VarAlreadyDeclaredError extends ValidationError {
  final String varName;

  VarAlreadyDeclaredError(this.varName, super.position);

  String get message => 'Variable $varName is already declared';

  @override
  List<Object?> get props => [varName, super.position];
}
