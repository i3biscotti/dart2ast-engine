import 'dart:io';

import 'package:dart2ast_engine/antlr.dart';
import 'package:dart2ast_engine/ast/mapper.dart';
import 'package:dart2ast_engine/ast/models.dart';
import 'package:dart2ast_engine/dart2ast.dart';
import 'package:dart2ast_engine/parsing.dart';
import 'package:test/test.dart';

Future<DartFileContext> _parseResource(String resourceName) async {
  final result = await AntlrParserFacade.parseFromFile(
    File('test/resources/$resourceName.dart'),
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

void main() {
  group(
    'Task 1',
    () {
      test(
        'var_definition_statement',
        () async {
          final root = await _parseResource('task1/var_definition_statement');

          expect(
            root.toAst(false).Transpile(),
            equals('var name = "Simone";'),
          );
        },
      );

      test(
        'final_definition_statement',
        () async {
          final root = await _parseResource('task1/final_definition_statement');

          expect(
            root.toAst(false).Transpile(),
            equals('final double height = 1.70;'),
          );
        },
      );

     test(
      'type_definition_statement',
      () async {
        final root = await _parseResource('task1/type_definition_statement');

        expect(
          root.toAst(false).Transpile(),
          equals('int age = 16;'),        //non va bene, si aspetta 'var int age = 16;'
        );
      },
     );
     
    test(
      'const_definition_statement',
      () async {
        final root = await _parseResource('task1/const_definition_statement');

        expect(
          root.toAst(false).Transpile(),
          equals('const bool isOld = false;'),
        );
      },
    );

    test(
      'assignment_statement',
      () async {
        final root = await _parseResource('task1/assignment_statement');

        expect(
          root.toAst(false).Transpile(),
          equals('pi = 3.14;'),
        );
      },
    );


    },
  );
}
