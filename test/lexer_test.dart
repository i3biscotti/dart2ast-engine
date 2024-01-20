import 'dart:io';

import 'package:antlr4/antlr4.dart';
import 'package:dart2ast_engine/antlr.dart';
import 'package:dart2ast_engine/parsing/models.dart';
import 'package:test/test.dart';

Future<DartLexer> lexerForResource(String resourceName) async {
  final fileInputStream =
      await File('test/resources/$resourceName.dart').toStream();

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
            equals(['VAR','ID','ASSIGN','STRINGLIT','SEMICOLON','EOF']),
          );
        },
      );

      test(
        'final_definition_statement', 
        () async {
        final lexer = 
            await lexerForResource('task1/final_definition_statement');
        expect(
            tokens(lexer),
            equals(['FINAL','DOUBLE','ID','ASSIGN','DOUBLELIT','SEMICOLON','EOF'])
            );
          } 
        );

      test(
        'type_definition_statement',
        () async {
          final lexer = 
              await lexerForResource('task1/type_definition_statement');
          expect(
            tokens(lexer),
            equals(['INT','ID','ASSIGN','INTLIT','SEMICOLON','EOF'])
          );
        } 
      );

      test(
        'const_definition_statement',
        () async {
          final lexer = 
              await lexerForResource('task1/const_definition_statement');
          expect(
            tokens(lexer),
            equals(['CONST','BOOL','ID','ASSIGN','BOOLLIT', 'SEMICOLON', 'EOF'])
          );
        } 
      );

       test(
        'assignment_statement',
        () async {
          final lexer = 
              await lexerForResource('task1/assignment_statement');
          expect(
            tokens(lexer),
            equals(['ID','ASSIGN','DOUBLELIT','SEMICOLON','EOF'])
          );
        } 
      );

    },
  );
}

