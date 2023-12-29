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

  /// Enter a parse tree produced by the [VariableDeclarationStatement]
  /// labeled alternative in [file.parserName>.statement].
  /// [ctx] the parse tree
  void enterVariableDeclarationStatement(VariableDeclarationStatementContext ctx);
  /// Exit a parse tree produced by the [VariableDeclarationStatement]
  /// labeled alternative in [DartParser.statement].
  /// [ctx] the parse tree
  void exitVariableDeclarationStatement(VariableDeclarationStatementContext ctx);

  /// Enter a parse tree produced by the [AssigmentStatement]
  /// labeled alternative in [file.parserName>.statement].
  /// [ctx] the parse tree
  void enterAssigmentStatement(AssigmentStatementContext ctx);
  /// Exit a parse tree produced by the [AssigmentStatement]
  /// labeled alternative in [DartParser.statement].
  /// [ctx] the parse tree
  void exitAssigmentStatement(AssigmentStatementContext ctx);

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

  /// Enter a parse tree produced by the [VarDeclarationStatement]
  /// labeled alternative in [file.parserName>.variableDeclaration].
  /// [ctx] the parse tree
  void enterVarDeclarationStatement(VarDeclarationStatementContext ctx);
  /// Exit a parse tree produced by the [VarDeclarationStatement]
  /// labeled alternative in [DartParser.variableDeclaration].
  /// [ctx] the parse tree
  void exitVarDeclarationStatement(VarDeclarationStatementContext ctx);

  /// Enter a parse tree produced by the [FinalDeclarationStatement]
  /// labeled alternative in [file.parserName>.variableDeclaration].
  /// [ctx] the parse tree
  void enterFinalDeclarationStatement(FinalDeclarationStatementContext ctx);
  /// Exit a parse tree produced by the [FinalDeclarationStatement]
  /// labeled alternative in [DartParser.variableDeclaration].
  /// [ctx] the parse tree
  void exitFinalDeclarationStatement(FinalDeclarationStatementContext ctx);

  /// Enter a parse tree produced by the [ConstDeclarationStatement]
  /// labeled alternative in [file.parserName>.variableDeclaration].
  /// [ctx] the parse tree
  void enterConstDeclarationStatement(ConstDeclarationStatementContext ctx);
  /// Exit a parse tree produced by the [ConstDeclarationStatement]
  /// labeled alternative in [DartParser.variableDeclaration].
  /// [ctx] the parse tree
  void exitConstDeclarationStatement(ConstDeclarationStatementContext ctx);

  /// Enter a parse tree produced by [DartParser.assigment].
  /// [ctx] the parse tree
  void enterAssigment(AssigmentContext ctx);
  /// Exit a parse tree produced by [DartParser.assigment].
  /// [ctx] the parse tree
  void exitAssigment(AssigmentContext ctx);

  /// Enter a parse tree produced by the [BoolLiteralExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterBoolLiteralExpression(BoolLiteralExpressionContext ctx);
  /// Exit a parse tree produced by the [BoolLiteralExpression]
  /// labeled alternative in [DartParser.expression].
  /// [ctx] the parse tree
  void exitBoolLiteralExpression(BoolLiteralExpressionContext ctx);

  /// Enter a parse tree produced by the [IntLiteralExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterIntLiteralExpression(IntLiteralExpressionContext ctx);
  /// Exit a parse tree produced by the [IntLiteralExpression]
  /// labeled alternative in [DartParser.expression].
  /// [ctx] the parse tree
  void exitIntLiteralExpression(IntLiteralExpressionContext ctx);

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
}