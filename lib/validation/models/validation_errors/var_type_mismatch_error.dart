import 'package:dart2ast_engine/dart2ast.dart';

class VarTypeMismatchError extends ValidationError {
  final String varName;
  final String currentType;
  final String epressionType;

  factory VarTypeMismatchError(
    String varName,
    String currentType,
    String epressionType,
    Point position,
  ) {
    return VarTypeMismatchError._(
      varName,
      '$varName accepts ${currentType} but expression is of type ${epressionType}',
      currentType,
      epressionType,
      position,
    );
  }

  VarTypeMismatchError._(
    this.varName,
    this.currentType,
    this.epressionType,
    super.message,
    super.position,
  );

  @override
  List<Object?> get props => [varName, ...super.props];
}
