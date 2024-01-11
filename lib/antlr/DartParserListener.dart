// Generated from d://Progetti personali//dart2kotlin//dart2ast_engine//antrl4//DartParser.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'DartParser.dart';

/// This abstract class defines a complete listener for a parse tree produced by
/// [DartParser].
abstract class DartParserListener extends ParseTreeListener {
  /// Enter a parse tree produced by [DartParser.dartFile].
  /// [ctx] the parse tree
  void enterDartFile(DartFileContext ctx);
  /// Exit a parse tree produced by [DartParser.dartFile].
  /// [ctx] the parse tree
  void exitDartFile(DartFileContext ctx);

  /// Enter a parse tree produced by [DartParser.line].
  /// [ctx] the parse tree
  void enterLine(LineContext ctx);
  /// Exit a parse tree produced by [DartParser.line].
  /// [ctx] the parse tree
  void exitLine(LineContext ctx);

  /// Enter a parse tree produced by the [VarDeclarationStatement]
  /// labeled alternative in [file.parserName>.statement].
  /// [ctx] the parse tree
  void enterVarDeclarationStatement(VarDeclarationStatementContext ctx);
  /// Exit a parse tree produced by the [VarDeclarationStatement]
  /// labeled alternative in [DartParser.statement].
  /// [ctx] the parse tree
  void exitVarDeclarationStatement(VarDeclarationStatementContext ctx);

  /// Enter a parse tree produced by the [FinalDeclarationStatement]
  /// labeled alternative in [file.parserName>.statement].
  /// [ctx] the parse tree
  void enterFinalDeclarationStatement(FinalDeclarationStatementContext ctx);
  /// Exit a parse tree produced by the [FinalDeclarationStatement]
  /// labeled alternative in [DartParser.statement].
  /// [ctx] the parse tree
  void exitFinalDeclarationStatement(FinalDeclarationStatementContext ctx);

  /// Enter a parse tree produced by the [ConstDeclarationStatment]
  /// labeled alternative in [file.parserName>.statement].
  /// [ctx] the parse tree
  void enterConstDeclarationStatment(ConstDeclarationStatmentContext ctx);
  /// Exit a parse tree produced by the [ConstDeclarationStatment]
  /// labeled alternative in [DartParser.statement].
  /// [ctx] the parse tree
  void exitConstDeclarationStatment(ConstDeclarationStatmentContext ctx);

  /// Enter a parse tree produced by the [AssigmentStatement]
  /// labeled alternative in [file.parserName>.statement].
  /// [ctx] the parse tree
  void enterAssigmentStatement(AssigmentStatementContext ctx);
  /// Exit a parse tree produced by the [AssigmentStatement]
  /// labeled alternative in [DartParser.statement].
  /// [ctx] the parse tree
  void exitAssigmentStatement(AssigmentStatementContext ctx);

  /// Enter a parse tree produced by the [FunctionDefinitionStatement]
  /// labeled alternative in [file.parserName>.statement].
  /// [ctx] the parse tree
  void enterFunctionDefinitionStatement(FunctionDefinitionStatementContext ctx);
  /// Exit a parse tree produced by the [FunctionDefinitionStatement]
  /// labeled alternative in [DartParser.statement].
  /// [ctx] the parse tree
  void exitFunctionDefinitionStatement(FunctionDefinitionStatementContext ctx);

  /// Enter a parse tree produced by the [ConstructorDefinitionStatement]
  /// labeled alternative in [file.parserName>.statement].
  /// [ctx] the parse tree
  void enterConstructorDefinitionStatement(ConstructorDefinitionStatementContext ctx);
  /// Exit a parse tree produced by the [ConstructorDefinitionStatement]
  /// labeled alternative in [DartParser.statement].
  /// [ctx] the parse tree
  void exitConstructorDefinitionStatement(ConstructorDefinitionStatementContext ctx);

  /// Enter a parse tree produced by the [ClassDefinitionStatement]
  /// labeled alternative in [file.parserName>.statement].
  /// [ctx] the parse tree
  void enterClassDefinitionStatement(ClassDefinitionStatementContext ctx);
  /// Exit a parse tree produced by the [ClassDefinitionStatement]
  /// labeled alternative in [DartParser.statement].
  /// [ctx] the parse tree
  void exitClassDefinitionStatement(ClassDefinitionStatementContext ctx);

