import 'package:dart2ast_engine/dart2ast.dart';

class VarTypeMismatchError extends ValidationError {
  final String varName;
  final String currentType;
  final String expressionType;


  VarTypeMismatchError(
    this.varName,
    this.currentType,
    this.expressionType,
    super.position,
  );

  String get message =>
      'Variable $varName is of type $currentType, but the expression is of type $expressionType';

  @override
  List<Object?> get props => [varName, ...super.props];
}
