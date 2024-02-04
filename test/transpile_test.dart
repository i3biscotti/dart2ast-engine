import 'dart:io';

import 'package:dart2ast_engine/dart2ast.dart';
import 'package:dart2ast_engine/parsing.dart';
import 'package:indent/indent.dart';
import 'package:test/test.dart';

Future<DartFileContext> _parseResource(String resourceName) async {
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

void main() {
  group(
    'Task 1',
    () {
      test(
        'var_definition_statement',
        () async {
          final root = await _parseResource('task1/var_definition_statement');

          expect(
            root.toAst(false).transpile(),
            equals('var name = "Simone";'),
          );
        },
      );

      test(
        'final_definition_statement',
        () async {
          final root = await _parseResource('task1/final_definition_statement');

          expect(
            root.toAst(false).transpile(),
            equals('final double height = 1.70;'),
          );
        },
      );

      test(
        'type_definition_statement',
        () async {
          final root = await _parseResource('task1/type_definition_statement');

          expect(
            root.toAst(false).transpile(),
            equals(
                'int age = 16;'), //non va bene, si aspetta 'var int age = 16;'
          );
        },
      );

      test(
        'const_definition_statement',
        () async {
          final root = await _parseResource('task1/const_definition_statement');

          expect(
            root.toAst(false).transpile(),
            equals('const bool isOld = false;'),
          );
        },
      );

      test(
        'assignment_statement',
        () async {
          final root = await _parseResource('task1/assignment_statement');

          expect(
            root.toAst(false).transpile(),
            equals('pi = 3.14;'),
          );
        },
      );
    },
  );

  group(
    'Task 2',
    () {
      test(
        'expression_definition',
        () async {
          final root = await _parseResource('task2/expression_definition');

          expect(
            root.toAst(false).transpile(),
            equals('(3 + 4) * (4 - 3)'),
          );
        },
      );
    },
  );

  group(
    'Task 3',
    () {
      test(
        'if_statement',
        () async {
          final root = await _parseResource('task3/if_statement');

          expect(
            root.toAst(false).transpile(),
            equals(
              """
              |if (voto > 18) {
              |  exam = "passed";
              |}
              |else if (voto == 18) {
              |  exam = "passed";
              |}
              |else {
              |  exam = "failed";
              |}
              """ .trimMargin(),
          ),
         );
        }
      );
    },
  );

  group(
    "Task 4",
    () {
      test('while_statement', () async {
        final root = await _parseResource('task4/while_statement');

        expect(
          root.toAst(false).transpile(),
          equals(
            """
            |var int i = 1;
            |while (condition) {
            |  if (i < 17) {
            |    i = i + 1;
            |  }
            |  else {
            |    condition = true;
            |  }
            |}
            """ .trimMargin(),
          ),
        );
      }
     );
    },
  );

  group(
    "Task 7",
    () {
      test('void_function_without_params', () async {
        final root = await _parseResource('task7/void_function_without_params');

        expect(
          root.toAst(false).transpile(),
          equals("void emptyFunction() {}"),
        );
      });

      test('int_sum_function', () async {
        final root = await _parseResource('task7/int_sum_function');

        expect(
          root.toAst(false).transpile(),
          equals(
            """
            |int sum(int a, int b) {
            |  return a + b;
            |}
            """
                .trimMargin(),
          ),
        );
      });

      test('call_function', () async {
        final root = await _parseResource('task7/call_function');

        expect(
          root.toAst(false).transpile(),
          equals(
            """
            |bool operations(int a, int b, bool c) {
            |  var aIsGreaterThanB = a > b;
            |  final isGreaterAndCondition = aIsGreaterThanB && c;
            |  return isGreaterAndCondition;
            |}
            |
            |void main() {
            |  final result = operations(11, 12, false);
            |}"""
                .trimMargin(),
          ),
        );
      });
    },
  );
}