  /// Enter a parse tree produced by the [IntType]
  /// labeled alternative in [file.parserName>.type].
  /// [ctx] the parse tree
  void enterIntType(IntTypeContext ctx);
  /// Exit a parse tree produced by the [IntType]
  /// labeled alternative in [DartParser.type].
  /// [ctx] the parse tree
  void exitIntType(IntTypeContext ctx);

  /// Enter a parse tree produced by the [DoubleType]
  /// labeled alternative in [file.parserName>.type].
  /// [ctx] the parse tree
  void enterDoubleType(DoubleTypeContext ctx);
  /// Exit a parse tree produced by the [DoubleType]
  /// labeled alternative in [DartParser.type].
  /// [ctx] the parse tree
  void exitDoubleType(DoubleTypeContext ctx);

  /// Enter a parse tree produced by the [BoolType]
  /// labeled alternative in [file.parserName>.type].
  /// [ctx] the parse tree
  void enterBoolType(BoolTypeContext ctx);
  /// Exit a parse tree produced by the [BoolType]
  /// labeled alternative in [DartParser.type].
  /// [ctx] the parse tree
  void exitBoolType(BoolTypeContext ctx);

  /// Enter a parse tree produced by the [StringType]
  /// labeled alternative in [file.parserName>.type].
  /// [ctx] the parse tree
  void enterStringType(StringTypeContext ctx);
  /// Exit a parse tree produced by the [StringType]
  /// labeled alternative in [DartParser.type].
  /// [ctx] the parse tree
  void exitStringType(StringTypeContext ctx);

  /// Enter a parse tree produced by the [CustomType]
  /// labeled alternative in [file.parserName>.type].
  /// [ctx] the parse tree
  void enterCustomType(CustomTypeContext ctx);
  /// Exit a parse tree produced by the [CustomType]
  /// labeled alternative in [DartParser.type].
  /// [ctx] the parse tree
  void exitCustomType(CustomTypeContext ctx);

  /// Enter a parse tree produced by the [VoidType]
  /// labeled alternative in [file.parserName>.type].
  /// [ctx] the parse tree
  void enterVoidType(VoidTypeContext ctx);
  /// Exit a parse tree produced by the [VoidType]
  /// labeled alternative in [DartParser.type].
  /// [ctx] the parse tree
  void exitVoidType(VoidTypeContext ctx);

  /// Enter a parse tree produced by the [BinaryMathExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterBinaryMathExpression(BinaryMathExpressionContext ctx);
  /// Exit a parse tree produced by the [BinaryMathExpression]
  /// labeled alternative in [DartParser.expression].
  /// [ctx] the parse tree
  void exitBinaryMathExpression(BinaryMathExpressionContext ctx);

  /// Enter a parse tree produced by the [VarReferenceExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterVarReferenceExpression(VarReferenceExpressionContext ctx);
  /// Exit a parse tree produced by the [VarReferenceExpression]
  /// labeled alternative in [DartParser.expression].
  /// [ctx] the parse tree
  void exitVarReferenceExpression(VarReferenceExpressionContext ctx);

  /// Enter a parse tree produced by the [BinaryLogicExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterBinaryLogicExpression(BinaryLogicExpressionContext ctx);
  /// Exit a parse tree produced by the [BinaryLogicExpression]
  /// labeled alternative in [DartParser.expression].
  /// [ctx] the parse tree
  void exitBinaryLogicExpression(BinaryLogicExpressionContext ctx);

  /// Enter a parse tree produced by the [DoubleLiteralExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterDoubleLiteralExpression(DoubleLiteralExpressionContext ctx);
  /// Exit a parse tree produced by the [DoubleLiteralExpression]
  /// labeled alternative in [DartParser.expression].
  /// [ctx] the parse tree
  void exitDoubleLiteralExpression(DoubleLiteralExpressionContext ctx);

