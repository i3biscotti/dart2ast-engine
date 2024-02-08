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

  /// Enter a parse tree produced by the [ConstDeclarationStatement]
  /// labeled alternative in [file.parserName>.statement].
  /// [ctx] the parse tree
  void enterConstDeclarationStatement(ConstDeclarationStatementContext ctx);
  /// Exit a parse tree produced by the [ConstDeclarationStatement]
  /// labeled alternative in [DartParser.statement].
  /// [ctx] the parse tree
  void exitConstDeclarationStatement(ConstDeclarationStatementContext ctx);

  /// Enter a parse tree produced by the [AssignmentStatement]
  /// labeled alternative in [file.parserName>.statement].
  /// [ctx] the parse tree
  void enterAssignmentStatement(AssignmentStatementContext ctx);
  /// Exit a parse tree produced by the [AssignmentStatement]
  /// labeled alternative in [DartParser.statement].
  /// [ctx] the parse tree
  void exitAssignmentStatement(AssignmentStatementContext ctx);

  /// Enter a parse tree produced by the [ObjectPropertyAssignmentStatement]
  /// labeled alternative in [file.parserName>.statement].
  /// [ctx] the parse tree
  void enterObjectPropertyAssignmentStatement(ObjectPropertyAssignmentStatementContext ctx);
  /// Exit a parse tree produced by the [ObjectPropertyAssignmentStatement]
  /// labeled alternative in [DartParser.statement].
  /// [ctx] the parse tree
  void exitObjectPropertyAssignmentStatement(ObjectPropertyAssignmentStatementContext ctx);

  /// Enter a parse tree produced by the [FunctionDefinitionStatement]
  /// labeled alternative in [file.parserName>.statement].
  /// [ctx] the parse tree
  void enterFunctionDefinitionStatement(FunctionDefinitionStatementContext ctx);
  /// Exit a parse tree produced by the [FunctionDefinitionStatement]
  /// labeled alternative in [DartParser.statement].
  /// [ctx] the parse tree
  void exitFunctionDefinitionStatement(FunctionDefinitionStatementContext ctx);

  /// Enter a parse tree produced by the [ClassDefinitionStatement]
  /// labeled alternative in [file.parserName>.statement].
  /// [ctx] the parse tree
  void enterClassDefinitionStatement(ClassDefinitionStatementContext ctx);
  /// Exit a parse tree produced by the [ClassDefinitionStatement]
  /// labeled alternative in [DartParser.statement].
  /// [ctx] the parse tree
  void exitClassDefinitionStatement(ClassDefinitionStatementContext ctx);

  /// Enter a parse tree produced by the [ExpressionDefinitionStatement]
  /// labeled alternative in [file.parserName>.statement].
  /// [ctx] the parse tree
  void enterExpressionDefinitionStatement(ExpressionDefinitionStatementContext ctx);
  /// Exit a parse tree produced by the [ExpressionDefinitionStatement]
  /// labeled alternative in [DartParser.statement].
  /// [ctx] the parse tree
  void exitExpressionDefinitionStatement(ExpressionDefinitionStatementContext ctx);

  /// Enter a parse tree produced by the [ReturnStatement]
  /// labeled alternative in [file.parserName>.statement].
  /// [ctx] the parse tree
  void enterReturnStatement(ReturnStatementContext ctx);
  /// Exit a parse tree produced by the [ReturnStatement]
  /// labeled alternative in [DartParser.statement].
  /// [ctx] the parse tree
  void exitReturnStatement(ReturnStatementContext ctx);

  /// Enter a parse tree produced by the [IfDefinitionStatement]
  /// labeled alternative in [file.parserName>.statement].
  /// [ctx] the parse tree
  void enterIfDefinitionStatement(IfDefinitionStatementContext ctx);
  /// Exit a parse tree produced by the [IfDefinitionStatement]
  /// labeled alternative in [DartParser.statement].
  /// [ctx] the parse tree
  void exitIfDefinitionStatement(IfDefinitionStatementContext ctx);

  /// Enter a parse tree produced by the [WhileDefinitionStatement]
  /// labeled alternative in [file.parserName>.statement].
  /// [ctx] the parse tree
  void enterWhileDefinitionStatement(WhileDefinitionStatementContext ctx);
  /// Exit a parse tree produced by the [WhileDefinitionStatement]
  /// labeled alternative in [DartParser.statement].
  /// [ctx] the parse tree
  void exitWhileDefinitionStatement(WhileDefinitionStatementContext ctx);

  /// Enter a parse tree produced by the [ForDefinitionStatement]
  /// labeled alternative in [file.parserName>.statement].
  /// [ctx] the parse tree
  void enterForDefinitionStatement(ForDefinitionStatementContext ctx);
  /// Exit a parse tree produced by the [ForDefinitionStatement]
  /// labeled alternative in [DartParser.statement].
  /// [ctx] the parse tree
  void exitForDefinitionStatement(ForDefinitionStatementContext ctx);

  /// Enter a parse tree produced by [DartParser.varDeclaration].
  /// [ctx] the parse tree
  void enterVarDeclaration(VarDeclarationContext ctx);
  /// Exit a parse tree produced by [DartParser.varDeclaration].
  /// [ctx] the parse tree
  void exitVarDeclaration(VarDeclarationContext ctx);

  /// Enter a parse tree produced by [DartParser.assignment].
  /// [ctx] the parse tree
  void enterAssignment(AssignmentContext ctx);
  /// Exit a parse tree produced by [DartParser.assignment].
  /// [ctx] the parse tree
  void exitAssignment(AssignmentContext ctx);

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

  /// Enter a parse tree produced by the [VoidType]
  /// labeled alternative in [file.parserName>.type].
  /// [ctx] the parse tree
  void enterVoidType(VoidTypeContext ctx);
  /// Exit a parse tree produced by the [VoidType]
  /// labeled alternative in [DartParser.type].
  /// [ctx] the parse tree
  void exitVoidType(VoidTypeContext ctx);

  /// Enter a parse tree produced by the [ListType]
  /// labeled alternative in [file.parserName>.type].
  /// [ctx] the parse tree
  void enterListType(ListTypeContext ctx);
  /// Exit a parse tree produced by the [ListType]
  /// labeled alternative in [DartParser.type].
  /// [ctx] the parse tree
  void exitListType(ListTypeContext ctx);

  /// Enter a parse tree produced by the [CustomType]
  /// labeled alternative in [file.parserName>.type].
  /// [ctx] the parse tree
  void enterCustomType(CustomTypeContext ctx);
  /// Exit a parse tree produced by the [CustomType]
  /// labeled alternative in [DartParser.type].
  /// [ctx] the parse tree
  void exitCustomType(CustomTypeContext ctx);

  /// Enter a parse tree produced by the [BinaryMathExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterBinaryMathExpression(BinaryMathExpressionContext ctx);
  /// Exit a parse tree produced by the [BinaryMathExpression]
  /// labeled alternative in [DartParser.expression].
  /// [ctx] the parse tree
  void exitBinaryMathExpression(BinaryMathExpressionContext ctx);

  /// Enter a parse tree produced by the [DecrementExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterDecrementExpression(DecrementExpressionContext ctx);
  /// Exit a parse tree produced by the [DecrementExpression]
  /// labeled alternative in [DartParser.expression].
  /// [ctx] the parse tree
  void exitDecrementExpression(DecrementExpressionContext ctx);

  /// Enter a parse tree produced by the [DoubleLiteralExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterDoubleLiteralExpression(DoubleLiteralExpressionContext ctx);
  /// Exit a parse tree produced by the [DoubleLiteralExpression]
  /// labeled alternative in [DartParser.expression].
  /// [ctx] the parse tree
  void exitDoubleLiteralExpression(DoubleLiteralExpressionContext ctx);

  /// Enter a parse tree produced by the [ObjectPropertyReferenceExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterObjectPropertyReferenceExpression(ObjectPropertyReferenceExpressionContext ctx);
  /// Exit a parse tree produced by the [ObjectPropertyReferenceExpression]
  /// labeled alternative in [DartParser.expression].
  /// [ctx] the parse tree
  void exitObjectPropertyReferenceExpression(ObjectPropertyReferenceExpressionContext ctx);

  /// Enter a parse tree produced by the [StringLiteralExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterStringLiteralExpression(StringLiteralExpressionContext ctx);
  /// Exit a parse tree produced by the [StringLiteralExpression]
  /// labeled alternative in [DartParser.expression].
  /// [ctx] the parse tree
  void exitStringLiteralExpression(StringLiteralExpressionContext ctx);

  /// Enter a parse tree produced by the [ListLiteralExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterListLiteralExpression(ListLiteralExpressionContext ctx);
  /// Exit a parse tree produced by the [ListLiteralExpression]
  /// labeled alternative in [DartParser.expression].
  /// [ctx] the parse tree
  void exitListLiteralExpression(ListLiteralExpressionContext ctx);

  /// Enter a parse tree produced by the [IntLiteralExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterIntLiteralExpression(IntLiteralExpressionContext ctx);
  /// Exit a parse tree produced by the [IntLiteralExpression]
  /// labeled alternative in [DartParser.expression].
  /// [ctx] the parse tree
  void exitIntLiteralExpression(IntLiteralExpressionContext ctx);

  /// Enter a parse tree produced by the [FunctionCallExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterFunctionCallExpression(FunctionCallExpressionContext ctx);
  /// Exit a parse tree produced by the [FunctionCallExpression]
  /// labeled alternative in [DartParser.expression].
  /// [ctx] the parse tree
  void exitFunctionCallExpression(FunctionCallExpressionContext ctx);

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

  /// Enter a parse tree produced by the [IncrementExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterIncrementExpression(IncrementExpressionContext ctx);
  /// Exit a parse tree produced by the [IncrementExpression]
  /// labeled alternative in [DartParser.expression].
  /// [ctx] the parse tree
  void exitIncrementExpression(IncrementExpressionContext ctx);

  /// Enter a parse tree produced by the [ObjectMethodCallExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterObjectMethodCallExpression(ObjectMethodCallExpressionContext ctx);
  /// Exit a parse tree produced by the [ObjectMethodCallExpression]
  /// labeled alternative in [DartParser.expression].
  /// [ctx] the parse tree
  void exitObjectMethodCallExpression(ObjectMethodCallExpressionContext ctx);

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

  /// Enter a parse tree produced by the [ClassVarDeclarationStatement]
  /// labeled alternative in [file.parserName>.classStatement].
  /// [ctx] the parse tree
  void enterClassVarDeclarationStatement(ClassVarDeclarationStatementContext ctx);
  /// Exit a parse tree produced by the [ClassVarDeclarationStatement]
  /// labeled alternative in [DartParser.classStatement].
  /// [ctx] the parse tree
  void exitClassVarDeclarationStatement(ClassVarDeclarationStatementContext ctx);

  /// Enter a parse tree produced by the [ClassImmutableVarDeclarationStatement]
  /// labeled alternative in [file.parserName>.classStatement].
  /// [ctx] the parse tree
  void enterClassImmutableVarDeclarationStatement(ClassImmutableVarDeclarationStatementContext ctx);
  /// Exit a parse tree produced by the [ClassImmutableVarDeclarationStatement]
  /// labeled alternative in [DartParser.classStatement].
  /// [ctx] the parse tree
  void exitClassImmutableVarDeclarationStatement(ClassImmutableVarDeclarationStatementContext ctx);

  /// Enter a parse tree produced by the [MainClassConstructorDeclarationStatement]
  /// labeled alternative in [file.parserName>.classStatement].
  /// [ctx] the parse tree
  void enterMainClassConstructorDeclarationStatement(MainClassConstructorDeclarationStatementContext ctx);
  /// Exit a parse tree produced by the [MainClassConstructorDeclarationStatement]
  /// labeled alternative in [DartParser.classStatement].
  /// [ctx] the parse tree
  void exitMainClassConstructorDeclarationStatement(MainClassConstructorDeclarationStatementContext ctx);

  /// Enter a parse tree produced by the [NamedClassConstructorDeclarationStatement]
  /// labeled alternative in [file.parserName>.classStatement].
  /// [ctx] the parse tree
  void enterNamedClassConstructorDeclarationStatement(NamedClassConstructorDeclarationStatementContext ctx);
  /// Exit a parse tree produced by the [NamedClassConstructorDeclarationStatement]
  /// labeled alternative in [DartParser.classStatement].
  /// [ctx] the parse tree
  void exitNamedClassConstructorDeclarationStatement(NamedClassConstructorDeclarationStatementContext ctx);

  /// Enter a parse tree produced by the [ClassMethodDeclarationStatement]
  /// labeled alternative in [file.parserName>.classStatement].
  /// [ctx] the parse tree
  void enterClassMethodDeclarationStatement(ClassMethodDeclarationStatementContext ctx);
  /// Exit a parse tree produced by the [ClassMethodDeclarationStatement]
  /// labeled alternative in [DartParser.classStatement].
  /// [ctx] the parse tree
  void exitClassMethodDeclarationStatement(ClassMethodDeclarationStatementContext ctx);

  /// Enter a parse tree produced by [DartParser.thisConstructorCall].
  /// [ctx] the parse tree
  void enterThisConstructorCall(ThisConstructorCallContext ctx);
  /// Exit a parse tree produced by [DartParser.thisConstructorCall].
  /// [ctx] the parse tree
  void exitThisConstructorCall(ThisConstructorCallContext ctx);

  /// Enter a parse tree produced by [DartParser.ifBlock].
  /// [ctx] the parse tree
  void enterIfBlock(IfBlockContext ctx);
  /// Exit a parse tree produced by [DartParser.ifBlock].
  /// [ctx] the parse tree
  void exitIfBlock(IfBlockContext ctx);

  /// Enter a parse tree produced by [DartParser.elseIfBlock].
  /// [ctx] the parse tree
  void enterElseIfBlock(ElseIfBlockContext ctx);
  /// Exit a parse tree produced by [DartParser.elseIfBlock].
  /// [ctx] the parse tree
  void exitElseIfBlock(ElseIfBlockContext ctx);

  /// Enter a parse tree produced by [DartParser.elseBlock].
  /// [ctx] the parse tree
  void enterElseBlock(ElseBlockContext ctx);
  /// Exit a parse tree produced by [DartParser.elseBlock].
  /// [ctx] the parse tree
  void exitElseBlock(ElseBlockContext ctx);

  /// Enter a parse tree produced by [DartParser.ifDefinition].
  /// [ctx] the parse tree
  void enterIfDefinition(IfDefinitionContext ctx);
  /// Exit a parse tree produced by [DartParser.ifDefinition].
  /// [ctx] the parse tree
  void exitIfDefinition(IfDefinitionContext ctx);

  /// Enter a parse tree produced by [DartParser.whileDefinition].
  /// [ctx] the parse tree
  void enterWhileDefinition(WhileDefinitionContext ctx);
  /// Exit a parse tree produced by [DartParser.whileDefinition].
  /// [ctx] the parse tree
  void exitWhileDefinition(WhileDefinitionContext ctx);

  /// Enter a parse tree produced by [DartParser.forInitOrIncrementStatement].
  /// [ctx] the parse tree
  void enterForInitOrIncrementStatement(ForInitOrIncrementStatementContext ctx);
  /// Exit a parse tree produced by [DartParser.forInitOrIncrementStatement].
  /// [ctx] the parse tree
  void exitForInitOrIncrementStatement(ForInitOrIncrementStatementContext ctx);

  /// Enter a parse tree produced by [DartParser.itemDefinition].
  /// [ctx] the parse tree
  void enterItemDefinition(ItemDefinitionContext ctx);
  /// Exit a parse tree produced by [DartParser.itemDefinition].
  /// [ctx] the parse tree
  void exitItemDefinition(ItemDefinitionContext ctx);

  /// Enter a parse tree produced by the [StandardForCondition]
  /// labeled alternative in [file.parserName>.forCondition].
  /// [ctx] the parse tree
  void enterStandardForCondition(StandardForConditionContext ctx);
  /// Exit a parse tree produced by the [StandardForCondition]
  /// labeled alternative in [DartParser.forCondition].
  /// [ctx] the parse tree
  void exitStandardForCondition(StandardForConditionContext ctx);

  /// Enter a parse tree produced by the [ForEachCondition]
  /// labeled alternative in [file.parserName>.forCondition].
  /// [ctx] the parse tree
  void enterForEachCondition(ForEachConditionContext ctx);
  /// Exit a parse tree produced by the [ForEachCondition]
  /// labeled alternative in [DartParser.forCondition].
  /// [ctx] the parse tree
  void exitForEachCondition(ForEachConditionContext ctx);

  /// Enter a parse tree produced by [DartParser.forDefinition].
  /// [ctx] the parse tree
  void enterForDefinition(ForDefinitionContext ctx);
  /// Exit a parse tree produced by [DartParser.forDefinition].
  /// [ctx] the parse tree
  void exitForDefinition(ForDefinitionContext ctx);
}