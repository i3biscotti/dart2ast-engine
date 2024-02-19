import 'dart:mirrors';

import 'package:dart2ast_engine/dart2ast.dart';

dynamic serializeAst(Object node) {
  if (node is! AstObject) {
    return node;
  }

  var reflection = reflect(node);

  final allDeclarations = [];

  ClassMirror? currentNode = reflection.type;

  while (currentNode != null) {
    allDeclarations.addAll(currentNode.declarations.values);
    currentNode = currentNode.superclass;
  }

  var properties =
      allDeclarations.where((e) => e is VariableMirror && !e.isStatic).map(
    (e) {
      final name = MirrorSystem.getName(e.simpleName);
      var value = reflection.getField(e.simpleName).reflectee;

      if (value is AstObject) {
        value = serializeAst(value);
      } else if (value is List<AstObject>) {
        value = value.map(serializeAst).toList();
      } else if (value is Map<String, AstObject>) {
        value = value.map((key, value) => MapEntry(key, serializeAst(value)));
      } else if (reflection.getField(e.simpleName).type.isEnum) {
        final enumField = reflection.getField(e.simpleName);
        final enumType = enumField.type;

        final enumIndex = enumField.getField(#index).reflectee;
        final enumItemName =
            enumType.staticMembers.keys.elementAt(enumIndex + 1);

        value = {
          "type": MirrorSystem.getName(enumType.simpleName),
          "enumValue": MirrorSystem.getName(enumItemName),
        };
      }

      return MapEntry(name, value);
    },
  );

  var objectDict = {
    'type': MirrorSystem.getName(reflection.type.simpleName),
    ...Map.fromEntries(properties),
  };

  return objectDict;
}
