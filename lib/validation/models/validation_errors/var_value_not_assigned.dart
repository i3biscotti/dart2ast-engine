import 'package:dart2ast_engine/dart2ast.dart';

class VarValueNotAssigned extends ValidationError {
  final String varName;

  VarValueNotAssigned(this.varName,  super.position);

  String get message => 'Variable $varName is not assigned';

  @override
  List<Object?> get props => [varName, ...super.props];
}
