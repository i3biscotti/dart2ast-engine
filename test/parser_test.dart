import 'dart:io';

import 'package:antlr4/antlr4.dart';
import 'package:dart2ast_engine/antlr.dart';
import 'package:dart2ast_engine/parsing/antlr_parser.dart';
import 'package:indent/indent.dart';
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

String getMultilineParseTree(DartFileContext root) {
  return _getMultilineParseTree(root).join('\n') + '\n';
}

List<String> _getMultilineParseTree(
  ParserRuleContext node, [
  String identation = "",
]) {
  final childIdentation = "  ${identation}";

  final children = node.children
          ?.map((c) => switch (c) {
                ParserRuleContext n =>
                  _getMultilineParseTree(n, childIdentation),
                TerminalNode n => <String>["${childIdentation}T[${n.text}]"],
                Object o => throw UnsupportedError(
                    "Unknown ${o.runtimeType} node type",
                  ),
              })
          .expand((e) => e)
          .toList() ??
      [];

  return [
    "${identation}Node(${node.runtimeType.toString().replaceAll("Context", "")})",
    ...children
  ];
}

void main() {
  group(
    'Task 1',
    () {
      test(
        'var_definition_statement',
        () async {
          final rootNode =
              await _parseResource('task1/var_definition_statement');

          expect(
            getMultilineParseTree(rootNode),
            equals("""
            |Node(DartFile)
            |  Node(VarDeclarationStatement)
            |    T[var]
            |    T[name]
            |    T[=]
            |    Node(StringLiteralExpression)
            |      T["Simone"]
            |    T[;]
            |  T[<EOF>]
            """
                .trimMargin()),
          );
        },
      );

      test('final_definition_statement', () async {
        final rootNode =
            await _parseResource('task1/final_definition_statement');

        expect(
          getMultilineParseTree(rootNode),
          equals("""
            |Node(DartFile)
            |  Node(FinalDeclarationStatement)
            |    T[final]
            |    Node(DoubleType)
            |      T[double]
            |    T[height]
            |    T[=]
            |    Node(DoubleLiteralExpression)
            |      T[1.70]
            |    T[;]
            |  T[<EOF>]
            """
              .trimMargin()),
        );
      });
    },
  );
}
