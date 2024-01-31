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

  group(
    'Task 2',
    () {
      test(
        'expression_definition',
        () async {
          final root = await _parseResource('task2/expression_definition');

          expect(
            root.toAst(false).Transpile(),
            equals('(3 + 4) * (4 - 3)'),
          );
        },
      );
    },
  );

  group(
    "Task 7",
    () {
      test('void_function_without_params', () async {
        final root = await _parseResource('task7/void_function_without_params');

        expect(
          root.toAst(false).Transpile(),
          equals("void emptyFunction() {}"),
        );
      });

      test('int_sum_function', () async {
        final root = await _parseResource('task7/int_sum_function');

        expect(
          root.toAst(false).Transpile(),
          equals(
            """
            |int sum(int a, int b){
            |    return a + b;
            |}
            """
                .trimMargin(),
          ),
        );
      });

      test('call_function', () async {
        final root = await _parseResource('task7/call_function');

        expect(
          root.toAst(false),
          equals(
            """
            |bool operations(int a, int b, bool c ){
            |    var aIsGreaterThanB = a > b;
            |    final isGreaterAndCondition = aIsGreaterThanB && c;
            |
            |    return isGreaterAndCondition;
            |}
            |void main(){
            |    final result = operations(11, 12, false);
            |}
            """
                .trimMargin(),
          ),
        );
      });
    },
  );
}
