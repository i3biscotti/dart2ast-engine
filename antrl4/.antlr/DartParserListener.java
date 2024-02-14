// Generated from d://Progetti personali//dart2kotlin//dart2ast_engine//antrl4//DartParser.g4 by ANTLR 4.13.1
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link DartParser}.
 */
public interface DartParserListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link DartParser#dartFile}.
	 * @param ctx the parse tree
	 */
	void enterDartFile(DartParser.DartFileContext ctx);
	/**
	 * Exit a parse tree produced by {@link DartParser#dartFile}.
	 * @param ctx the parse tree
	 */
	void exitDartFile(DartParser.DartFileContext ctx);
	/**
	 * Enter a parse tree produced by the {@code VarDeclarationStatement}
	 * labeled alternative in {@link DartParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterVarDeclarationStatement(DartParser.VarDeclarationStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code VarDeclarationStatement}
	 * labeled alternative in {@link DartParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitVarDeclarationStatement(DartParser.VarDeclarationStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code FinalDeclarationStatement}
	 * labeled alternative in {@link DartParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterFinalDeclarationStatement(DartParser.FinalDeclarationStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code FinalDeclarationStatement}
	 * labeled alternative in {@link DartParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitFinalDeclarationStatement(DartParser.FinalDeclarationStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ConstDeclarationStatement}
	 * labeled alternative in {@link DartParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterConstDeclarationStatement(DartParser.ConstDeclarationStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ConstDeclarationStatement}
	 * labeled alternative in {@link DartParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitConstDeclarationStatement(DartParser.ConstDeclarationStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code AssignmentStatement}
	 * labeled alternative in {@link DartParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterAssignmentStatement(DartParser.AssignmentStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code AssignmentStatement}
	 * labeled alternative in {@link DartParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitAssignmentStatement(DartParser.AssignmentStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ObjectPropertyAssignmentStatement}
	 * labeled alternative in {@link DartParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterObjectPropertyAssignmentStatement(DartParser.ObjectPropertyAssignmentStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ObjectPropertyAssignmentStatement}
	 * labeled alternative in {@link DartParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitObjectPropertyAssignmentStatement(DartParser.ObjectPropertyAssignmentStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code FunctionDefinitionStatement}
	 * labeled alternative in {@link DartParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterFunctionDefinitionStatement(DartParser.FunctionDefinitionStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code FunctionDefinitionStatement}
	 * labeled alternative in {@link DartParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitFunctionDefinitionStatement(DartParser.FunctionDefinitionStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ClassDefinitionStatement}
	 * labeled alternative in {@link DartParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterClassDefinitionStatement(DartParser.ClassDefinitionStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ClassDefinitionStatement}
	 * labeled alternative in {@link DartParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitClassDefinitionStatement(DartParser.ClassDefinitionStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExpressionDefinitionStatement}
	 * labeled alternative in {@link DartParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterExpressionDefinitionStatement(DartParser.ExpressionDefinitionStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExpressionDefinitionStatement}
	 * labeled alternative in {@link DartParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitExpressionDefinitionStatement(DartParser.ExpressionDefinitionStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ReturnStatement}
	 * labeled alternative in {@link DartParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterReturnStatement(DartParser.ReturnStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ReturnStatement}
	 * labeled alternative in {@link DartParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitReturnStatement(DartParser.ReturnStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code IfDefinitionStatement}
	 * labeled alternative in {@link DartParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterIfDefinitionStatement(DartParser.IfDefinitionStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code IfDefinitionStatement}
	 * labeled alternative in {@link DartParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitIfDefinitionStatement(DartParser.IfDefinitionStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code WhileDefinitionStatement}
	 * labeled alternative in {@link DartParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterWhileDefinitionStatement(DartParser.WhileDefinitionStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code WhileDefinitionStatement}
	 * labeled alternative in {@link DartParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitWhileDefinitionStatement(DartParser.WhileDefinitionStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ForDefinitionStatement}
	 * labeled alternative in {@link DartParser#statement}.
	 * @param ctx the parse tree
	 */
	void enterForDefinitionStatement(DartParser.ForDefinitionStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ForDefinitionStatement}
	 * labeled alternative in {@link DartParser#statement}.
	 * @param ctx the parse tree
	 */
	void exitForDefinitionStatement(DartParser.ForDefinitionStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link DartParser#varDeclaration}.
	 * @param ctx the parse tree
	 */
	void enterVarDeclaration(DartParser.VarDeclarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link DartParser#varDeclaration}.
	 * @param ctx the parse tree
	 */
	void exitVarDeclaration(DartParser.VarDeclarationContext ctx);
	/**
	 * Enter a parse tree produced by {@link DartParser#assignment}.
	 * @param ctx the parse tree
	 */
	void enterAssignment(DartParser.AssignmentContext ctx);
	/**
	 * Exit a parse tree produced by {@link DartParser#assignment}.
	 * @param ctx the parse tree
	 */
	void exitAssignment(DartParser.AssignmentContext ctx);
	/**
	 * Enter a parse tree produced by the {@code IntType}
	 * labeled alternative in {@link DartParser#type}.
	 * @param ctx the parse tree
	 */
	void enterIntType(DartParser.IntTypeContext ctx);
	/**
	 * Exit a parse tree produced by the {@code IntType}
	 * labeled alternative in {@link DartParser#type}.
	 * @param ctx the parse tree
	 */
	void exitIntType(DartParser.IntTypeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code DoubleType}
	 * labeled alternative in {@link DartParser#type}.
	 * @param ctx the parse tree
	 */
	void enterDoubleType(DartParser.DoubleTypeContext ctx);
	/**
	 * Exit a parse tree produced by the {@code DoubleType}
	 * labeled alternative in {@link DartParser#type}.
	 * @param ctx the parse tree
	 */
	void exitDoubleType(DartParser.DoubleTypeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code BoolType}
	 * labeled alternative in {@link DartParser#type}.
	 * @param ctx the parse tree
	 */
	void enterBoolType(DartParser.BoolTypeContext ctx);
	/**
	 * Exit a parse tree produced by the {@code BoolType}
	 * labeled alternative in {@link DartParser#type}.
	 * @param ctx the parse tree
	 */
	void exitBoolType(DartParser.BoolTypeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code StringType}
	 * labeled alternative in {@link DartParser#type}.
	 * @param ctx the parse tree
	 */
	void enterStringType(DartParser.StringTypeContext ctx);
	/**
	 * Exit a parse tree produced by the {@code StringType}
	 * labeled alternative in {@link DartParser#type}.
	 * @param ctx the parse tree
	 */
	void exitStringType(DartParser.StringTypeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code VoidType}
	 * labeled alternative in {@link DartParser#type}.
	 * @param ctx the parse tree
	 */
	void enterVoidType(DartParser.VoidTypeContext ctx);
	/**
	 * Exit a parse tree produced by the {@code VoidType}
	 * labeled alternative in {@link DartParser#type}.
	 * @param ctx the parse tree
	 */
	void exitVoidType(DartParser.VoidTypeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ListType}
	 * labeled alternative in {@link DartParser#type}.
	 * @param ctx the parse tree
	 */
	void enterListType(DartParser.ListTypeContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ListType}
	 * labeled alternative in {@link DartParser#type}.
	 * @param ctx the parse tree
	 */
	void exitListType(DartParser.ListTypeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code CustomType}
	 * labeled alternative in {@link DartParser#type}.
	 * @param ctx the parse tree
	 */
	void enterCustomType(DartParser.CustomTypeContext ctx);
	/**
	 * Exit a parse tree produced by the {@code CustomType}
	 * labeled alternative in {@link DartParser#type}.
	 * @param ctx the parse tree
	 */
	void exitCustomType(DartParser.CustomTypeContext ctx);
	/**
	 * Enter a parse tree produced by the {@code BinaryMathExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterBinaryMathExpression(DartParser.BinaryMathExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code BinaryMathExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitBinaryMathExpression(DartParser.BinaryMathExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code PostIncrementExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterPostIncrementExpression(DartParser.PostIncrementExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code PostIncrementExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitPostIncrementExpression(DartParser.PostIncrementExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code DoubleLiteralExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterDoubleLiteralExpression(DartParser.DoubleLiteralExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code DoubleLiteralExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitDoubleLiteralExpression(DartParser.DoubleLiteralExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ObjectPropertyReferenceExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterObjectPropertyReferenceExpression(DartParser.ObjectPropertyReferenceExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ObjectPropertyReferenceExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitObjectPropertyReferenceExpression(DartParser.ObjectPropertyReferenceExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code PreDecrementExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterPreDecrementExpression(DartParser.PreDecrementExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code PreDecrementExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitPreDecrementExpression(DartParser.PreDecrementExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code PreIncrementExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterPreIncrementExpression(DartParser.PreIncrementExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code PreIncrementExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitPreIncrementExpression(DartParser.PreIncrementExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code StringLiteralExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterStringLiteralExpression(DartParser.StringLiteralExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code StringLiteralExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitStringLiteralExpression(DartParser.StringLiteralExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ListLiteralExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterListLiteralExpression(DartParser.ListLiteralExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ListLiteralExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitListLiteralExpression(DartParser.ListLiteralExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code IntLiteralExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterIntLiteralExpression(DartParser.IntLiteralExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code IntLiteralExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitIntLiteralExpression(DartParser.IntLiteralExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code FunctionCallExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterFunctionCallExpression(DartParser.FunctionCallExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code FunctionCallExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitFunctionCallExpression(DartParser.FunctionCallExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code VarReferenceExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterVarReferenceExpression(DartParser.VarReferenceExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code VarReferenceExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitVarReferenceExpression(DartParser.VarReferenceExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code BinaryLogicExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterBinaryLogicExpression(DartParser.BinaryLogicExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code BinaryLogicExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitBinaryLogicExpression(DartParser.BinaryLogicExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code UnaryLogicNegationExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterUnaryLogicNegationExpression(DartParser.UnaryLogicNegationExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code UnaryLogicNegationExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitUnaryLogicNegationExpression(DartParser.UnaryLogicNegationExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code UnaryMathExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterUnaryMathExpression(DartParser.UnaryMathExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code UnaryMathExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitUnaryMathExpression(DartParser.UnaryMathExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ObjectMethodCallExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterObjectMethodCallExpression(DartParser.ObjectMethodCallExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ObjectMethodCallExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitObjectMethodCallExpression(DartParser.ObjectMethodCallExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code BoolLiteralExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterBoolLiteralExpression(DartParser.BoolLiteralExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code BoolLiteralExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitBoolLiteralExpression(DartParser.BoolLiteralExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code PostDecrementExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterPostDecrementExpression(DartParser.PostDecrementExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code PostDecrementExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitPostDecrementExpression(DartParser.PostDecrementExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ParenthesysExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterParenthesysExpression(DartParser.ParenthesysExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ParenthesysExpression}
	 * labeled alternative in {@link DartParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitParenthesysExpression(DartParser.ParenthesysExpressionContext ctx);
	/**
	 * Enter a parse tree produced by {@link DartParser#functionDefinition}.
	 * @param ctx the parse tree
	 */
	void enterFunctionDefinition(DartParser.FunctionDefinitionContext ctx);
	/**
	 * Exit a parse tree produced by {@link DartParser#functionDefinition}.
	 * @param ctx the parse tree
	 */
	void exitFunctionDefinition(DartParser.FunctionDefinitionContext ctx);
	/**
	 * Enter a parse tree produced by {@link DartParser#parameter}.
	 * @param ctx the parse tree
	 */
	void enterParameter(DartParser.ParameterContext ctx);
	/**
	 * Exit a parse tree produced by {@link DartParser#parameter}.
	 * @param ctx the parse tree
	 */
	void exitParameter(DartParser.ParameterContext ctx);
	/**
	 * Enter a parse tree produced by {@link DartParser#block}.
	 * @param ctx the parse tree
	 */
	void enterBlock(DartParser.BlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link DartParser#block}.
	 * @param ctx the parse tree
	 */
	void exitBlock(DartParser.BlockContext ctx);
	/**
	 * Enter a parse tree produced by {@link DartParser#classDefinition}.
	 * @param ctx the parse tree
	 */
	void enterClassDefinition(DartParser.ClassDefinitionContext ctx);
	/**
	 * Exit a parse tree produced by {@link DartParser#classDefinition}.
	 * @param ctx the parse tree
	 */
	void exitClassDefinition(DartParser.ClassDefinitionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ClassVarDeclarationStatement}
	 * labeled alternative in {@link DartParser#classStatement}.
	 * @param ctx the parse tree
	 */
	void enterClassVarDeclarationStatement(DartParser.ClassVarDeclarationStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ClassVarDeclarationStatement}
	 * labeled alternative in {@link DartParser#classStatement}.
	 * @param ctx the parse tree
	 */
	void exitClassVarDeclarationStatement(DartParser.ClassVarDeclarationStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ClassImmutableVarDeclarationStatement}
	 * labeled alternative in {@link DartParser#classStatement}.
	 * @param ctx the parse tree
	 */
	void enterClassImmutableVarDeclarationStatement(DartParser.ClassImmutableVarDeclarationStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ClassImmutableVarDeclarationStatement}
	 * labeled alternative in {@link DartParser#classStatement}.
	 * @param ctx the parse tree
	 */
	void exitClassImmutableVarDeclarationStatement(DartParser.ClassImmutableVarDeclarationStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code MainClassConstructorDeclarationStatement}
	 * labeled alternative in {@link DartParser#classStatement}.
	 * @param ctx the parse tree
	 */
	void enterMainClassConstructorDeclarationStatement(DartParser.MainClassConstructorDeclarationStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code MainClassConstructorDeclarationStatement}
	 * labeled alternative in {@link DartParser#classStatement}.
	 * @param ctx the parse tree
	 */
	void exitMainClassConstructorDeclarationStatement(DartParser.MainClassConstructorDeclarationStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code NamedClassConstructorDeclarationStatement}
	 * labeled alternative in {@link DartParser#classStatement}.
	 * @param ctx the parse tree
	 */
	void enterNamedClassConstructorDeclarationStatement(DartParser.NamedClassConstructorDeclarationStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code NamedClassConstructorDeclarationStatement}
	 * labeled alternative in {@link DartParser#classStatement}.
	 * @param ctx the parse tree
	 */
	void exitNamedClassConstructorDeclarationStatement(DartParser.NamedClassConstructorDeclarationStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ClassMethodDeclarationStatement}
	 * labeled alternative in {@link DartParser#classStatement}.
	 * @param ctx the parse tree
	 */
	void enterClassMethodDeclarationStatement(DartParser.ClassMethodDeclarationStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ClassMethodDeclarationStatement}
	 * labeled alternative in {@link DartParser#classStatement}.
	 * @param ctx the parse tree
	 */
	void exitClassMethodDeclarationStatement(DartParser.ClassMethodDeclarationStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link DartParser#thisConstructorCall}.
	 * @param ctx the parse tree
	 */
	void enterThisConstructorCall(DartParser.ThisConstructorCallContext ctx);
	/**
	 * Exit a parse tree produced by {@link DartParser#thisConstructorCall}.
	 * @param ctx the parse tree
	 */
	void exitThisConstructorCall(DartParser.ThisConstructorCallContext ctx);
	/**
	 * Enter a parse tree produced by {@link DartParser#ifBlock}.
	 * @param ctx the parse tree
	 */
	void enterIfBlock(DartParser.IfBlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link DartParser#ifBlock}.
	 * @param ctx the parse tree
	 */
	void exitIfBlock(DartParser.IfBlockContext ctx);
	/**
	 * Enter a parse tree produced by {@link DartParser#elseIfBlock}.
	 * @param ctx the parse tree
	 */
	void enterElseIfBlock(DartParser.ElseIfBlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link DartParser#elseIfBlock}.
	 * @param ctx the parse tree
	 */
	void exitElseIfBlock(DartParser.ElseIfBlockContext ctx);
	/**
	 * Enter a parse tree produced by {@link DartParser#elseBlock}.
	 * @param ctx the parse tree
	 */
	void enterElseBlock(DartParser.ElseBlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link DartParser#elseBlock}.
	 * @param ctx the parse tree
	 */
	void exitElseBlock(DartParser.ElseBlockContext ctx);
	/**
	 * Enter a parse tree produced by {@link DartParser#ifDefinition}.
	 * @param ctx the parse tree
	 */
	void enterIfDefinition(DartParser.IfDefinitionContext ctx);
	/**
	 * Exit a parse tree produced by {@link DartParser#ifDefinition}.
	 * @param ctx the parse tree
	 */
	void exitIfDefinition(DartParser.IfDefinitionContext ctx);
	/**
	 * Enter a parse tree produced by {@link DartParser#whileDefinition}.
	 * @param ctx the parse tree
	 */
	void enterWhileDefinition(DartParser.WhileDefinitionContext ctx);
	/**
	 * Exit a parse tree produced by {@link DartParser#whileDefinition}.
	 * @param ctx the parse tree
	 */
	void exitWhileDefinition(DartParser.WhileDefinitionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code VarDeclarationForStatement}
	 * labeled alternative in {@link DartParser#forInitOrIncrementStatement}.
	 * @param ctx the parse tree
	 */
	void enterVarDeclarationForStatement(DartParser.VarDeclarationForStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code VarDeclarationForStatement}
	 * labeled alternative in {@link DartParser#forInitOrIncrementStatement}.
	 * @param ctx the parse tree
	 */
	void exitVarDeclarationForStatement(DartParser.VarDeclarationForStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code AssignmentForStatement}
	 * labeled alternative in {@link DartParser#forInitOrIncrementStatement}.
	 * @param ctx the parse tree
	 */
	void enterAssignmentForStatement(DartParser.AssignmentForStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code AssignmentForStatement}
	 * labeled alternative in {@link DartParser#forInitOrIncrementStatement}.
	 * @param ctx the parse tree
	 */
	void exitAssignmentForStatement(DartParser.AssignmentForStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExpressionForStatement}
	 * labeled alternative in {@link DartParser#forInitOrIncrementStatement}.
	 * @param ctx the parse tree
	 */
	void enterExpressionForStatement(DartParser.ExpressionForStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExpressionForStatement}
	 * labeled alternative in {@link DartParser#forInitOrIncrementStatement}.
	 * @param ctx the parse tree
	 */
	void exitExpressionForStatement(DartParser.ExpressionForStatementContext ctx);
	/**
	 * Enter a parse tree produced by {@link DartParser#itemDefinition}.
	 * @param ctx the parse tree
	 */
	void enterItemDefinition(DartParser.ItemDefinitionContext ctx);
	/**
	 * Exit a parse tree produced by {@link DartParser#itemDefinition}.
	 * @param ctx the parse tree
	 */
	void exitItemDefinition(DartParser.ItemDefinitionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code StandardForCondition}
	 * labeled alternative in {@link DartParser#forCondition}.
	 * @param ctx the parse tree
	 */
	void enterStandardForCondition(DartParser.StandardForConditionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code StandardForCondition}
	 * labeled alternative in {@link DartParser#forCondition}.
	 * @param ctx the parse tree
	 */
	void exitStandardForCondition(DartParser.StandardForConditionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ForEachCondition}
	 * labeled alternative in {@link DartParser#forCondition}.
	 * @param ctx the parse tree
	 */
	void enterForEachCondition(DartParser.ForEachConditionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ForEachCondition}
	 * labeled alternative in {@link DartParser#forCondition}.
	 * @param ctx the parse tree
	 */
	void exitForEachCondition(DartParser.ForEachConditionContext ctx);
	/**
	 * Enter a parse tree produced by {@link DartParser#forDefinition}.
	 * @param ctx the parse tree
	 */
	void enterForDefinition(DartParser.ForDefinitionContext ctx);
	/**
	 * Exit a parse tree produced by {@link DartParser#forDefinition}.
	 * @param ctx the parse tree
	 */
	void exitForDefinition(DartParser.ForDefinitionContext ctx);
}