import 'package:dart2ast_engine/dart2ast.dart';

class ClassSign extends ScopeObject {
  final String name;
  final List<VariableSign> properties;
  final List<FunctionSign> methods;
  final Map<String, bool> membersEncapsulationRegistry;

  const ClassSign(
    this.name,
    this.properties,
    this.methods,
    this.membersEncapsulationRegistry,
  );
}
