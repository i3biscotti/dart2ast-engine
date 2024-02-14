import 'dart:mirrors';

import 'package:dart2ast_engine/dart2ast.dart';

late final astLibraries = currentMirrorSystem().libraries.values.where((lib) {
  return lib.uri.toString().startsWith('package:dart2ast_engine/ast/models/');
});

late final astObjectMirror = findClassMirrorInAstModelsLib(#AstObject)!;

ClassMirror? findClassMirrorInAstModelsLib(Symbol classSymbol) {
  for (final lib in astLibraries) {
    if (lib.declarations.containsKey(classSymbol)) {
      return lib.declarations[classSymbol] as ClassMirror;
    }
  }

  return null;
}

T deserializeToAst<T extends AstObject>(Map<String, dynamic> json) {
  final objectType = json['type'] as String;

  final objectTypeSymbol = MirrorSystem.getSymbol(objectType);
  final classModelMirror = findClassMirrorInAstModelsLib(objectTypeSymbol);

  assert(classModelMirror != null, '$objectType Mirror not found');

  final inst = classModelMirror!.newInstance(#fromJson, [json]);

  return inst.reflectee as T;
}