  /// Enter a parse tree produced by the [StringLiteralExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterStringLiteralExpression(StringLiteralExpressionContext ctx);
  /// Exit a parse tree produced by the [StringLiteralExpression]
  /// labeled alternative in [DartParser.expression].
  /// [ctx] the parse tree
  void exitStringLiteralExpression(StringLiteralExpressionContext ctx);

  /// Enter a parse tree produced by the [UnaryLogicNegationExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterUnaryLogicNegationExpression(UnaryLogicNegationExpressionContext ctx);
  /// Exit a parse tree produced by the [UnaryLogicNegationExpression]
  /// labeled alternative in [DartParser.expression].
  /// [ctx] the parse tree
  void exitUnaryLogicNegationExpression(UnaryLogicNegationExpressionContext ctx);

  /// Enter a parse tree produced by the [UnaryMathExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterUnaryMathExpression(UnaryMathExpressionContext ctx);
  /// Exit a parse tree produced by the [UnaryMathExpression]
  /// labeled alternative in [DartParser.expression].
  /// [ctx] the parse tree
  void exitUnaryMathExpression(UnaryMathExpressionContext ctx);

  /// Enter a parse tree produced by the [BoolLiteralExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterBoolLiteralExpression(BoolLiteralExpressionContext ctx);
  /// Exit a parse tree produced by the [BoolLiteralExpression]
  /// labeled alternative in [DartParser.expression].
  /// [ctx] the parse tree
  void exitBoolLiteralExpression(BoolLiteralExpressionContext ctx);

  /// Enter a parse tree produced by the [ParenthesysExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterParenthesysExpression(ParenthesysExpressionContext ctx);
  /// Exit a parse tree produced by the [ParenthesysExpression]
  /// labeled alternative in [DartParser.expression].
  /// [ctx] the parse tree
  void exitParenthesysExpression(ParenthesysExpressionContext ctx);

  /// Enter a parse tree produced by the [IntLiteralExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterIntLiteralExpression(IntLiteralExpressionContext ctx);
  /// Exit a parse tree produced by the [IntLiteralExpression]
  /// labeled alternative in [DartParser.expression].
  /// [ctx] the parse tree
  void exitIntLiteralExpression(IntLiteralExpressionContext ctx);

  /// Enter a parse tree produced by [DartParser.functionDefinition].
  /// [ctx] the parse tree
  void enterFunctionDefinition(FunctionDefinitionContext ctx);
  /// Exit a parse tree produced by [DartParser.functionDefinition].
  /// [ctx] the parse tree
  void exitFunctionDefinition(FunctionDefinitionContext ctx);

  /// Enter a parse tree produced by [DartParser.parameter].
  /// [ctx] the parse tree
  void enterParameter(ParameterContext ctx);
  /// Exit a parse tree produced by [DartParser.parameter].
  /// [ctx] the parse tree
  void exitParameter(ParameterContext ctx);

  /// Enter a parse tree produced by [DartParser.constructorDefinition].
  /// [ctx] the parse tree
  void enterConstructorDefinition(ConstructorDefinitionContext ctx);
  /// Exit a parse tree produced by [DartParser.constructorDefinition].
  /// [ctx] the parse tree
  void exitConstructorDefinition(ConstructorDefinitionContext ctx);

  /// Enter a parse tree produced by [DartParser.constructorParameter].
  /// [ctx] the parse tree
  void enterConstructorParameter(ConstructorParameterContext ctx);
  /// Exit a parse tree produced by [DartParser.constructorParameter].
  /// [ctx] the parse tree
  void exitConstructorParameter(ConstructorParameterContext ctx);

  /// Enter a parse tree produced by [DartParser.block].
  /// [ctx] the parse tree
  void enterBlock(BlockContext ctx);
  /// Exit a parse tree produced by [DartParser.block].
  /// [ctx] the parse tree
  void exitBlock(BlockContext ctx);

  /// Enter a parse tree produced by [DartParser.classDefinition].
  /// [ctx] the parse tree
  void enterClassDefinition(ClassDefinitionContext ctx);
  /// Exit a parse tree produced by [DartParser.classDefinition].
  /// [ctx] the parse tree
  void exitClassDefinition(ClassDefinitionContext ctx);
}