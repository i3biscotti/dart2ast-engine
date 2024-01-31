import 'dart:io';

import 'package:antlr4/antlr4.dart';
import 'package:dart2ast_engine/antlr.dart';
import 'package:dart2ast_engine/parsing/antlr_parser.dart';
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

String getMultilineParseTree(DartFileContext root) {
  return _node2StringList(root).join('\n') + '\n';
}

List<String> _node2StringList(
  ParserRuleContext node, [
  String identation = "",
]) {
  final childIdentation = "  ${identation}";

  final children = node.children
          ?.map((c) => switch (c) {
                ParserRuleContext n => _node2StringList(n, childIdentation),
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
      test('var_definition_statement', () async {
        final rootNode = await _parseResource('task1/var_definition_statement');

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
                .trimMargin()));
      });

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
                .trimMargin()));
      });

      test('type_definition_statement', () async {
        final rootNode =
            await _parseResource('task1/type_definition_statement');

        expect(
            getMultilineParseTree(rootNode),
            equals("""
            |Node(DartFile)
            |  Node(VarDeclarationStatement)
            |    Node(IntType)
            |      T[int]
            |    T[age]
            |    T[=]
            |    Node(IntLiteralExpression)
            |      T[16]
            |    T[;]
            |  T[<EOF>]
            """
                .trimMargin()));
      });

      test('const_definition_statement', () async {
        final rootNode =
            await _parseResource('task1/const_definition_statement');

        expect(
            getMultilineParseTree(rootNode),
            equals("""
            |Node(DartFile)
            |  Node(ConstDeclarationStatement)
            |    T[const]
            |    Node(BoolType)
            |      T[bool]
            |    T[isOld]
            |    T[=]
            |    Node(BoolLiteralExpression)
            |      T[false]
            |    T[;]
            |  T[<EOF>]
            """
                .trimMargin()));
      });

      test('assigment_statement', () async {
        final rootNode = await _parseResource('task1/assignment_statement');
        expect(
            getMultilineParseTree(rootNode),
            equals(""" 
            |Node(DartFile)
            |  Node(AssigmentStatement)
            |    T[pi]
            |    T[=]
            |    Node(DoubleLiteralExpression)
            |      T[3.14]
            |    T[;]
            |  T[<EOF>]
            """
                .trimMargin()));
      });
    },
  );

  group(
    'Task 2',
    () {
      test('expression_definition', () async {
        final rootNode = await _parseResource('task2/expression_definition');
        expect(
            getMultilineParseTree(rootNode),
            equals("""
          |Node(DartFile)
          |  Node(ExpressionDefinitionStatement)
          |    Node(BinaryMathExpression)
          |      Node(ParenthesysExpression)
          |        T[(]
          |        Node(BinaryMathExpression)
          |          Node(IntLiteralExpression)
          |            T[3]
          |          T[+]
          |          Node(IntLiteralExpression)
          |            T[4]
          |        T[)]
          |      T[*]
          |      Node(ParenthesysExpression)
          |        T[(]
          |        Node(BinaryMathExpression)
          |          Node(IntLiteralExpression)
          |            T[4]
          |          T[-]
          |          Node(IntLiteralExpression)
          |            T[3]
          |        T[)]
          |  T[<EOF>]
          """
                .trimMargin()));
      });
    },
  );

  group(
    "Task 7",
    () {
      test('void_function_without_params', () async {
        final rootNode =
            await _parseResource('task7/void_function_without_params');

        expect(
          getMultilineParseTree(rootNode),
          equals(
            """
            |Node(DartFile)
            |  Node(FunctionDefinitionStatement)
            |    Node(FunctionDefinition)
            |      Node(VoidType)
            |        T[void]
            |      T[emptyFunction]
            |      T[(]
            |      T[)]
            |      Node(Block)
            |        T[{]
            |        T[}]
            |  T[<EOF>]
            """
                .trimMargin(),
          ),
        );
      });

      test('int_sum_function', () async {
        final rootNode = await _parseResource('task7/int_sum_function');

        expect(
          getMultilineParseTree(rootNode),
          equals("""
          |Node(DartFile)
          |  Node(FunctionDefinitionStatement)
          |    Node(FunctionDefinition)
          |      Node(IntType)
          |        T[int]
          |      T[sum]
          |      T[(]
          |      Node(Parameter)
          |        Node(IntType)
          |          T[int]
          |        T[a]
          |      T[,]
          |      Node(Parameter)
          |        Node(IntType)
          |          T[int]
          |        T[b]
          |      T[)]
          |      Node(Block)
          |        T[{]
          |        Node(ReturnStatement)
          |          T[return]
          |          Node(BinaryMathExpression)
          |            Node(VarReferenceExpression)
          |              T[a]
          |            T[+]
          |            Node(VarReferenceExpression)
          |              T[b]
          |          T[;]
          |        T[}]
          |  T[<EOF>]
          """
              .trimMargin()),
        );
      });

      test('call_function', () async {
        final rootNode = await _parseResource('task7/call_function');

        expect(
          getMultilineParseTree(rootNode),
          equals(
            """
            |Node(DartFile)
            |  Node(FunctionDefinitionStatement)
            |    Node(FunctionDefinition)
            |      Node(BoolType)
            |        T[bool]
            |      T[operations]
            |      T[(]
            |      Node(Parameter)
            |        Node(IntType)
            |          T[int]
            |        T[a]
            |      T[,]
            |      Node(Parameter)
            |        Node(IntType)
            |          T[int]
            |        T[b]
            |      T[,]
            |      Node(Parameter)
            |        Node(BoolType)
            |          T[bool]
            |        T[c]
            |      T[)]
            |      Node(Block)
            |        T[{]
            |        Node(VarDeclarationStatement)
            |          T[var]
            |          T[aIsGreaterThanB]
            |          T[=]
            |          Node(BinaryLogicExpression)
            |            Node(VarReferenceExpression)
            |              T[a]
            |            T[>]
            |            Node(VarReferenceExpression)
            |              T[b]
            |          T[;]
            |        Node(FinalDeclarationStatement)
            |          T[final]
            |          T[isGreaterAndCondition]
            |          T[=]
            |          Node(BinaryLogicExpression)
            |            Node(VarReferenceExpression)
            |              T[aIsGreaterThanB]
            |            T[&&]
            |            Node(VarReferenceExpression)
            |              T[c]
            |          T[;]
            |        Node(ReturnStatement)
            |          T[return]
            |          Node(VarReferenceExpression)
            |            T[isGreaterAndCondition]
            |          T[;]
            |        T[}]
            |  Node(FunctionDefinitionStatement)
            |    Node(FunctionDefinition)
            |      Node(VoidType)
            |        T[void]
            |      T[main]
            |      T[(]
            |      T[)]
            |      Node(Block)
            |        T[{]
            |        Node(FinalDeclarationStatement)
            |          T[final]
            |          T[result]
            |          T[=]
            |          Node(FunctionCallExpression)
            |            T[operations]
            |            T[(]
            |            Node(IntLiteralExpression)
            |              T[11]
            |            T[,]
            |            Node(IntLiteralExpression)
            |              T[12]
            |            T[,]
            |            Node(BoolLiteralExpression)
            |              T[false]
            |            T[)]
            |          T[;]
            |        T[}]
            |  T[<EOF>]
            """
                .trimMargin(),
          ),
        );
      });
    },
  );

  group(
    "Task 9",
    () {
      test('method_call', () {
        throw UnimplementedError();
      });
      test('object_instance', () {
        throw UnimplementedError();
      });
      test('property_assignment', () {
        throw UnimplementedError();
      });
    },
  );
}
