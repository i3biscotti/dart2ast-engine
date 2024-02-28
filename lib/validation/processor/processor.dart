import 'package:dart2ast_engine/dart2ast.dart';

typedef NodeProcess<T extends Node> = void Function(T node, ScopeContext scope);

class NodeProcessor {
  final Node root;

  final Map<Type, List<NodeProcess<Node>>> nodeProcesses = {};

  NodeProcessor(this.root);

  void addProcess<T extends Node>(NodeProcess<T> process) {
    final function = (node, scope) => process(node as T, scope);

    nodeProcesses[T] ??= [];
    nodeProcesses[T]!.add(function);
  }

  void removeProcess<T extends Node>(Function(T node) process) {
    if (nodeProcesses.containsKey(T)) {
      nodeProcesses[T]!.remove(() => process(root as T));
    }
  }

  void process() {
    root.process((node, scope) {
      if (nodeProcesses.containsKey(node.runtimeType)) {
        for (final process in nodeProcesses[node.runtimeType]!) {
          process(node, scope);
        }
      }
    });
  }
}