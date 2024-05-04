import 'package:dart2ast_engine/dart2ast.dart';

class FunctionSign extends ScopeObject {
  final String name;
  final VariableValueType returnType;
  final List<ParamSign> parameters;

  const FunctionSign(
    this.name,
    this.returnType,
    this.parameters,
    super.position,
  );
}
