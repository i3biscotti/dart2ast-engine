import 'package:dart2ast_engine/dart2ast.dart';

class VariableSign extends ScopeObject {
  final String name;
  final VariableValueType type;
  final bool isMutable;

  const VariableSign(this.name, this.type, this.isMutable);
}
