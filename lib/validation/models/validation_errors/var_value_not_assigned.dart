import 'package:dart2ast_engine/dart2ast.dart';

class VarValueNotAssigned extends ValidationError {
  final String varName;

  factory VarValueNotAssigned(String varName, Point position) {
    return VarValueNotAssigned._(
      varName,
      'You must assign a value to variable $varName before using it',
      position,
    );
  }

  VarValueNotAssigned._(this.varName, super.message, super.position);

  @override
  List<Object?> get props => [varName, ...super.props];
}
