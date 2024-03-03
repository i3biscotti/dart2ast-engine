import 'package:dart2ast_engine/ast/models/node.dart';

abstract class ScopeObject {
  final Position? position;

  const ScopeObject(this.position);
}
