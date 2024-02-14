import 'package:dart2ast_engine/dart2ast.dart';
import 'package:indent/indent.dart';
import 'package:test/test.dart';

import 'helpers.dart';

void main() {
  group(
    'Task 1',
    () {
      test(
        'var_definition_statement',
        () async {
          final root =
              await parseResource2Ast('task1/var_definition_statement');

          expect(
            root.transpile(),
            equals('var name = "Simone";'),
          );
        },
      );

      test(
        'final_definition_statement',
        () async {
          final root =
              await parseResource2Ast('task1/final_definition_statement');

          expect(
            root.transpile(),
            equals('final double height = 1.70;'),
          );
        },
      );

      test(
        'type_definition_statement',
        () async {
          final root =
              await parseResource2Ast('task1/type_definition_statement');

          expect(
            root.transpile(),
            equals(
                'int age = 16;'), //non va bene, si aspetta 'var int age = 16;'
          );
        },
      );

      test(
        'const_definition_statement',
        () async {
          final root =
              await parseResource2Ast('task1/const_definition_statement');

          expect(
            root.transpile(),
            equals('const bool isOld = false;'),
          );
        },
      );

      test(
        'assignment_statement',
        () async {
          final root = await parseResource2Ast('task1/assignment_statement');

          expect(
            root.transpile(),
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
          final root = await parseResource2Ast('task2/expression_definition');

          expect(
            root.transpile(),
            equals('(3 + 4) * (4 - 3);'),
          );
        },
      );
    },
  );

  group(
    'Task 3',
    () {
      test('if_statement', () async {
        final root = await parseResource2Ast('task3/if_statement');

        expect(
          root.transpile(),
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
              """
                .trimMargin(),
          ),
        );
      });
    },
  );

  group(
    "Task 4",
    () {
      test('while_statement', () async {
        final root = await parseResource2Ast('task4/while_statement');

        expect(
          root.transpile(),
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
            """
                .trimMargin(),
          ),
        );
      });
    },
  );

  group(
    "Task 5",
    () {
      test('for_statement', () async {
        final root = await parseResource('task5/for_statement');

        expect(
          root.toAst(false).transpile(),
          equals(
            """
           |var a = 0;
           |for (int i = 0; i < 3; i++) {
           |    a = a + 1;
           |}
           """
                .trimMargin(),
          ),
        );
      });

      test('for_each_statement', () async {
        final root = await parseResource('task5/for_each_statement');

        expect(
          root.toAst(false).transpile(),
          equals(
            """
           |final list = [1,2];
           |var b = 0;
           |for (int i in list) {
           |    b = b + 1;
           |}
           """
                .trimMargin(),
          ),
        );
      });
    },
  );

  group(
    "Task 7",
    () {
      test('void_function_without_params', () async {
        final root =
            await parseResource2Ast('task7/void_function_without_params');

        expect(
          root.transpile(),
          equals("void emptyFunction() {}"),
        );
      });

      test('int_sum_function', () async {
        final root = await parseResource2Ast('task7/int_sum_function');

        expect(
          root.transpile(),
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
        final root = await parseResource2Ast('task7/call_function');

        expect(
          root.transpile(),
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

  group(
    "Task 8",
    () {
      test('empty_class', () async {
        final rootNode = await parseResource2Ast('task8/empty_class');

        expect(rootNode.transpile(), "class SimpleClass {}");
      });

      test('class_with_properties', () async {
        final rootNode = await parseResource2Ast('task8/class_with_properties');

        expect(
            rootNode.transpile(),
            """
                |class SimpleClass {
                |  final int prop1;
                |  bool pro2;
                |  SimpleClass(this.prop1, this.pro2);
                |}"""
                .trimMargin());
      });

      test('class_with_methods', () async {
        final rootNode = await parseResource2Ast('task8/class_with_methods');

        expect(
          rootNode.transpile(),
          """
              |class SimpleClass {
              |  final int prop1;
              |  bool pro2;
              |  SimpleClass(this.prop1, this.pro2);
              |  int sum(int value) {
              |    pro2 = value <= prop1;
              |    return value + prop1;
              |  }
              |}"""
              .trimMargin(),
        );
      });

      test('class_with_multiple_constructors', () async {
        final rootNode =
            await parseResource2Ast('task8/class_with_multiple_constructors');

        expect(
          rootNode.transpile(),
          """
              |class MultiplePass {
              |  final int a;
              |  double b;
              |  MultiplePass(this.a, this.b);
              |  MultiplePass.test(int a) : this(a, 12.1);
              |}"""
              .trimMargin(),
        );
      });

      test('class_hierarchy', () async {
        final rootNode = await parseResource2Ast('task8/class_hierarchy');

        expect(
          rootNode.transpile(),
          "class SecretWars extends Marvel {}",
        );
      });

      test('private_class', () async {
        final rootNode = await parseResource2Ast('task8/private_class');

        expect(rootNode.transpile(), "class _SecretWar {}");
      });
    },
  );

  group("Task 9", () {
    test('object_instance', () async {
      final rootNode = await parseResource2Ast('task9/object_instance');

      expect(
        rootNode.transpile(),
        "final element = ClassToInstance();",
      );
    });

    test('method_call', () async {
      final rootNode = await parseResource2Ast('task9/method_call');

      expect(
        rootNode.transpile(),
        "element.execute();",
      );
    });

    test('property_assignment', () async {
      final rootNode = await parseResource2Ast('task9/property_assignment');

      expect(
        rootNode.transpile(),
        "element.name = \"Pacco\";",
      );
    });
  });
}
