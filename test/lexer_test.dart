import 'dart:io';

import 'package:antlr4/antlr4.dart';
import 'package:dart2ast_engine/antlr.dart';
import 'package:dart2ast_engine/parsing/models.dart';
import 'package:test/test.dart';

Future<DartLexer> lexerForResource(String resourceName) async {
  final fileInputStream =
      await File('test/resources/$resourceName.txt').toStream();

  return DartLexer(fileInputStream);
}

List<String> tokens(DartLexer lexer) {
  final tokens = <String>[];
  late Token token;
  do {
    token = lexer.nextToken();

    switch (token.type) {
      case -1:
        tokens.add('EOF');
        break;
      default:
        tokens.add(lexer.ruleNames[token.type - 1]);
    }
  } while (token.type != -1);

  return tokens;
}

void main() {
  group(
    'Task 1',
    () {
      test(
        'var_definition_statement',
        () async {
          final lexer =
              await lexerForResource('task1/var_definition_statement');
          expect(
            tokens(lexer),
            equals(['VAR', 'ID', 'ASSIGN', 'STRINGLIT', 'SEMICOLON', 'EOF']),
          );
        },
      );

      test('final_definition_statement', () async {
        final lexer =
            await lexerForResource('task1/final_definition_statement');
        expect(
            tokens(lexer),
            equals([
              'FINAL',
              'DOUBLE',
              'ID',
              'ASSIGN',
              'DOUBLELIT',
              'SEMICOLON',
              'EOF'
            ]));
      });

      test('type_definition_statement', () async {
        final lexer = await lexerForResource('task1/type_definition_statement');
        expect(tokens(lexer),
            equals(['INT', 'ID', 'ASSIGN', 'INTLIT', 'SEMICOLON', 'EOF']));
      });

      test('const_definition_statement', () async {
        final lexer =
            await lexerForResource('task1/const_definition_statement');
        expect(
            tokens(lexer),
            equals([
              'CONST',
              'BOOL',
              'ID',
              'ASSIGN',
              'BOOLLIT',
              'SEMICOLON',
              'EOF'
            ]));
      });

      test('assignment_statement', () async {
        final lexer = await lexerForResource('task1/assignment_statement');
        expect(tokens(lexer),
            equals(['ID', 'ASSIGN', 'DOUBLELIT', 'SEMICOLON', 'EOF']));
      });
    },
  );

  group(
    'Task 2',
    () {
      test('expression_definition', () async {
        final lexer = await lexerForResource('task2/expression_definition');
        expect(
            tokens(lexer),
            equals([
              'PAREN_OPEN',
              'INTLIT',
              'PLUS',
              'INTLIT',
              'PAREN_CLOSE',
              'TIMES',
              'PAREN_OPEN',
              'INTLIT',
              'MINUS',
              'INTLIT',
              'PAREN_CLOSE',
              'SEMICOLON',
              'EOF'
            ]));
      });
    },
  );

  group(
    'Task 3',
    () {
      test('if_statement', () async {
        final lexer = await lexerForResource('task3/if_statement');
        expect(
          tokens(lexer),
          equals([
            'IF',
            'PAREN_OPEN',
            'ID',
            'GREATER_THAN',
            'INTLIT',
            'PAREN_CLOSE',
            'GRAPH_OPEN',
            'ID',
            'ASSIGN',
            'STRINGLIT',
            'SEMICOLON',
            'GRAPH_CLOSE',
            'ELSE',
            'IF',
            'PAREN_OPEN',
            'ID',
            'EQUAL',
            'INTLIT',
            'PAREN_CLOSE',
            'GRAPH_OPEN',
            'ID',
            'ASSIGN',
            'STRINGLIT',
            'SEMICOLON',
            'GRAPH_CLOSE',
            'ELSE',
            'GRAPH_OPEN',
            'ID',
            'ASSIGN',
            'STRINGLIT',
            'SEMICOLON',
            'GRAPH_CLOSE',
            'EOF'
          ]));
      });
    },
  );

  group(
    "Task 7",
    () {
      test('void_function_without_params', () async {
        final lexer =
            await lexerForResource('task7/void_function_without_params');

        expect(
            tokens(lexer),
            equals(<String>[
              "VOID",
              "ID",
              "PAREN_OPEN",
              "PAREN_CLOSE",
              "GRAPH_OPEN",
              "GRAPH_CLOSE",
              "EOF"
            ]));
      });

      test('int_sum_function', () async {
        final lexer = await lexerForResource('task7/int_sum_function');

        expect(
            tokens(lexer),
            equals(<String>[
              "INT",
              "ID",
              "PAREN_OPEN",
              "INT",
              "ID",
              "COMMA",
              "INT",
              "ID",
              "PAREN_CLOSE",
              "GRAPH_OPEN",
              "RETURN",
              "ID",
              "PLUS",
              "ID",
              "SEMICOLON",
              "GRAPH_CLOSE",
              "EOF"
            ]));
      });

      test('call_function', () async {
        final lexer = await lexerForResource('task7/call_function');

        expect(
          tokens(lexer),
          equals(<String>[
            "BOOL",
            "ID",
            "PAREN_OPEN",
            "INT",
            "ID",
            "COMMA",
            "INT",
            "ID",
            "COMMA",
            "BOOL",
            "ID",
            "PAREN_CLOSE",
            "GRAPH_OPEN",
            "VAR",
            "ID",
            "ASSIGN",
            "ID",
            "GREATER_THAN",
            "ID",
            "SEMICOLON",
            "FINAL",
            "ID",
            "ASSIGN",
            "ID",
            "AND",
            "ID",
            "SEMICOLON",
            "RETURN",
            "ID",
            "SEMICOLON",
            "GRAPH_CLOSE",
            "VOID",
            "ID",
            "PAREN_OPEN",
            "PAREN_CLOSE",
            "GRAPH_OPEN",
            "FINAL",
            "ID",
            "ASSIGN",
            "ID",
            "PAREN_OPEN",
            "INTLIT",
            "COMMA",
            "INTLIT",
            "COMMA",
            "BOOLLIT",
            "PAREN_CLOSE",
            "SEMICOLON",
            "GRAPH_CLOSE",
            "EOF"
          ]),
        );
      });
    },
  );

  group(
    "Task 8",
    () {
      test('empty_class', () async {
        final lexer = await lexerForResource('task8/empty_class');

        expect(
          tokens(lexer),
          <String>["CLASS", "ID", "GRAPH_OPEN", "GRAPH_CLOSE", "EOF"],
        );
      });

      test('class_with_methods', () async {
        final lexer = await lexerForResource('task8/class_with_methods');

        expect(
          tokens(lexer).toString(),
          <String>[
            "CLASS",
            "ID",
            "GRAPH_OPEN",
            "FINAL",
            "INT",
            "ID",
            "SEMICOLON",
            "BOOL",
            "ID",
            "SEMICOLON",
            "ID",
            "PAREN_OPEN",
            "THIS",
            "DOT",
            "ID",
            "COMMA",
            "THIS",
            "DOT",
            "ID",
            "PAREN_CLOSE",
            "SEMICOLON",
            "INT",
            "ID",
            "PAREN_OPEN",
            "INT",
            "ID",
            "PAREN_CLOSE",
            "GRAPH_OPEN",
            "ID",
            "ASSIGN",
            "ID",
            "LOWER_EQUAL_THAN",
            "ID",
            "SEMICOLON",
            "RETURN",
            "ID",
            "PLUS",
            "ID",
            "SEMICOLON",
            "GRAPH_CLOSE",
            "GRAPH_CLOSE",
            "EOF"
          ].toString(),
        );
      });

      test('class_with_multiple_constructors', () async {
        final lexer =
            await lexerForResource('task8/class_with_multiple_constructors');

        expect(
          tokens(lexer).toString(),
          <String>[
            "CLASS",
            "ID",
            "GRAPH_OPEN",
            "FINAL",
            "INT",
            "ID",
            "SEMICOLON",
            "DOUBLE",
            "ID",
            "SEMICOLON",
            "ID",
            "PAREN_OPEN",
            "THIS",
            "DOT",
            "ID",
            "COMMA",
            "THIS",
            "DOT",
            "ID",
            "PAREN_CLOSE",
            "SEMICOLON",
            "ID",
            "DOT",
            "ID",
            "PAREN_OPEN",
            "INT",
            "ID",
            "PAREN_CLOSE",
            "COLONS",
            "THIS",
            "PAREN_OPEN",
            "ID",
            "COMMA",
            "DOUBLELIT",
            "PAREN_CLOSE",
            "SEMICOLON",
            "GRAPH_CLOSE",
            "EOF"
          ].toString(),
        );
      });

      test('class_with_properties', () async {
        final lexer = await lexerForResource('task8/class_with_properties');

        expect(tokens(lexer), <String>[
          "CLASS",
          "ID",
          "GRAPH_OPEN",
          "FINAL",
          "INT",
          "ID",
          "SEMICOLON",
          "BOOL",
          "ID",
          "SEMICOLON",
          "ID",
          "PAREN_OPEN",
          "THIS",
          "DOT",
          "ID",
          "COMMA",
          "THIS",
          "DOT",
          "ID",
          "PAREN_CLOSE",
          "SEMICOLON",
          "GRAPH_CLOSE",
          "EOF"
        ]);
      });

      test('class_hierarchy', () async {
        final lexer = await lexerForResource('task8/class_hierarchy');

        expect(tokens(lexer), <String>[
          "CLASS",
          "ID",
          "EXTENDS",
          "ID",
          "GRAPH_OPEN",
          "GRAPH_CLOSE",
          "EOF"
        ]);
      });

      test('private_class', () async {
        final lexer = await lexerForResource('task8/private_class');

        expect(
          tokens(lexer),
          <String>["CLASS", "ID", "GRAPH_OPEN", "GRAPH_CLOSE", "EOF"],
        );
      });
    },
  );

  group(
    "Task 9",
    () {
      test('object_instance', () async {
        final lexer = await lexerForResource('task9/method_call');

        expect(tokens(lexer), <String>[]);
      });

      test('method_call', () async {
        final lexer = await lexerForResource('task9/method_call');

        expect(tokens(lexer), <String>[]);
      });

      test('property_assignment', () async {
        final lexer = await lexerForResource('task9/property_assignment');

        expect(tokens(lexer), <String>[]);
      });
    },
  );
}
