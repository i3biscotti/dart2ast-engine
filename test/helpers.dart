import 'dart:convert';
import 'dart:io';

import 'package:dart2ast_engine/dart2ast.dart';
import 'package:dart2ast_engine/parsing/antlr_parser.dart';

String _loadJsonResource(String resourceName) {
  return File('test/resources/$resourceName.json').readAsStringSync();
}

ProgramFile parseJsonResource(String resourceName) {
  final json = _loadJsonResource(resourceName);
  return deserializeToAst(jsonDecode(json));
}

Future<String> serializeAstFromResource(String resourceName) async {
  final root = await parseResource2Ast(resourceName);
  return jsonEncode(serializeAst(root));
}

Future<DartFileContext> parseResource(String resourceName) async {
  final result = await AntlrParserFacade.parseFromFile(
    File('test/resources/$resourceName.txt'),
  );

  if (!result.isCorrect()) {
    throw Exception(
      result.errors.map((e) {
        return "[Ln ${e.position.line}, Col ${e.position.line}]${e.message}";
      }).join('\n'),
    );
  } else if (result.root == null) {
    throw Exception("DartFileContext is not null");
  }

  return result.root!;
}

Future<ProgramFile> parseResource2Ast(String resourceName) async {
  final node = await parseResource(resourceName);
  return node.toAst(false);
}
