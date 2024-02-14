import 'dart:io';
import 'dart:math';

import 'package:antlr4/antlr4.dart';
import 'package:dart2ast_engine/antlr.dart';
import 'package:dart2ast_engine/parsing/antlr_parser.dart';
import 'package:indent/indent.dart';
import 'package:test/test.dart';

import 'helpers.dart';

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
        final rootNode = await parseResource('task1/var_definition_statement');

        expect(
            getMultilineParseTree(rootNode),
            equals("""
            |Node(DartFile)
            |  Node(VarDeclarationStatement)
            |    Node(VarDeclaration)
            |      T[var]
            |      T[name]
            |      T[=]
            |      Node(StringLiteralExpression)
            |        T["Simone"]
            |    T[;]
            |  T[<EOF>]
            """
                .trimMargin()));
      });

      test('final_definition_statement', () async {
        final rootNode =
            await parseResource('task1/final_definition_statement');

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
        final rootNode = await parseResource('task1/type_definition_statement');

        expect(
            getMultilineParseTree(rootNode),
            equals("""
            |Node(DartFile)
            |  Node(VarDeclarationStatement)
            |    Node(VarDeclaration)
            |      Node(IntType)
            |        T[int]
            |      T[age]
            |      T[=]
            |      Node(IntLiteralExpression)
            |        T[16]
            |    T[;]
            |  T[<EOF>]
            """
                .trimMargin()));
      });

      test('const_definition_statement', () async {
        final rootNode =
            await parseResource('task1/const_definition_statement');

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

      test('Assignment_statement', () async {
        final rootNode = await parseResource('task1/assignment_statement');
        expect(
            getMultilineParseTree(rootNode),
            equals(""" 
            |Node(DartFile)
            |  Node(AssignmentStatement)
            |    Node(Assignment)
            |      T[pi]
            |      T[=]
            |      Node(DoubleLiteralExpression)
            |        T[3.14]
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
        final rootNode = await parseResource('task2/expression_definition');
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
          |    T[;]
          |  T[<EOF>]
          """
                .trimMargin()));
      });
    },
  );

  group(
    "Task 3",
    () {
      test('if_statement', () async {
        final rootNode = await parseResource('task3/if_statement');
        expect(
            getMultilineParseTree(rootNode),
            equals("""
      |Node(DartFile)
      |  Node(IfDefinitionStatement)
      |    Node(IfDefinition)
      |      Node(IfBlock)
      |        T[if]
      |        T[(]
      |        Node(BinaryLogicExpression)
      |          Node(VarReferenceExpression)
      |            T[voto]
      |          T[>]
      |          Node(IntLiteralExpression)
      |            T[18]
      |        T[)]
      |        Node(Block)
      |          T[{]
      |          Node(AssignmentStatement)
      |            Node(Assignment)
      |              T[exam]
      |              T[=]
      |              Node(StringLiteralExpression)
      |                T["passed"]
      |            T[;]
      |          T[}]
      |      Node(ElseIfBlock)
      |        T[else]
      |        T[if]
      |        T[(]
      |        Node(BinaryLogicExpression)
      |          Node(VarReferenceExpression)
      |            T[voto]
      |          T[==]
      |          Node(IntLiteralExpression)
      |            T[18]
      |        T[)]
      |        Node(Block)
      |          T[{]
      |          Node(AssignmentStatement)
      |            Node(Assignment)
      |              T[exam]
      |              T[=]
      |              Node(StringLiteralExpression)
      |                T["passed"]
      |            T[;]
      |          T[}]
      |      Node(ElseBlock)
      |        T[else]
      |        Node(Block)
      |          T[{]
      |          Node(AssignmentStatement)
      |            Node(Assignment)
      |              T[exam]
      |              T[=]
      |              Node(StringLiteralExpression)
      |                T["failed"]
      |            T[;]
      |          T[}]
      |  T[<EOF>]
      """
                .trimMargin()));
      });
    },
  );

  group(
    "Task 4",
    () {
      test('while_statement', () async {
        final rootNode = await parseResource('task4/while_statement');

        expect(
            getMultilineParseTree(rootNode),
            equals("""
            |Node(DartFile)
            |  Node(VarDeclarationStatement)
            |    Node(VarDeclaration)
            |      T[var]
            |      Node(IntType)
            |        T[int]
            |      T[i]
            |      T[=]
            |      Node(IntLiteralExpression)
            |        T[1]
            |    T[;]
            |  Node(WhileDefinitionStatement)
            |    Node(WhileDefinition)
            |      T[while]
            |      T[(]
            |      Node(VarReferenceExpression)
            |        T[condition]
            |      T[)]
            |      Node(Block)
            |        T[{]
            |        Node(IfDefinitionStatement)
            |          Node(IfDefinition)
            |            Node(IfBlock)
            |              T[if]
            |              T[(]
            |              Node(BinaryLogicExpression)
            |                Node(VarReferenceExpression)
            |                  T[i]
            |                T[<]
            |                Node(IntLiteralExpression)
            |                  T[17]
            |              T[)]
            |              Node(Block)
            |                T[{]
            |                Node(AssignmentStatement)
            |                  Node(Assignment)
            |                    T[i]
            |                    T[=]
            |                    Node(BinaryMathExpression)
            |                      Node(VarReferenceExpression)
            |                        T[i]
            |                      T[+]
            |                      Node(IntLiteralExpression)
            |                        T[1]
            |                  T[;]
            |                T[}]
            |            Node(ElseBlock)
            |              T[else]
            |              Node(Block)
            |                T[{]
            |                Node(AssignmentStatement)
            |                  Node(Assignment)
            |                    T[condition]
            |                    T[=]
            |                    Node(BoolLiteralExpression)
            |                      T[true]
            |                  T[;]
            |                T[}]
            |        T[}]
            |  T[<EOF>]
            """
                .trimMargin()));
      });
    },
  );

  group(
    "Task 5",
    () {
      test('for_statement', () async {
        final rootNode = await parseResource('task5/for_statement');

        expect(
            getMultilineParseTree(rootNode),
            equals(""" 
            |Node(DartFile)
            |  Node(VarDeclarationStatement)
            |    Node(VarDeclaration)
            |      T[var]
            |      T[a]
            |      T[=]
            |      Node(IntLiteralExpression)
            |        T[0]
            |    T[;]
            |  Node(ForDefinitionStatement)
            |    Node(ForDefinition)
            |      T[for]
            |      T[(]
            |      Node(StandardForCondition)
            |        Node(VarDeclarationForStatement)
            |          Node(VarDeclaration)
            |            Node(IntType)
            |              T[int]
            |            T[i]
            |            T[=]
            |            Node(IntLiteralExpression)
            |              T[0]
            |        T[;]
            |        Node(BinaryLogicExpression)
            |          Node(VarReferenceExpression)
            |            T[i]
            |          T[<]
            |          Node(IntLiteralExpression)
            |            T[3]
            |        T[;]
            |        Node(ExpressionForStatement)
            |          Node(PostIncrementExpression)
            |            T[i]
            |            T[+]
            |            T[+]
            |      T[)]
            |      Node(Block)
            |        T[{]
            |        Node(AssignmentStatement)
            |          Node(Assignment)
            |            T[a]
            |            T[=]
            |            Node(BinaryMathExpression)
            |              Node(VarReferenceExpression)
            |                T[a]
            |              T[+]
            |              Node(IntLiteralExpression)
            |                T[1]
            |          T[;]
            |        T[}]
            |  T[<EOF>]
            """
                .trimMargin()));
      });

      test('for_each_statement', () async {
        final rootNode = await parseResource('task5/for_each_statement');

        expect(
            getMultilineParseTree(rootNode),
            equals("""       
            |Node(DartFile)
            |  Node(FinalDeclarationStatement)
            |    T[final]
            |    T[list]
            |    T[=]
            |    Node(ListLiteralExpression)
            |      T[[]
            |      Node(IntLiteralExpression)
            |        T[1]
            |      T[,]
            |      Node(IntLiteralExpression)
            |        T[2]
            |      T[]]
            |    T[;]
            |  Node(VarDeclarationStatement)
            |    Node(VarDeclaration)
            |      T[var]
            |      T[b]
            |      T[=]
            |      Node(IntLiteralExpression)
            |        T[0]
            |    T[;]
            |  Node(ForDefinitionStatement)
            |    Node(ForDefinition)
            |      T[for]
            |      T[(]
            |      Node(ForEachCondition)
            |        Node(ItemDefinition)
            |          Node(IntType)
            |            T[int]
            |          T[i]
            |        T[in]
            |        Node(VarReferenceExpression)
            |          T[list]
            |      T[)]
            |      Node(Block)
            |        T[{]
            |        Node(AssignmentStatement)
            |          Node(Assignment)
            |            T[b]
            |            T[=]
            |            Node(BinaryMathExpression)
            |              Node(VarReferenceExpression)
            |                T[b]
            |              T[+]
            |              Node(IntLiteralExpression)
            |                T[1]
            |          T[;]
            |        T[}]
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
            await parseResource('task7/void_function_without_params');

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
        final rootNode = await parseResource('task7/int_sum_function');

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
        final rootNode = await parseResource('task7/call_function');

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
            |          Node(VarDeclaration)
            |            T[var]
            |            T[aIsGreaterThanB]
            |            T[=]
            |            Node(BinaryLogicExpression)
            |              Node(VarReferenceExpression)
            |                T[a]
            |              T[>]
            |              Node(VarReferenceExpression)
            |                T[b]
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
    "Task 8",
    () {
      test('empty_class', () async {
        final rootNode = await parseResource('task8/empty_class');

        expect(
            getMultilineParseTree(rootNode),
            """
            |Node(DartFile)
            |  Node(ClassDefinitionStatement)
            |    Node(ClassDefinition)
            |      T[class]
            |      T[SimpleClass]
            |      T[{]
            |      T[}]
            |  T[<EOF>]
            """
                .trimMargin());
      });

      test('class_with_properties', () async {
        final rootNode = await parseResource('task8/class_with_properties');

        expect(
            getMultilineParseTree(rootNode),
            """
            |Node(DartFile)
            |  Node(ClassDefinitionStatement)
            |    Node(ClassDefinition)
            |      T[class]
            |      T[SimpleClass]
            |      T[{]
            |      Node(ClassImmutableVarDeclarationStatement)
            |        T[final]
            |        Node(IntType)
            |          T[int]
            |        T[prop1]
            |        T[;]
            |      Node(ClassVarDeclarationStatement)
            |        Node(BoolType)
            |          T[bool]
            |        T[pro2]
            |        T[;]
            |      Node(MainClassConstructorDeclarationStatement)
            |        T[SimpleClass]
            |        T[(]
            |        Node(Parameter)
            |          T[this]
            |          T[.]
            |          T[prop1]
            |        T[,]
            |        Node(Parameter)
            |          T[this]
            |          T[.]
            |          T[pro2]
            |        T[)]
            |        T[;]
            |      T[}]
            |  T[<EOF>]
            """
                .trimMargin());
      });

      test('class_with_methods', () async {
        final rootNode = await parseResource('task8/class_with_methods');

        expect(
          getMultilineParseTree(rootNode),
          """
          |Node(DartFile)
          |  Node(ClassDefinitionStatement)
          |    Node(ClassDefinition)
          |      T[class]
          |      T[SimpleClass]
          |      T[{]
          |      Node(ClassImmutableVarDeclarationStatement)
          |        T[final]
          |        Node(IntType)
          |          T[int]
          |        T[prop1]
          |        T[;]
          |      Node(ClassVarDeclarationStatement)
          |        Node(BoolType)
          |          T[bool]
          |        T[pro2]
          |        T[;]
          |      Node(MainClassConstructorDeclarationStatement)
          |        T[SimpleClass]
          |        T[(]
          |        Node(Parameter)
          |          T[this]
          |          T[.]
          |          T[prop1]
          |        T[,]
          |        Node(Parameter)
          |          T[this]
          |          T[.]
          |          T[pro2]
          |        T[)]
          |        T[;]
          |      Node(ClassMethodDeclarationStatement)
          |        Node(FunctionDefinition)
          |          Node(IntType)
          |            T[int]
          |          T[sum]
          |          T[(]
          |          Node(Parameter)
          |            Node(IntType)
          |              T[int]
          |            T[value]
          |          T[)]
          |          Node(Block)
          |            T[{]
          |            Node(AssignmentStatement)
          |              Node(Assignment)
          |                T[pro2]
          |                T[=]
          |                Node(BinaryLogicExpression)
          |                  Node(VarReferenceExpression)
          |                    T[value]
          |                  T[<=]
          |                  Node(VarReferenceExpression)
          |                    T[prop1]
          |              T[;]
          |            Node(ReturnStatement)
          |              T[return]
          |              Node(BinaryMathExpression)
          |                Node(VarReferenceExpression)
          |                  T[value]
          |                T[+]
          |                Node(VarReferenceExpression)
          |                  T[prop1]
          |              T[;]
          |            T[}]
          |      T[}]
          |  T[<EOF>]
          """
              .trimMargin(),
        );
      });

      test('class_with_multiple_constructors', () async {
        final rootNode =
            await parseResource('task8/class_with_multiple_constructors');

        expect(
          getMultilineParseTree(rootNode),
          """
          |Node(DartFile)
          |  Node(ClassDefinitionStatement)
          |    Node(ClassDefinition)
          |      T[class]
          |      T[MultiplePass]
          |      T[{]
          |      Node(ClassImmutableVarDeclarationStatement)
          |        T[final]
          |        Node(IntType)
          |          T[int]
          |        T[a]
          |        T[;]
          |      Node(ClassVarDeclarationStatement)
          |        Node(DoubleType)
          |          T[double]
          |        T[b]
          |        T[;]
          |      Node(MainClassConstructorDeclarationStatement)
          |        T[MultiplePass]
          |        T[(]
          |        Node(Parameter)
          |          T[this]
          |          T[.]
          |          T[a]
          |        T[,]
          |        Node(Parameter)
          |          T[this]
          |          T[.]
          |          T[b]
          |        T[)]
          |        T[;]
          |      Node(NamedClassConstructorDeclarationStatement)
          |        T[MultiplePass]
          |        T[.]
          |        T[test]
          |        T[(]
          |        Node(Parameter)
          |          Node(IntType)
          |            T[int]
          |          T[a]
          |        T[)]
          |        T[:]
          |        Node(ThisConstructorCall)
          |          T[this]
          |          T[(]
          |          Node(VarReferenceExpression)
          |            T[a]
          |          T[,]
          |          Node(DoubleLiteralExpression)
          |            T[12.1]
          |          T[)]
          |        T[;]
          |      T[}]
          |  T[<EOF>]
          """
              .trimMargin(),
        );
      });

      test('class_hierarchy', () async {
        final rootNode = await parseResource('task8/class_hierarchy');

        expect(
          getMultilineParseTree(rootNode),
          """
          |Node(DartFile)
          |  Node(ClassDefinitionStatement)
          |    Node(ClassDefinition)
          |      T[class]
          |      T[SecretWars]
          |      T[extends]
          |      T[Marvel]
          |      T[{]
          |      T[}]
          |  T[<EOF>]
          """
              .trimMargin(),
        );
      });

      test('private_class', () async {
        final rootNode = await parseResource('task8/private_class');

        expect(
          getMultilineParseTree(rootNode),
          """
          |Node(DartFile)
          |  Node(ClassDefinitionStatement)
          |    Node(ClassDefinition)
          |      T[class]
          |      T[_SecretWar]
          |      T[{]
          |      T[}]
          |  T[<EOF>]
          """
              .trimMargin(),
        );
      });
    },
  );

  group(
    "Task 9",
    () {
      test('object_instance', () async {
        final rootNode = await parseResource('task9/object_instance');

        expect(
          getMultilineParseTree(rootNode),
          """
          |Node(DartFile)
          |  Node(FinalDeclarationStatement)
          |    T[final]
          |    T[element]
          |    T[=]
          |    Node(FunctionCallExpression)
          |      T[ClassToInstance]
          |      T[(]
          |      T[)]
          |    T[;]
          |  T[<EOF>]
          """
              .trimMargin(),
        );
      });

      test('method_call', () async {
        final rootNode = await parseResource('task9/method_call');

        expect(
          getMultilineParseTree(rootNode),
          """
          |Node(DartFile)
          |  Node(ExpressionDefinitionStatement)
          |    Node(ObjectMethodCallExpression)
          |      T[element]
          |      T[.]
          |      T[execute]
          |      T[(]
          |      T[)]
          |    T[;]
          |  T[<EOF>]
          """
              .trimMargin(),
        );
      });

      test('property_assignment', () async {
        final rootNode = await parseResource('task9/property_assignment');

        expect(
          getMultilineParseTree(rootNode),
          """
          |Node(DartFile)
          |  Node(ObjectPropertyAssignmentStatement)
          |    T[element]
          |    T[.]
          |    T[name]
          |    T[=]
          |    Node(StringLiteralExpression)
          |      T["Pacco"]
          |    T[;]
          |  T[<EOF>]
          """
              .trimMargin(),
        );
      });
    },
  );
}
