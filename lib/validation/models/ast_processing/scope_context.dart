import 'package:dart2ast_engine/dart2ast.dart';

class ScopeContext {
  final Map<String, VariableSign> declaredVariables;
  final Map<String, FunctionSign> declaredFunctions;
  final Map<String, ClassSign> declaredClasses;

  final ScopeContext? parent;

  static ScopeContext get rootScope => ScopeContext();

  const ScopeContext({
    this.declaredVariables = const {},
    this.declaredFunctions = const {},
    this.declaredClasses = const {},
    this.parent,
  });

  ScopeContext wrap({
    Map<String, VariableSign> declaredVariables = const {},
    Map<String, FunctionSign> declaredFunctions = const {},
    Map<String, ClassSign> declaredClasses = const {},
  }) {
    return ScopeContext(
        parent: this,
        declaredVariables: declaredVariables,
        declaredFunctions: declaredFunctions,
        declaredClasses: declaredClasses,
      );
  }

  ScopeContext? unwrap() => parent;

  T? read<T extends ScopeObject>(String name) {
    ScopeContext? context = this;

    while (context != null) {
      final registryWhereSearch = switch (T) {
        VariableSign => declaredVariables,
        FunctionSign => declaredFunctions,
        ClassSign => declaredClasses,
        _ => throw UnimplementedError(),
      };

      if (registryWhereSearch.containsKey(name)) {
        return registryWhereSearch[name] as T;
      }

      context = context.parent;
    }

    return null;
  }
}
