// Generated from d://Progetti personali//dart2kotlin//dart2ast_engine//antrl4//DartParser.g4 by ANTLR 4.13.1
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast", "CheckReturnValue"})
public class DartParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.13.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		WS=1, VAR=2, FINAL=3, CONST=4, CLASS=5, THIS=6, INT=7, DOUBLE=8, STRING=9, 
		BOOL=10, VOID=11, LIST=12, ASSIGN=13, SEMICOLON=14, INTLIT=15, DOUBLELIT=16, 
		BOOLLIT=17, STRINGLIT=18, PLUS=19, MINUS=20, DIVISION=21, TIMES=22, MODULE=23, 
		GREATER_EQUAL_THAN=24, LOWER_EQUAL_THAN=25, GREATER_THAN=26, LOWER_THAN=27, 
		EQUAL=28, AND=29, OR=30, NOT=31, PAREN_OPEN=32, PAREN_CLOSE=33, SQUARE_OPEN=34, 
		SQUARE_CLOSE=35, GRAPH_OPEN=36, GRAPH_CLOSE=37, COMMA=38, DOT=39, COLONS=40, 
		RETURN=41, EXTENDS=42, IF=43, ELSE=44, WHILE=45, FOR=46, IN=47, ID=48, 
		UnterminatedStringLiteral=49;
	public static final int
		RULE_dartFile = 0, RULE_statement = 1, RULE_varDeclaration = 2, RULE_assignment = 3, 
		RULE_type = 4, RULE_expression = 5, RULE_functionDefinition = 6, RULE_parameter = 7, 
		RULE_block = 8, RULE_classDefinition = 9, RULE_classStatement = 10, RULE_thisConstructorCall = 11, 
		RULE_ifBlock = 12, RULE_elseIfBlock = 13, RULE_elseBlock = 14, RULE_ifDefinition = 15, 
		RULE_whileDefinition = 16, RULE_forInitOrIncrementStatement = 17, RULE_itemDefinition = 18, 
		RULE_forCondition = 19, RULE_forDefinition = 20;
	private static String[] makeRuleNames() {
		return new String[] {
			"dartFile", "statement", "varDeclaration", "assignment", "type", "expression", 
			"functionDefinition", "parameter", "block", "classDefinition", "classStatement", 
			"thisConstructorCall", "ifBlock", "elseIfBlock", "elseBlock", "ifDefinition", 
			"whileDefinition", "forInitOrIncrementStatement", "itemDefinition", "forCondition", 
			"forDefinition"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, null, "'var'", "'final'", "'const'", "'class'", "'this'", "'int'", 
			"'double'", "'String'", "'bool'", "'void'", "'List'", "'='", "';'", null, 
			null, null, null, "'+'", "'-'", "'/'", "'*'", "'%'", "'>='", "'<='", 
			"'>'", "'<'", "'=='", "'&&'", "'||'", "'!'", "'('", "')'", "'['", "']'", 
			"'{'", "'}'", "','", "'.'", "':'", "'return'", "'extends'", "'if'", "'else'", 
			"'while'", "'for'", "'in'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, "WS", "VAR", "FINAL", "CONST", "CLASS", "THIS", "INT", "DOUBLE", 
			"STRING", "BOOL", "VOID", "LIST", "ASSIGN", "SEMICOLON", "INTLIT", "DOUBLELIT", 
			"BOOLLIT", "STRINGLIT", "PLUS", "MINUS", "DIVISION", "TIMES", "MODULE", 
			"GREATER_EQUAL_THAN", "LOWER_EQUAL_THAN", "GREATER_THAN", "LOWER_THAN", 
			"EQUAL", "AND", "OR", "NOT", "PAREN_OPEN", "PAREN_CLOSE", "SQUARE_OPEN", 
			"SQUARE_CLOSE", "GRAPH_OPEN", "GRAPH_CLOSE", "COMMA", "DOT", "COLONS", 
			"RETURN", "EXTENDS", "IF", "ELSE", "WHILE", "FOR", "IN", "ID", "UnterminatedStringLiteral"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "DartParser.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public DartParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@SuppressWarnings("CheckReturnValue")
	public static class DartFileContext extends ParserRuleContext {
		public TerminalNode EOF() { return getToken(DartParser.EOF, 0); }
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public DartFileContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_dartFile; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterDartFile(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitDartFile(this);
		}
	}

	public final DartFileContext dartFile() throws RecognitionException {
		DartFileContext _localctx = new DartFileContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_dartFile);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(43); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(42);
				statement();
				}
				}
				setState(45); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( (((_la) & ~0x3f) == 0 && ((1L << _la) & 398046833647548L) != 0) );
			setState(47);
			match(EOF);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class StatementContext extends ParserRuleContext {
		public StatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_statement; }
	 
		public StatementContext() { }
		public void copyFrom(StatementContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class VarDeclarationStatementContext extends StatementContext {
		public VarDeclarationContext varDeclaration() {
			return getRuleContext(VarDeclarationContext.class,0);
		}
		public TerminalNode SEMICOLON() { return getToken(DartParser.SEMICOLON, 0); }
		public VarDeclarationStatementContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterVarDeclarationStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitVarDeclarationStatement(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class FunctionDefinitionStatementContext extends StatementContext {
		public FunctionDefinitionContext functionDefinition() {
			return getRuleContext(FunctionDefinitionContext.class,0);
		}
		public FunctionDefinitionStatementContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterFunctionDefinitionStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitFunctionDefinitionStatement(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ObjectPropertyAssignmentStatementContext extends StatementContext {
		public Token objectName;
		public Token propertyName;
		public TerminalNode DOT() { return getToken(DartParser.DOT, 0); }
		public TerminalNode ASSIGN() { return getToken(DartParser.ASSIGN, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode SEMICOLON() { return getToken(DartParser.SEMICOLON, 0); }
		public List<TerminalNode> ID() { return getTokens(DartParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(DartParser.ID, i);
		}
		public ObjectPropertyAssignmentStatementContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterObjectPropertyAssignmentStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitObjectPropertyAssignmentStatement(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ConstDeclarationStatementContext extends StatementContext {
		public TerminalNode CONST() { return getToken(DartParser.CONST, 0); }
		public TerminalNode ID() { return getToken(DartParser.ID, 0); }
		public TerminalNode ASSIGN() { return getToken(DartParser.ASSIGN, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode SEMICOLON() { return getToken(DartParser.SEMICOLON, 0); }
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public ConstDeclarationStatementContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterConstDeclarationStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitConstDeclarationStatement(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class AssignmentStatementContext extends StatementContext {
		public AssignmentContext assignment() {
			return getRuleContext(AssignmentContext.class,0);
		}
		public TerminalNode SEMICOLON() { return getToken(DartParser.SEMICOLON, 0); }
		public AssignmentStatementContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterAssignmentStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitAssignmentStatement(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExpressionDefinitionStatementContext extends StatementContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode SEMICOLON() { return getToken(DartParser.SEMICOLON, 0); }
		public ExpressionDefinitionStatementContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterExpressionDefinitionStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitExpressionDefinitionStatement(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class IfDefinitionStatementContext extends StatementContext {
		public IfDefinitionContext ifDefinition() {
			return getRuleContext(IfDefinitionContext.class,0);
		}
		public IfDefinitionStatementContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterIfDefinitionStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitIfDefinitionStatement(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ForDefinitionStatementContext extends StatementContext {
		public ForDefinitionContext forDefinition() {
			return getRuleContext(ForDefinitionContext.class,0);
		}
		public ForDefinitionStatementContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterForDefinitionStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitForDefinitionStatement(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ReturnStatementContext extends StatementContext {
		public TerminalNode RETURN() { return getToken(DartParser.RETURN, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode SEMICOLON() { return getToken(DartParser.SEMICOLON, 0); }
		public ReturnStatementContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterReturnStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitReturnStatement(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class WhileDefinitionStatementContext extends StatementContext {
		public WhileDefinitionContext whileDefinition() {
			return getRuleContext(WhileDefinitionContext.class,0);
		}
		public WhileDefinitionStatementContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterWhileDefinitionStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitWhileDefinitionStatement(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class FinalDeclarationStatementContext extends StatementContext {
		public TerminalNode FINAL() { return getToken(DartParser.FINAL, 0); }
		public TerminalNode ID() { return getToken(DartParser.ID, 0); }
		public TerminalNode ASSIGN() { return getToken(DartParser.ASSIGN, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode SEMICOLON() { return getToken(DartParser.SEMICOLON, 0); }
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public FinalDeclarationStatementContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterFinalDeclarationStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitFinalDeclarationStatement(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ClassDefinitionStatementContext extends StatementContext {
		public ClassDefinitionContext classDefinition() {
			return getRuleContext(ClassDefinitionContext.class,0);
		}
		public ClassDefinitionStatementContext(StatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterClassDefinitionStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitClassDefinitionStatement(this);
		}
	}

	public final StatementContext statement() throws RecognitionException {
		StatementContext _localctx = new StatementContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_statement);
		try {
			setState(92);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,3,_ctx) ) {
			case 1:
				_localctx = new VarDeclarationStatementContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(49);
				varDeclaration();
				setState(50);
				match(SEMICOLON);
				}
				break;
			case 2:
				_localctx = new FinalDeclarationStatementContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(52);
				match(FINAL);
				setState(54);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,1,_ctx) ) {
				case 1:
					{
					setState(53);
					type();
					}
					break;
				}
				setState(56);
				match(ID);
				setState(57);
				match(ASSIGN);
				setState(58);
				expression(0);
				setState(59);
				match(SEMICOLON);
				}
				break;
			case 3:
				_localctx = new ConstDeclarationStatementContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(61);
				match(CONST);
				setState(63);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,2,_ctx) ) {
				case 1:
					{
					setState(62);
					type();
					}
					break;
				}
				setState(65);
				match(ID);
				setState(66);
				match(ASSIGN);
				setState(67);
				expression(0);
				setState(68);
				match(SEMICOLON);
				}
				break;
			case 4:
				_localctx = new AssignmentStatementContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(70);
				assignment();
				setState(71);
				match(SEMICOLON);
				}
				break;
			case 5:
				_localctx = new ObjectPropertyAssignmentStatementContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(73);
				((ObjectPropertyAssignmentStatementContext)_localctx).objectName = match(ID);
				setState(74);
				match(DOT);
				setState(75);
				((ObjectPropertyAssignmentStatementContext)_localctx).propertyName = match(ID);
				setState(76);
				match(ASSIGN);
				setState(77);
				expression(0);
				setState(78);
				match(SEMICOLON);
				}
				break;
			case 6:
				_localctx = new FunctionDefinitionStatementContext(_localctx);
				enterOuterAlt(_localctx, 6);
				{
				setState(80);
				functionDefinition();
				}
				break;
			case 7:
				_localctx = new ClassDefinitionStatementContext(_localctx);
				enterOuterAlt(_localctx, 7);
				{
				setState(81);
				classDefinition();
				}
				break;
			case 8:
				_localctx = new ExpressionDefinitionStatementContext(_localctx);
				enterOuterAlt(_localctx, 8);
				{
				setState(82);
				expression(0);
				setState(83);
				match(SEMICOLON);
				}
				break;
			case 9:
				_localctx = new ReturnStatementContext(_localctx);
				enterOuterAlt(_localctx, 9);
				{
				setState(85);
				match(RETURN);
				setState(86);
				expression(0);
				setState(87);
				match(SEMICOLON);
				}
				break;
			case 10:
				_localctx = new IfDefinitionStatementContext(_localctx);
				enterOuterAlt(_localctx, 10);
				{
				setState(89);
				ifDefinition();
				}
				break;
			case 11:
				_localctx = new WhileDefinitionStatementContext(_localctx);
				enterOuterAlt(_localctx, 11);
				{
				setState(90);
				whileDefinition();
				}
				break;
			case 12:
				_localctx = new ForDefinitionStatementContext(_localctx);
				enterOuterAlt(_localctx, 12);
				{
				setState(91);
				forDefinition();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class VarDeclarationContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(DartParser.ID, 0); }
		public TerminalNode ASSIGN() { return getToken(DartParser.ASSIGN, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode VAR() { return getToken(DartParser.VAR, 0); }
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public VarDeclarationContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_varDeclaration; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterVarDeclaration(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitVarDeclaration(this);
		}
	}

	public final VarDeclarationContext varDeclaration() throws RecognitionException {
		VarDeclarationContext _localctx = new VarDeclarationContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_varDeclaration);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(98);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,4,_ctx) ) {
			case 1:
				{
				setState(94);
				match(VAR);
				}
				break;
			case 2:
				{
				setState(95);
				match(VAR);
				setState(96);
				type();
				}
				break;
			case 3:
				{
				setState(97);
				type();
				}
				break;
			}
			setState(100);
			match(ID);
			setState(101);
			match(ASSIGN);
			setState(102);
			expression(0);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class AssignmentContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(DartParser.ID, 0); }
		public TerminalNode ASSIGN() { return getToken(DartParser.ASSIGN, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public AssignmentContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_assignment; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterAssignment(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitAssignment(this);
		}
	}

	public final AssignmentContext assignment() throws RecognitionException {
		AssignmentContext _localctx = new AssignmentContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_assignment);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(104);
			match(ID);
			setState(105);
			match(ASSIGN);
			setState(106);
			expression(0);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class TypeContext extends ParserRuleContext {
		public TypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_type; }
	 
		public TypeContext() { }
		public void copyFrom(TypeContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class VoidTypeContext extends TypeContext {
		public TerminalNode VOID() { return getToken(DartParser.VOID, 0); }
		public VoidTypeContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterVoidType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitVoidType(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class CustomTypeContext extends TypeContext {
		public Token name;
		public TerminalNode ID() { return getToken(DartParser.ID, 0); }
		public CustomTypeContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterCustomType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitCustomType(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class BoolTypeContext extends TypeContext {
		public TerminalNode BOOL() { return getToken(DartParser.BOOL, 0); }
		public BoolTypeContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterBoolType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitBoolType(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StringTypeContext extends TypeContext {
		public TerminalNode STRING() { return getToken(DartParser.STRING, 0); }
		public StringTypeContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterStringType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitStringType(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class DoubleTypeContext extends TypeContext {
		public TerminalNode DOUBLE() { return getToken(DartParser.DOUBLE, 0); }
		public DoubleTypeContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterDoubleType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitDoubleType(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ListTypeContext extends TypeContext {
		public TerminalNode LIST() { return getToken(DartParser.LIST, 0); }
		public ListTypeContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterListType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitListType(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class IntTypeContext extends TypeContext {
		public TerminalNode INT() { return getToken(DartParser.INT, 0); }
		public IntTypeContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterIntType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitIntType(this);
		}
	}

	public final TypeContext type() throws RecognitionException {
		TypeContext _localctx = new TypeContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_type);
		try {
			setState(115);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case INT:
				_localctx = new IntTypeContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(108);
				match(INT);
				}
				break;
			case DOUBLE:
				_localctx = new DoubleTypeContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(109);
				match(DOUBLE);
				}
				break;
			case BOOL:
				_localctx = new BoolTypeContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(110);
				match(BOOL);
				}
				break;
			case STRING:
				_localctx = new StringTypeContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(111);
				match(STRING);
				}
				break;
			case VOID:
				_localctx = new VoidTypeContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(112);
				match(VOID);
				}
				break;
			case LIST:
				_localctx = new ListTypeContext(_localctx);
				enterOuterAlt(_localctx, 6);
				{
				setState(113);
				match(LIST);
				}
				break;
			case ID:
				_localctx = new CustomTypeContext(_localctx);
				enterOuterAlt(_localctx, 7);
				{
				setState(114);
				((CustomTypeContext)_localctx).name = match(ID);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ExpressionContext extends ParserRuleContext {
		public ExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expression; }
	 
		public ExpressionContext() { }
		public void copyFrom(ExpressionContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class BinaryMathExpressionContext extends ExpressionContext {
		public ExpressionContext left;
		public Token operand;
		public ExpressionContext right;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public TerminalNode PLUS() { return getToken(DartParser.PLUS, 0); }
		public TerminalNode MINUS() { return getToken(DartParser.MINUS, 0); }
		public TerminalNode TIMES() { return getToken(DartParser.TIMES, 0); }
		public TerminalNode DIVISION() { return getToken(DartParser.DIVISION, 0); }
		public BinaryMathExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterBinaryMathExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitBinaryMathExpression(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class PostIncrementExpressionContext extends ExpressionContext {
		public TerminalNode ID() { return getToken(DartParser.ID, 0); }
		public List<TerminalNode> PLUS() { return getTokens(DartParser.PLUS); }
		public TerminalNode PLUS(int i) {
			return getToken(DartParser.PLUS, i);
		}
		public PostIncrementExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterPostIncrementExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitPostIncrementExpression(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class DoubleLiteralExpressionContext extends ExpressionContext {
		public TerminalNode DOUBLELIT() { return getToken(DartParser.DOUBLELIT, 0); }
		public DoubleLiteralExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterDoubleLiteralExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitDoubleLiteralExpression(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ObjectPropertyReferenceExpressionContext extends ExpressionContext {
		public List<TerminalNode> ID() { return getTokens(DartParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(DartParser.ID, i);
		}
		public TerminalNode DOT() { return getToken(DartParser.DOT, 0); }
		public ObjectPropertyReferenceExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterObjectPropertyReferenceExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitObjectPropertyReferenceExpression(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class PreDecrementExpressionContext extends ExpressionContext {
		public List<TerminalNode> MINUS() { return getTokens(DartParser.MINUS); }
		public TerminalNode MINUS(int i) {
			return getToken(DartParser.MINUS, i);
		}
		public TerminalNode ID() { return getToken(DartParser.ID, 0); }
		public PreDecrementExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterPreDecrementExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitPreDecrementExpression(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class PreIncrementExpressionContext extends ExpressionContext {
		public List<TerminalNode> PLUS() { return getTokens(DartParser.PLUS); }
		public TerminalNode PLUS(int i) {
			return getToken(DartParser.PLUS, i);
		}
		public TerminalNode ID() { return getToken(DartParser.ID, 0); }
		public PreIncrementExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterPreIncrementExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitPreIncrementExpression(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StringLiteralExpressionContext extends ExpressionContext {
		public TerminalNode STRINGLIT() { return getToken(DartParser.STRINGLIT, 0); }
		public StringLiteralExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterStringLiteralExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitStringLiteralExpression(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ListLiteralExpressionContext extends ExpressionContext {
		public TerminalNode SQUARE_OPEN() { return getToken(DartParser.SQUARE_OPEN, 0); }
		public TerminalNode SQUARE_CLOSE() { return getToken(DartParser.SQUARE_CLOSE, 0); }
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public List<TerminalNode> COMMA() { return getTokens(DartParser.COMMA); }
		public TerminalNode COMMA(int i) {
			return getToken(DartParser.COMMA, i);
		}
		public ListLiteralExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterListLiteralExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitListLiteralExpression(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class IntLiteralExpressionContext extends ExpressionContext {
		public TerminalNode INTLIT() { return getToken(DartParser.INTLIT, 0); }
		public IntLiteralExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterIntLiteralExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitIntLiteralExpression(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class FunctionCallExpressionContext extends ExpressionContext {
		public TerminalNode ID() { return getToken(DartParser.ID, 0); }
		public TerminalNode PAREN_OPEN() { return getToken(DartParser.PAREN_OPEN, 0); }
		public TerminalNode PAREN_CLOSE() { return getToken(DartParser.PAREN_CLOSE, 0); }
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public List<TerminalNode> COMMA() { return getTokens(DartParser.COMMA); }
		public TerminalNode COMMA(int i) {
			return getToken(DartParser.COMMA, i);
		}
		public FunctionCallExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterFunctionCallExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitFunctionCallExpression(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class VarReferenceExpressionContext extends ExpressionContext {
		public TerminalNode ID() { return getToken(DartParser.ID, 0); }
		public VarReferenceExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterVarReferenceExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitVarReferenceExpression(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class BinaryLogicExpressionContext extends ExpressionContext {
		public ExpressionContext left;
		public Token operand;
		public ExpressionContext right;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public TerminalNode AND() { return getToken(DartParser.AND, 0); }
		public TerminalNode OR() { return getToken(DartParser.OR, 0); }
		public TerminalNode GREATER_THAN() { return getToken(DartParser.GREATER_THAN, 0); }
		public TerminalNode LOWER_THAN() { return getToken(DartParser.LOWER_THAN, 0); }
		public TerminalNode GREATER_EQUAL_THAN() { return getToken(DartParser.GREATER_EQUAL_THAN, 0); }
		public TerminalNode LOWER_EQUAL_THAN() { return getToken(DartParser.LOWER_EQUAL_THAN, 0); }
		public TerminalNode EQUAL() { return getToken(DartParser.EQUAL, 0); }
		public BinaryLogicExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterBinaryLogicExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitBinaryLogicExpression(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class UnaryLogicNegationExpressionContext extends ExpressionContext {
		public Token operand;
		public ExpressionContext value;
		public TerminalNode NOT() { return getToken(DartParser.NOT, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public UnaryLogicNegationExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterUnaryLogicNegationExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitUnaryLogicNegationExpression(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class UnaryMathExpressionContext extends ExpressionContext {
		public Token operand;
		public ExpressionContext value;
		public TerminalNode MINUS() { return getToken(DartParser.MINUS, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode PLUS() { return getToken(DartParser.PLUS, 0); }
		public UnaryMathExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterUnaryMathExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitUnaryMathExpression(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ObjectMethodCallExpressionContext extends ExpressionContext {
		public Token objectName;
		public Token methodName;
		public TerminalNode DOT() { return getToken(DartParser.DOT, 0); }
		public TerminalNode PAREN_OPEN() { return getToken(DartParser.PAREN_OPEN, 0); }
		public TerminalNode PAREN_CLOSE() { return getToken(DartParser.PAREN_CLOSE, 0); }
		public List<TerminalNode> ID() { return getTokens(DartParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(DartParser.ID, i);
		}
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public List<TerminalNode> COMMA() { return getTokens(DartParser.COMMA); }
		public TerminalNode COMMA(int i) {
			return getToken(DartParser.COMMA, i);
		}
		public ObjectMethodCallExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterObjectMethodCallExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitObjectMethodCallExpression(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class BoolLiteralExpressionContext extends ExpressionContext {
		public TerminalNode BOOLLIT() { return getToken(DartParser.BOOLLIT, 0); }
		public BoolLiteralExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterBoolLiteralExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitBoolLiteralExpression(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class PostDecrementExpressionContext extends ExpressionContext {
		public TerminalNode ID() { return getToken(DartParser.ID, 0); }
		public List<TerminalNode> MINUS() { return getTokens(DartParser.MINUS); }
		public TerminalNode MINUS(int i) {
			return getToken(DartParser.MINUS, i);
		}
		public PostDecrementExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterPostDecrementExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitPostDecrementExpression(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ParenthesysExpressionContext extends ExpressionContext {
		public ExpressionContext value;
		public TerminalNode PAREN_OPEN() { return getToken(DartParser.PAREN_OPEN, 0); }
		public TerminalNode PAREN_CLOSE() { return getToken(DartParser.PAREN_CLOSE, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ParenthesysExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterParenthesysExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitParenthesysExpression(this);
		}
	}

	public final ExpressionContext expression() throws RecognitionException {
		return expression(0);
	}

	private ExpressionContext expression(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ExpressionContext _localctx = new ExpressionContext(_ctx, _parentState);
		ExpressionContext _prevctx = _localctx;
		int _startState = 10;
		enterRecursionRule(_localctx, 10, RULE_expression, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(189);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,12,_ctx) ) {
			case 1:
				{
				_localctx = new BoolLiteralExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(118);
				match(BOOLLIT);
				}
				break;
			case 2:
				{
				_localctx = new IntLiteralExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(119);
				match(INTLIT);
				}
				break;
			case 3:
				{
				_localctx = new DoubleLiteralExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(120);
				match(DOUBLELIT);
				}
				break;
			case 4:
				{
				_localctx = new StringLiteralExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(121);
				match(STRINGLIT);
				}
				break;
			case 5:
				{
				_localctx = new ListLiteralExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(122);
				match(SQUARE_OPEN);
				setState(129);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while ((((_la) & ~0x3f) == 0 && ((1L << _la) & 281498601095168L) != 0)) {
					{
					{
					setState(123);
					expression(0);
					setState(125);
					_errHandler.sync(this);
					_la = _input.LA(1);
					if (_la==COMMA) {
						{
						setState(124);
						match(COMMA);
						}
					}

					}
					}
					setState(131);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(132);
				match(SQUARE_CLOSE);
				}
				break;
			case 6:
				{
				_localctx = new UnaryMathExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(133);
				((UnaryMathExpressionContext)_localctx).operand = match(MINUS);
				setState(134);
				((UnaryMathExpressionContext)_localctx).value = expression(12);
				}
				break;
			case 7:
				{
				_localctx = new UnaryMathExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(135);
				((UnaryMathExpressionContext)_localctx).operand = match(PLUS);
				setState(136);
				((UnaryMathExpressionContext)_localctx).value = expression(11);
				}
				break;
			case 8:
				{
				_localctx = new UnaryLogicNegationExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(137);
				((UnaryLogicNegationExpressionContext)_localctx).operand = match(NOT);
				setState(138);
				((UnaryLogicNegationExpressionContext)_localctx).value = expression(10);
				}
				break;
			case 9:
				{
				_localctx = new PreIncrementExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(139);
				match(PLUS);
				setState(140);
				match(PLUS);
				setState(141);
				match(ID);
				}
				break;
			case 10:
				{
				_localctx = new PostIncrementExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(142);
				match(ID);
				setState(143);
				match(PLUS);
				setState(144);
				match(PLUS);
				}
				break;
			case 11:
				{
				_localctx = new PreDecrementExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(145);
				match(MINUS);
				setState(146);
				match(MINUS);
				setState(147);
				match(ID);
				}
				break;
			case 12:
				{
				_localctx = new PostDecrementExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(148);
				match(ID);
				setState(149);
				match(MINUS);
				setState(150);
				match(MINUS);
				}
				break;
			case 13:
				{
				_localctx = new ParenthesysExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(151);
				match(PAREN_OPEN);
				setState(152);
				((ParenthesysExpressionContext)_localctx).value = expression(0);
				setState(153);
				match(PAREN_CLOSE);
				}
				break;
			case 14:
				{
				_localctx = new VarReferenceExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(155);
				match(ID);
				}
				break;
			case 15:
				{
				_localctx = new FunctionCallExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(156);
				match(ID);
				setState(157);
				match(PAREN_OPEN);
				setState(163);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,8,_ctx);
				while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
					if ( _alt==1 ) {
						{
						{
						setState(158);
						expression(0);
						setState(159);
						match(COMMA);
						}
						} 
					}
					setState(165);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,8,_ctx);
				}
				setState(167);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 281498601095168L) != 0)) {
					{
					setState(166);
					expression(0);
					}
				}

				setState(169);
				match(PAREN_CLOSE);
				}
				break;
			case 16:
				{
				_localctx = new ObjectPropertyReferenceExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(170);
				match(ID);
				setState(171);
				match(DOT);
				setState(172);
				match(ID);
				}
				break;
			case 17:
				{
				_localctx = new ObjectMethodCallExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(173);
				((ObjectMethodCallExpressionContext)_localctx).objectName = match(ID);
				setState(174);
				match(DOT);
				setState(175);
				((ObjectMethodCallExpressionContext)_localctx).methodName = match(ID);
				setState(176);
				match(PAREN_OPEN);
				setState(182);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,10,_ctx);
				while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
					if ( _alt==1 ) {
						{
						{
						setState(177);
						expression(0);
						setState(178);
						match(COMMA);
						}
						} 
					}
					setState(184);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,10,_ctx);
				}
				setState(186);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 281498601095168L) != 0)) {
					{
					setState(185);
					expression(0);
					}
				}

				setState(188);
				match(PAREN_CLOSE);
				}
				break;
			}
			_ctx.stop = _input.LT(-1);
			setState(226);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,14,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(224);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,13,_ctx) ) {
					case 1:
						{
						_localctx = new BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
						((BinaryMathExpressionContext)_localctx).left = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(191);
						if (!(precpred(_ctx, 23))) throw new FailedPredicateException(this, "precpred(_ctx, 23)");
						setState(192);
						((BinaryMathExpressionContext)_localctx).operand = match(PLUS);
						setState(193);
						((BinaryMathExpressionContext)_localctx).right = expression(24);
						}
						break;
					case 2:
						{
						_localctx = new BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
						((BinaryMathExpressionContext)_localctx).left = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(194);
						if (!(precpred(_ctx, 22))) throw new FailedPredicateException(this, "precpred(_ctx, 22)");
						setState(195);
						((BinaryMathExpressionContext)_localctx).operand = match(MINUS);
						setState(196);
						((BinaryMathExpressionContext)_localctx).right = expression(23);
						}
						break;
					case 3:
						{
						_localctx = new BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
						((BinaryMathExpressionContext)_localctx).left = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(197);
						if (!(precpred(_ctx, 21))) throw new FailedPredicateException(this, "precpred(_ctx, 21)");
						setState(198);
						((BinaryMathExpressionContext)_localctx).operand = match(TIMES);
						setState(199);
						((BinaryMathExpressionContext)_localctx).right = expression(22);
						}
						break;
					case 4:
						{
						_localctx = new BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
						((BinaryMathExpressionContext)_localctx).left = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(200);
						if (!(precpred(_ctx, 20))) throw new FailedPredicateException(this, "precpred(_ctx, 20)");
						setState(201);
						((BinaryMathExpressionContext)_localctx).operand = match(DIVISION);
						setState(202);
						((BinaryMathExpressionContext)_localctx).right = expression(21);
						}
						break;
					case 5:
						{
						_localctx = new BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
						((BinaryLogicExpressionContext)_localctx).left = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(203);
						if (!(precpred(_ctx, 19))) throw new FailedPredicateException(this, "precpred(_ctx, 19)");
						setState(204);
						((BinaryLogicExpressionContext)_localctx).operand = match(AND);
						setState(205);
						((BinaryLogicExpressionContext)_localctx).right = expression(20);
						}
						break;
					case 6:
						{
						_localctx = new BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
						((BinaryLogicExpressionContext)_localctx).left = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(206);
						if (!(precpred(_ctx, 18))) throw new FailedPredicateException(this, "precpred(_ctx, 18)");
						setState(207);
						((BinaryLogicExpressionContext)_localctx).operand = match(OR);
						setState(208);
						((BinaryLogicExpressionContext)_localctx).right = expression(19);
						}
						break;
					case 7:
						{
						_localctx = new BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
						((BinaryLogicExpressionContext)_localctx).left = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(209);
						if (!(precpred(_ctx, 17))) throw new FailedPredicateException(this, "precpred(_ctx, 17)");
						setState(210);
						((BinaryLogicExpressionContext)_localctx).operand = match(GREATER_THAN);
						setState(211);
						((BinaryLogicExpressionContext)_localctx).right = expression(18);
						}
						break;
					case 8:
						{
						_localctx = new BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
						((BinaryLogicExpressionContext)_localctx).left = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(212);
						if (!(precpred(_ctx, 16))) throw new FailedPredicateException(this, "precpred(_ctx, 16)");
						setState(213);
						((BinaryLogicExpressionContext)_localctx).operand = match(LOWER_THAN);
						setState(214);
						((BinaryLogicExpressionContext)_localctx).right = expression(17);
						}
						break;
					case 9:
						{
						_localctx = new BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
						((BinaryLogicExpressionContext)_localctx).left = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(215);
						if (!(precpred(_ctx, 15))) throw new FailedPredicateException(this, "precpred(_ctx, 15)");
						setState(216);
						((BinaryLogicExpressionContext)_localctx).operand = match(GREATER_EQUAL_THAN);
						setState(217);
						((BinaryLogicExpressionContext)_localctx).right = expression(16);
						}
						break;
					case 10:
						{
						_localctx = new BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
						((BinaryLogicExpressionContext)_localctx).left = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(218);
						if (!(precpred(_ctx, 14))) throw new FailedPredicateException(this, "precpred(_ctx, 14)");
						setState(219);
						((BinaryLogicExpressionContext)_localctx).operand = match(LOWER_EQUAL_THAN);
						setState(220);
						((BinaryLogicExpressionContext)_localctx).right = expression(15);
						}
						break;
					case 11:
						{
						_localctx = new BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
						((BinaryLogicExpressionContext)_localctx).left = _prevctx;
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(221);
						if (!(precpred(_ctx, 13))) throw new FailedPredicateException(this, "precpred(_ctx, 13)");
						setState(222);
						((BinaryLogicExpressionContext)_localctx).operand = match(EQUAL);
						setState(223);
						((BinaryLogicExpressionContext)_localctx).right = expression(14);
						}
						break;
					}
					} 
				}
				setState(228);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,14,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class FunctionDefinitionContext extends ParserRuleContext {
		public TypeContext returnType;
		public Token name;
		public TerminalNode PAREN_OPEN() { return getToken(DartParser.PAREN_OPEN, 0); }
		public TerminalNode PAREN_CLOSE() { return getToken(DartParser.PAREN_CLOSE, 0); }
		public BlockContext block() {
			return getRuleContext(BlockContext.class,0);
		}
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public TerminalNode ID() { return getToken(DartParser.ID, 0); }
		public List<ParameterContext> parameter() {
			return getRuleContexts(ParameterContext.class);
		}
		public ParameterContext parameter(int i) {
			return getRuleContext(ParameterContext.class,i);
		}
		public List<TerminalNode> COMMA() { return getTokens(DartParser.COMMA); }
		public TerminalNode COMMA(int i) {
			return getToken(DartParser.COMMA, i);
		}
		public FunctionDefinitionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_functionDefinition; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterFunctionDefinition(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitFunctionDefinition(this);
		}
	}

	public final FunctionDefinitionContext functionDefinition() throws RecognitionException {
		FunctionDefinitionContext _localctx = new FunctionDefinitionContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_functionDefinition);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(229);
			((FunctionDefinitionContext)_localctx).returnType = type();
			setState(230);
			((FunctionDefinitionContext)_localctx).name = match(ID);
			setState(231);
			match(PAREN_OPEN);
			setState(237);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,15,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(232);
					parameter();
					setState(233);
					match(COMMA);
					}
					} 
				}
				setState(239);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,15,_ctx);
			}
			setState(241);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 281474976718784L) != 0)) {
				{
				setState(240);
				parameter();
				}
			}

			setState(243);
			match(PAREN_CLOSE);
			setState(244);
			block();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ParameterContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(DartParser.ID, 0); }
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public TerminalNode THIS() { return getToken(DartParser.THIS, 0); }
		public TerminalNode DOT() { return getToken(DartParser.DOT, 0); }
		public ParameterContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_parameter; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterParameter(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitParameter(this);
		}
	}

	public final ParameterContext parameter() throws RecognitionException {
		ParameterContext _localctx = new ParameterContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_parameter);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(249);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case INT:
			case DOUBLE:
			case STRING:
			case BOOL:
			case VOID:
			case LIST:
			case ID:
				{
				setState(246);
				type();
				}
				break;
			case THIS:
				{
				{
				setState(247);
				match(THIS);
				setState(248);
				match(DOT);
				}
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(251);
			match(ID);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class BlockContext extends ParserRuleContext {
		public TerminalNode GRAPH_OPEN() { return getToken(DartParser.GRAPH_OPEN, 0); }
		public TerminalNode GRAPH_CLOSE() { return getToken(DartParser.GRAPH_CLOSE, 0); }
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public BlockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_block; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterBlock(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitBlock(this);
		}
	}

	public final BlockContext block() throws RecognitionException {
		BlockContext _localctx = new BlockContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_block);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(253);
			match(GRAPH_OPEN);
			setState(257);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & 398046833647548L) != 0)) {
				{
				{
				setState(254);
				statement();
				}
				}
				setState(259);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(260);
			match(GRAPH_CLOSE);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ClassDefinitionContext extends ParserRuleContext {
		public Token name;
		public Token parentName;
		public TerminalNode CLASS() { return getToken(DartParser.CLASS, 0); }
		public TerminalNode GRAPH_OPEN() { return getToken(DartParser.GRAPH_OPEN, 0); }
		public TerminalNode GRAPH_CLOSE() { return getToken(DartParser.GRAPH_CLOSE, 0); }
		public List<TerminalNode> ID() { return getTokens(DartParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(DartParser.ID, i);
		}
		public TerminalNode EXTENDS() { return getToken(DartParser.EXTENDS, 0); }
		public List<ClassStatementContext> classStatement() {
			return getRuleContexts(ClassStatementContext.class);
		}
		public ClassStatementContext classStatement(int i) {
			return getRuleContext(ClassStatementContext.class,i);
		}
		public ClassDefinitionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_classDefinition; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterClassDefinition(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitClassDefinition(this);
		}
	}

	public final ClassDefinitionContext classDefinition() throws RecognitionException {
		ClassDefinitionContext _localctx = new ClassDefinitionContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_classDefinition);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(262);
			match(CLASS);
			setState(263);
			((ClassDefinitionContext)_localctx).name = match(ID);
			setState(266);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==EXTENDS) {
				{
				setState(264);
				match(EXTENDS);
				setState(265);
				((ClassDefinitionContext)_localctx).parentName = match(ID);
				}
			}

			setState(268);
			match(GRAPH_OPEN);
			setState(272);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & 281474976718728L) != 0)) {
				{
				{
				setState(269);
				classStatement();
				}
				}
				setState(274);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(275);
			match(GRAPH_CLOSE);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ClassStatementContext extends ParserRuleContext {
		public ClassStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_classStatement; }
	 
		public ClassStatementContext() { }
		public void copyFrom(ClassStatementContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class NamedClassConstructorDeclarationStatementContext extends ClassStatementContext {
		public Token className;
		public Token costructorName;
		public TerminalNode DOT() { return getToken(DartParser.DOT, 0); }
		public TerminalNode PAREN_OPEN() { return getToken(DartParser.PAREN_OPEN, 0); }
		public TerminalNode PAREN_CLOSE() { return getToken(DartParser.PAREN_CLOSE, 0); }
		public List<TerminalNode> ID() { return getTokens(DartParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(DartParser.ID, i);
		}
		public BlockContext block() {
			return getRuleContext(BlockContext.class,0);
		}
		public TerminalNode SEMICOLON() { return getToken(DartParser.SEMICOLON, 0); }
		public List<ParameterContext> parameter() {
			return getRuleContexts(ParameterContext.class);
		}
		public ParameterContext parameter(int i) {
			return getRuleContext(ParameterContext.class,i);
		}
		public List<TerminalNode> COMMA() { return getTokens(DartParser.COMMA); }
		public TerminalNode COMMA(int i) {
			return getToken(DartParser.COMMA, i);
		}
		public TerminalNode COLONS() { return getToken(DartParser.COLONS, 0); }
		public ThisConstructorCallContext thisConstructorCall() {
			return getRuleContext(ThisConstructorCallContext.class,0);
		}
		public NamedClassConstructorDeclarationStatementContext(ClassStatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterNamedClassConstructorDeclarationStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitNamedClassConstructorDeclarationStatement(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ClassMethodDeclarationStatementContext extends ClassStatementContext {
		public FunctionDefinitionContext functionDefinition() {
			return getRuleContext(FunctionDefinitionContext.class,0);
		}
		public ClassMethodDeclarationStatementContext(ClassStatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterClassMethodDeclarationStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitClassMethodDeclarationStatement(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ClassVarDeclarationStatementContext extends ClassStatementContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public TerminalNode ID() { return getToken(DartParser.ID, 0); }
		public TerminalNode SEMICOLON() { return getToken(DartParser.SEMICOLON, 0); }
		public TerminalNode ASSIGN() { return getToken(DartParser.ASSIGN, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ClassVarDeclarationStatementContext(ClassStatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterClassVarDeclarationStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitClassVarDeclarationStatement(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ClassImmutableVarDeclarationStatementContext extends ClassStatementContext {
		public TerminalNode FINAL() { return getToken(DartParser.FINAL, 0); }
		public TerminalNode ID() { return getToken(DartParser.ID, 0); }
		public TerminalNode SEMICOLON() { return getToken(DartParser.SEMICOLON, 0); }
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public TerminalNode ASSIGN() { return getToken(DartParser.ASSIGN, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ClassImmutableVarDeclarationStatementContext(ClassStatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterClassImmutableVarDeclarationStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitClassImmutableVarDeclarationStatement(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class MainClassConstructorDeclarationStatementContext extends ClassStatementContext {
		public Token className;
		public TerminalNode PAREN_OPEN() { return getToken(DartParser.PAREN_OPEN, 0); }
		public TerminalNode PAREN_CLOSE() { return getToken(DartParser.PAREN_CLOSE, 0); }
		public TerminalNode ID() { return getToken(DartParser.ID, 0); }
		public BlockContext block() {
			return getRuleContext(BlockContext.class,0);
		}
		public TerminalNode SEMICOLON() { return getToken(DartParser.SEMICOLON, 0); }
		public List<ParameterContext> parameter() {
			return getRuleContexts(ParameterContext.class);
		}
		public ParameterContext parameter(int i) {
			return getRuleContext(ParameterContext.class,i);
		}
		public List<TerminalNode> COMMA() { return getTokens(DartParser.COMMA); }
		public TerminalNode COMMA(int i) {
			return getToken(DartParser.COMMA, i);
		}
		public MainClassConstructorDeclarationStatementContext(ClassStatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterMainClassConstructorDeclarationStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitMainClassConstructorDeclarationStatement(this);
		}
	}

	public final ClassStatementContext classStatement() throws RecognitionException {
		ClassStatementContext _localctx = new ClassStatementContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_classStatement);
		int _la;
		try {
			int _alt;
			setState(338);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,31,_ctx) ) {
			case 1:
				_localctx = new ClassVarDeclarationStatementContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(277);
				type();
				setState(278);
				match(ID);
				setState(281);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==ASSIGN) {
					{
					setState(279);
					match(ASSIGN);
					setState(280);
					expression(0);
					}
				}

				setState(283);
				match(SEMICOLON);
				}
				break;
			case 2:
				_localctx = new ClassImmutableVarDeclarationStatementContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(285);
				match(FINAL);
				setState(287);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,22,_ctx) ) {
				case 1:
					{
					setState(286);
					type();
					}
					break;
				}
				setState(289);
				match(ID);
				setState(292);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==ASSIGN) {
					{
					setState(290);
					match(ASSIGN);
					setState(291);
					expression(0);
					}
				}

				setState(294);
				match(SEMICOLON);
				}
				break;
			case 3:
				_localctx = new MainClassConstructorDeclarationStatementContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(295);
				((MainClassConstructorDeclarationStatementContext)_localctx).className = match(ID);
				setState(296);
				match(PAREN_OPEN);
				setState(302);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,24,_ctx);
				while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
					if ( _alt==1 ) {
						{
						{
						setState(297);
						parameter();
						setState(298);
						match(COMMA);
						}
						} 
					}
					setState(304);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,24,_ctx);
				}
				setState(306);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 281474976718784L) != 0)) {
					{
					setState(305);
					parameter();
					}
				}

				setState(308);
				match(PAREN_CLOSE);
				setState(311);
				_errHandler.sync(this);
				switch (_input.LA(1)) {
				case GRAPH_OPEN:
					{
					setState(309);
					block();
					}
					break;
				case SEMICOLON:
					{
					setState(310);
					match(SEMICOLON);
					}
					break;
				default:
					throw new NoViableAltException(this);
				}
				}
				break;
			case 4:
				_localctx = new NamedClassConstructorDeclarationStatementContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(313);
				((NamedClassConstructorDeclarationStatementContext)_localctx).className = match(ID);
				setState(314);
				match(DOT);
				setState(315);
				((NamedClassConstructorDeclarationStatementContext)_localctx).costructorName = match(ID);
				setState(316);
				match(PAREN_OPEN);
				setState(322);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,27,_ctx);
				while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
					if ( _alt==1 ) {
						{
						{
						setState(317);
						parameter();
						setState(318);
						match(COMMA);
						}
						} 
					}
					setState(324);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,27,_ctx);
				}
				setState(326);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 281474976718784L) != 0)) {
					{
					setState(325);
					parameter();
					}
				}

				setState(328);
				match(PAREN_CLOSE);
				setState(331);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==COLONS) {
					{
					setState(329);
					match(COLONS);
					setState(330);
					thisConstructorCall();
					}
				}

				setState(335);
				_errHandler.sync(this);
				switch (_input.LA(1)) {
				case GRAPH_OPEN:
					{
					setState(333);
					block();
					}
					break;
				case SEMICOLON:
					{
					setState(334);
					match(SEMICOLON);
					}
					break;
				default:
					throw new NoViableAltException(this);
				}
				}
				break;
			case 5:
				_localctx = new ClassMethodDeclarationStatementContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(337);
				functionDefinition();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ThisConstructorCallContext extends ParserRuleContext {
		public TerminalNode THIS() { return getToken(DartParser.THIS, 0); }
		public TerminalNode PAREN_OPEN() { return getToken(DartParser.PAREN_OPEN, 0); }
		public TerminalNode PAREN_CLOSE() { return getToken(DartParser.PAREN_CLOSE, 0); }
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public List<TerminalNode> COMMA() { return getTokens(DartParser.COMMA); }
		public TerminalNode COMMA(int i) {
			return getToken(DartParser.COMMA, i);
		}
		public ThisConstructorCallContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_thisConstructorCall; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterThisConstructorCall(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitThisConstructorCall(this);
		}
	}

	public final ThisConstructorCallContext thisConstructorCall() throws RecognitionException {
		ThisConstructorCallContext _localctx = new ThisConstructorCallContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_thisConstructorCall);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(340);
			match(THIS);
			setState(341);
			match(PAREN_OPEN);
			setState(347);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,32,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(342);
					expression(0);
					setState(343);
					match(COMMA);
					}
					} 
				}
				setState(349);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,32,_ctx);
			}
			setState(354);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 281498601095168L) != 0)) {
				{
				setState(350);
				expression(0);
				setState(352);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==COMMA) {
					{
					setState(351);
					match(COMMA);
					}
				}

				}
			}

			setState(356);
			match(PAREN_CLOSE);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class IfBlockContext extends ParserRuleContext {
		public TerminalNode IF() { return getToken(DartParser.IF, 0); }
		public TerminalNode PAREN_OPEN() { return getToken(DartParser.PAREN_OPEN, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode PAREN_CLOSE() { return getToken(DartParser.PAREN_CLOSE, 0); }
		public BlockContext block() {
			return getRuleContext(BlockContext.class,0);
		}
		public IfBlockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_ifBlock; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterIfBlock(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitIfBlock(this);
		}
	}

	public final IfBlockContext ifBlock() throws RecognitionException {
		IfBlockContext _localctx = new IfBlockContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_ifBlock);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(358);
			match(IF);
			setState(359);
			match(PAREN_OPEN);
			setState(360);
			expression(0);
			setState(361);
			match(PAREN_CLOSE);
			setState(362);
			block();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ElseIfBlockContext extends ParserRuleContext {
		public TerminalNode ELSE() { return getToken(DartParser.ELSE, 0); }
		public TerminalNode IF() { return getToken(DartParser.IF, 0); }
		public TerminalNode PAREN_OPEN() { return getToken(DartParser.PAREN_OPEN, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode PAREN_CLOSE() { return getToken(DartParser.PAREN_CLOSE, 0); }
		public BlockContext block() {
			return getRuleContext(BlockContext.class,0);
		}
		public ElseIfBlockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_elseIfBlock; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterElseIfBlock(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitElseIfBlock(this);
		}
	}

	public final ElseIfBlockContext elseIfBlock() throws RecognitionException {
		ElseIfBlockContext _localctx = new ElseIfBlockContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_elseIfBlock);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(364);
			match(ELSE);
			setState(365);
			match(IF);
			setState(366);
			match(PAREN_OPEN);
			setState(367);
			expression(0);
			setState(368);
			match(PAREN_CLOSE);
			setState(369);
			block();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ElseBlockContext extends ParserRuleContext {
		public TerminalNode ELSE() { return getToken(DartParser.ELSE, 0); }
		public BlockContext block() {
			return getRuleContext(BlockContext.class,0);
		}
		public ElseBlockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_elseBlock; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterElseBlock(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitElseBlock(this);
		}
	}

	public final ElseBlockContext elseBlock() throws RecognitionException {
		ElseBlockContext _localctx = new ElseBlockContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_elseBlock);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(371);
			match(ELSE);
			setState(372);
			block();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class IfDefinitionContext extends ParserRuleContext {
		public IfBlockContext ifBlock() {
			return getRuleContext(IfBlockContext.class,0);
		}
		public List<ElseIfBlockContext> elseIfBlock() {
			return getRuleContexts(ElseIfBlockContext.class);
		}
		public ElseIfBlockContext elseIfBlock(int i) {
			return getRuleContext(ElseIfBlockContext.class,i);
		}
		public ElseBlockContext elseBlock() {
			return getRuleContext(ElseBlockContext.class,0);
		}
		public IfDefinitionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_ifDefinition; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterIfDefinition(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitIfDefinition(this);
		}
	}

	public final IfDefinitionContext ifDefinition() throws RecognitionException {
		IfDefinitionContext _localctx = new IfDefinitionContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_ifDefinition);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(374);
			ifBlock();
			setState(378);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,35,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(375);
					elseIfBlock();
					}
					} 
				}
				setState(380);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,35,_ctx);
			}
			setState(382);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==ELSE) {
				{
				setState(381);
				elseBlock();
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class WhileDefinitionContext extends ParserRuleContext {
		public TerminalNode WHILE() { return getToken(DartParser.WHILE, 0); }
		public TerminalNode PAREN_OPEN() { return getToken(DartParser.PAREN_OPEN, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode PAREN_CLOSE() { return getToken(DartParser.PAREN_CLOSE, 0); }
		public BlockContext block() {
			return getRuleContext(BlockContext.class,0);
		}
		public WhileDefinitionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_whileDefinition; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterWhileDefinition(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitWhileDefinition(this);
		}
	}

	public final WhileDefinitionContext whileDefinition() throws RecognitionException {
		WhileDefinitionContext _localctx = new WhileDefinitionContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_whileDefinition);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(384);
			match(WHILE);
			setState(385);
			match(PAREN_OPEN);
			setState(386);
			expression(0);
			setState(387);
			match(PAREN_CLOSE);
			setState(388);
			block();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ForInitOrIncrementStatementContext extends ParserRuleContext {
		public ForInitOrIncrementStatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_forInitOrIncrementStatement; }
	 
		public ForInitOrIncrementStatementContext() { }
		public void copyFrom(ForInitOrIncrementStatementContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class VarDeclarationForStatementContext extends ForInitOrIncrementStatementContext {
		public VarDeclarationContext varDeclaration() {
			return getRuleContext(VarDeclarationContext.class,0);
		}
		public VarDeclarationForStatementContext(ForInitOrIncrementStatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterVarDeclarationForStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitVarDeclarationForStatement(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExpressionForStatementContext extends ForInitOrIncrementStatementContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ExpressionForStatementContext(ForInitOrIncrementStatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterExpressionForStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitExpressionForStatement(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class AssignmentForStatementContext extends ForInitOrIncrementStatementContext {
		public AssignmentContext assignment() {
			return getRuleContext(AssignmentContext.class,0);
		}
		public AssignmentForStatementContext(ForInitOrIncrementStatementContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterAssignmentForStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitAssignmentForStatement(this);
		}
	}

	public final ForInitOrIncrementStatementContext forInitOrIncrementStatement() throws RecognitionException {
		ForInitOrIncrementStatementContext _localctx = new ForInitOrIncrementStatementContext(_ctx, getState());
		enterRule(_localctx, 34, RULE_forInitOrIncrementStatement);
		try {
			setState(393);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,37,_ctx) ) {
			case 1:
				_localctx = new VarDeclarationForStatementContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(390);
				varDeclaration();
				}
				break;
			case 2:
				_localctx = new AssignmentForStatementContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(391);
				assignment();
				}
				break;
			case 3:
				_localctx = new ExpressionForStatementContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(392);
				expression(0);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ItemDefinitionContext extends ParserRuleContext {
		public Token name;
		public TerminalNode ID() { return getToken(DartParser.ID, 0); }
		public TerminalNode VAR() { return getToken(DartParser.VAR, 0); }
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public ItemDefinitionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_itemDefinition; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterItemDefinition(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitItemDefinition(this);
		}
	}

	public final ItemDefinitionContext itemDefinition() throws RecognitionException {
		ItemDefinitionContext _localctx = new ItemDefinitionContext(_ctx, getState());
		enterRule(_localctx, 36, RULE_itemDefinition);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(397);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case VAR:
				{
				setState(395);
				match(VAR);
				}
				break;
			case INT:
			case DOUBLE:
			case STRING:
			case BOOL:
			case VOID:
			case LIST:
			case ID:
				{
				setState(396);
				type();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(399);
			((ItemDefinitionContext)_localctx).name = match(ID);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ForConditionContext extends ParserRuleContext {
		public ForConditionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_forCondition; }
	 
		public ForConditionContext() { }
		public void copyFrom(ForConditionContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StandardForConditionContext extends ForConditionContext {
		public ForInitOrIncrementStatementContext initStatement;
		public ForInitOrIncrementStatementContext incrementStatament;
		public List<TerminalNode> SEMICOLON() { return getTokens(DartParser.SEMICOLON); }
		public TerminalNode SEMICOLON(int i) {
			return getToken(DartParser.SEMICOLON, i);
		}
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public List<ForInitOrIncrementStatementContext> forInitOrIncrementStatement() {
			return getRuleContexts(ForInitOrIncrementStatementContext.class);
		}
		public ForInitOrIncrementStatementContext forInitOrIncrementStatement(int i) {
			return getRuleContext(ForInitOrIncrementStatementContext.class,i);
		}
		public StandardForConditionContext(ForConditionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterStandardForCondition(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitStandardForCondition(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ForEachConditionContext extends ForConditionContext {
		public ItemDefinitionContext itemDefinition() {
			return getRuleContext(ItemDefinitionContext.class,0);
		}
		public TerminalNode IN() { return getToken(DartParser.IN, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ForEachConditionContext(ForConditionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterForEachCondition(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitForEachCondition(this);
		}
	}

	public final ForConditionContext forCondition() throws RecognitionException {
		ForConditionContext _localctx = new ForConditionContext(_ctx, getState());
		enterRule(_localctx, 38, RULE_forCondition);
		try {
			setState(411);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,39,_ctx) ) {
			case 1:
				_localctx = new StandardForConditionContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(401);
				((StandardForConditionContext)_localctx).initStatement = forInitOrIncrementStatement();
				setState(402);
				match(SEMICOLON);
				setState(403);
				expression(0);
				setState(404);
				match(SEMICOLON);
				setState(405);
				((StandardForConditionContext)_localctx).incrementStatament = forInitOrIncrementStatement();
				}
				break;
			case 2:
				_localctx = new ForEachConditionContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(407);
				itemDefinition();
				setState(408);
				match(IN);
				setState(409);
				expression(0);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ForDefinitionContext extends ParserRuleContext {
		public TerminalNode FOR() { return getToken(DartParser.FOR, 0); }
		public TerminalNode PAREN_OPEN() { return getToken(DartParser.PAREN_OPEN, 0); }
		public ForConditionContext forCondition() {
			return getRuleContext(ForConditionContext.class,0);
		}
		public TerminalNode PAREN_CLOSE() { return getToken(DartParser.PAREN_CLOSE, 0); }
		public BlockContext block() {
			return getRuleContext(BlockContext.class,0);
		}
		public ForDefinitionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_forDefinition; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).enterForDefinition(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof DartParserListener ) ((DartParserListener)listener).exitForDefinition(this);
		}
	}

	public final ForDefinitionContext forDefinition() throws RecognitionException {
		ForDefinitionContext _localctx = new ForDefinitionContext(_ctx, getState());
		enterRule(_localctx, 40, RULE_forDefinition);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(413);
			match(FOR);
			setState(414);
			match(PAREN_OPEN);
			setState(415);
			forCondition();
			setState(416);
			match(PAREN_CLOSE);
			setState(417);
			block();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 5:
			return expression_sempred((ExpressionContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean expression_sempred(ExpressionContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 23);
		case 1:
			return precpred(_ctx, 22);
		case 2:
			return precpred(_ctx, 21);
		case 3:
			return precpred(_ctx, 20);
		case 4:
			return precpred(_ctx, 19);
		case 5:
			return precpred(_ctx, 18);
		case 6:
			return precpred(_ctx, 17);
		case 7:
			return precpred(_ctx, 16);
		case 8:
			return precpred(_ctx, 15);
		case 9:
			return precpred(_ctx, 14);
		case 10:
			return precpred(_ctx, 13);
		}
		return true;
	}

	public static final String _serializedATN =
		"\u0004\u00011\u01a4\u0002\u0000\u0007\u0000\u0002\u0001\u0007\u0001\u0002"+
		"\u0002\u0007\u0002\u0002\u0003\u0007\u0003\u0002\u0004\u0007\u0004\u0002"+
		"\u0005\u0007\u0005\u0002\u0006\u0007\u0006\u0002\u0007\u0007\u0007\u0002"+
		"\b\u0007\b\u0002\t\u0007\t\u0002\n\u0007\n\u0002\u000b\u0007\u000b\u0002"+
		"\f\u0007\f\u0002\r\u0007\r\u0002\u000e\u0007\u000e\u0002\u000f\u0007\u000f"+
		"\u0002\u0010\u0007\u0010\u0002\u0011\u0007\u0011\u0002\u0012\u0007\u0012"+
		"\u0002\u0013\u0007\u0013\u0002\u0014\u0007\u0014\u0001\u0000\u0004\u0000"+
		",\b\u0000\u000b\u0000\f\u0000-\u0001\u0000\u0001\u0000\u0001\u0001\u0001"+
		"\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0003\u00017\b\u0001\u0001"+
		"\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001"+
		"\u0001\u0003\u0001@\b\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001"+
		"\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001"+
		"\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001"+
		"\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001"+
		"\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0003"+
		"\u0001]\b\u0001\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0003"+
		"\u0002c\b\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001"+
		"\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0004\u0001\u0004\u0001"+
		"\u0004\u0001\u0004\u0001\u0004\u0001\u0004\u0001\u0004\u0003\u0004t\b"+
		"\u0004\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001"+
		"\u0005\u0001\u0005\u0001\u0005\u0003\u0005~\b\u0005\u0005\u0005\u0080"+
		"\b\u0005\n\u0005\f\u0005\u0083\t\u0005\u0001\u0005\u0001\u0005\u0001\u0005"+
		"\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005"+
		"\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005"+
		"\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005"+
		"\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005"+
		"\u0001\u0005\u0001\u0005\u0005\u0005\u00a2\b\u0005\n\u0005\f\u0005\u00a5"+
		"\t\u0005\u0001\u0005\u0003\u0005\u00a8\b\u0005\u0001\u0005\u0001\u0005"+
		"\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005"+
		"\u0001\u0005\u0001\u0005\u0001\u0005\u0005\u0005\u00b5\b\u0005\n\u0005"+
		"\f\u0005\u00b8\t\u0005\u0001\u0005\u0003\u0005\u00bb\b\u0005\u0001\u0005"+
		"\u0003\u0005\u00be\b\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005"+
		"\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005"+
		"\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005"+
		"\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005"+
		"\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005"+
		"\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0005\u0005"+
		"\u00e1\b\u0005\n\u0005\f\u0005\u00e4\t\u0005\u0001\u0006\u0001\u0006\u0001"+
		"\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0005\u0006\u00ec\b\u0006\n"+
		"\u0006\f\u0006\u00ef\t\u0006\u0001\u0006\u0003\u0006\u00f2\b\u0006\u0001"+
		"\u0006\u0001\u0006\u0001\u0006\u0001\u0007\u0001\u0007\u0001\u0007\u0003"+
		"\u0007\u00fa\b\u0007\u0001\u0007\u0001\u0007\u0001\b\u0001\b\u0005\b\u0100"+
		"\b\b\n\b\f\b\u0103\t\b\u0001\b\u0001\b\u0001\t\u0001\t\u0001\t\u0001\t"+
		"\u0003\t\u010b\b\t\u0001\t\u0001\t\u0005\t\u010f\b\t\n\t\f\t\u0112\t\t"+
		"\u0001\t\u0001\t\u0001\n\u0001\n\u0001\n\u0001\n\u0003\n\u011a\b\n\u0001"+
		"\n\u0001\n\u0001\n\u0001\n\u0003\n\u0120\b\n\u0001\n\u0001\n\u0001\n\u0003"+
		"\n\u0125\b\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0005\n\u012d"+
		"\b\n\n\n\f\n\u0130\t\n\u0001\n\u0003\n\u0133\b\n\u0001\n\u0001\n\u0001"+
		"\n\u0003\n\u0138\b\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001"+
		"\n\u0005\n\u0141\b\n\n\n\f\n\u0144\t\n\u0001\n\u0003\n\u0147\b\n\u0001"+
		"\n\u0001\n\u0001\n\u0003\n\u014c\b\n\u0001\n\u0001\n\u0003\n\u0150\b\n"+
		"\u0001\n\u0003\n\u0153\b\n\u0001\u000b\u0001\u000b\u0001\u000b\u0001\u000b"+
		"\u0001\u000b\u0005\u000b\u015a\b\u000b\n\u000b\f\u000b\u015d\t\u000b\u0001"+
		"\u000b\u0001\u000b\u0003\u000b\u0161\b\u000b\u0003\u000b\u0163\b\u000b"+
		"\u0001\u000b\u0001\u000b\u0001\f\u0001\f\u0001\f\u0001\f\u0001\f\u0001"+
		"\f\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\u000e"+
		"\u0001\u000e\u0001\u000e\u0001\u000f\u0001\u000f\u0005\u000f\u0179\b\u000f"+
		"\n\u000f\f\u000f\u017c\t\u000f\u0001\u000f\u0003\u000f\u017f\b\u000f\u0001"+
		"\u0010\u0001\u0010\u0001\u0010\u0001\u0010\u0001\u0010\u0001\u0010\u0001"+
		"\u0011\u0001\u0011\u0001\u0011\u0003\u0011\u018a\b\u0011\u0001\u0012\u0001"+
		"\u0012\u0003\u0012\u018e\b\u0012\u0001\u0012\u0001\u0012\u0001\u0013\u0001"+
		"\u0013\u0001\u0013\u0001\u0013\u0001\u0013\u0001\u0013\u0001\u0013\u0001"+
		"\u0013\u0001\u0013\u0001\u0013\u0003\u0013\u019c\b\u0013\u0001\u0014\u0001"+
		"\u0014\u0001\u0014\u0001\u0014\u0001\u0014\u0001\u0014\u0001\u0014\u0000"+
		"\u0001\n\u0015\u0000\u0002\u0004\u0006\b\n\f\u000e\u0010\u0012\u0014\u0016"+
		"\u0018\u001a\u001c\u001e \"$&(\u0000\u0000\u01e2\u0000+\u0001\u0000\u0000"+
		"\u0000\u0002\\\u0001\u0000\u0000\u0000\u0004b\u0001\u0000\u0000\u0000"+
		"\u0006h\u0001\u0000\u0000\u0000\bs\u0001\u0000\u0000\u0000\n\u00bd\u0001"+
		"\u0000\u0000\u0000\f\u00e5\u0001\u0000\u0000\u0000\u000e\u00f9\u0001\u0000"+
		"\u0000\u0000\u0010\u00fd\u0001\u0000\u0000\u0000\u0012\u0106\u0001\u0000"+
		"\u0000\u0000\u0014\u0152\u0001\u0000\u0000\u0000\u0016\u0154\u0001\u0000"+
		"\u0000\u0000\u0018\u0166\u0001\u0000\u0000\u0000\u001a\u016c\u0001\u0000"+
		"\u0000\u0000\u001c\u0173\u0001\u0000\u0000\u0000\u001e\u0176\u0001\u0000"+
		"\u0000\u0000 \u0180\u0001\u0000\u0000\u0000\"\u0189\u0001\u0000\u0000"+
		"\u0000$\u018d\u0001\u0000\u0000\u0000&\u019b\u0001\u0000\u0000\u0000("+
		"\u019d\u0001\u0000\u0000\u0000*,\u0003\u0002\u0001\u0000+*\u0001\u0000"+
		"\u0000\u0000,-\u0001\u0000\u0000\u0000-+\u0001\u0000\u0000\u0000-.\u0001"+
		"\u0000\u0000\u0000./\u0001\u0000\u0000\u0000/0\u0005\u0000\u0000\u0001"+
		"0\u0001\u0001\u0000\u0000\u000012\u0003\u0004\u0002\u000023\u0005\u000e"+
		"\u0000\u00003]\u0001\u0000\u0000\u000046\u0005\u0003\u0000\u000057\u0003"+
		"\b\u0004\u000065\u0001\u0000\u0000\u000067\u0001\u0000\u0000\u000078\u0001"+
		"\u0000\u0000\u000089\u00050\u0000\u00009:\u0005\r\u0000\u0000:;\u0003"+
		"\n\u0005\u0000;<\u0005\u000e\u0000\u0000<]\u0001\u0000\u0000\u0000=?\u0005"+
		"\u0004\u0000\u0000>@\u0003\b\u0004\u0000?>\u0001\u0000\u0000\u0000?@\u0001"+
		"\u0000\u0000\u0000@A\u0001\u0000\u0000\u0000AB\u00050\u0000\u0000BC\u0005"+
		"\r\u0000\u0000CD\u0003\n\u0005\u0000DE\u0005\u000e\u0000\u0000E]\u0001"+
		"\u0000\u0000\u0000FG\u0003\u0006\u0003\u0000GH\u0005\u000e\u0000\u0000"+
		"H]\u0001\u0000\u0000\u0000IJ\u00050\u0000\u0000JK\u0005\'\u0000\u0000"+
		"KL\u00050\u0000\u0000LM\u0005\r\u0000\u0000MN\u0003\n\u0005\u0000NO\u0005"+
		"\u000e\u0000\u0000O]\u0001\u0000\u0000\u0000P]\u0003\f\u0006\u0000Q]\u0003"+
		"\u0012\t\u0000RS\u0003\n\u0005\u0000ST\u0005\u000e\u0000\u0000T]\u0001"+
		"\u0000\u0000\u0000UV\u0005)\u0000\u0000VW\u0003\n\u0005\u0000WX\u0005"+
		"\u000e\u0000\u0000X]\u0001\u0000\u0000\u0000Y]\u0003\u001e\u000f\u0000"+
		"Z]\u0003 \u0010\u0000[]\u0003(\u0014\u0000\\1\u0001\u0000\u0000\u0000"+
		"\\4\u0001\u0000\u0000\u0000\\=\u0001\u0000\u0000\u0000\\F\u0001\u0000"+
		"\u0000\u0000\\I\u0001\u0000\u0000\u0000\\P\u0001\u0000\u0000\u0000\\Q"+
		"\u0001\u0000\u0000\u0000\\R\u0001\u0000\u0000\u0000\\U\u0001\u0000\u0000"+
		"\u0000\\Y\u0001\u0000\u0000\u0000\\Z\u0001\u0000\u0000\u0000\\[\u0001"+
		"\u0000\u0000\u0000]\u0003\u0001\u0000\u0000\u0000^c\u0005\u0002\u0000"+
		"\u0000_`\u0005\u0002\u0000\u0000`c\u0003\b\u0004\u0000ac\u0003\b\u0004"+
		"\u0000b^\u0001\u0000\u0000\u0000b_\u0001\u0000\u0000\u0000ba\u0001\u0000"+
		"\u0000\u0000cd\u0001\u0000\u0000\u0000de\u00050\u0000\u0000ef\u0005\r"+
		"\u0000\u0000fg\u0003\n\u0005\u0000g\u0005\u0001\u0000\u0000\u0000hi\u0005"+
		"0\u0000\u0000ij\u0005\r\u0000\u0000jk\u0003\n\u0005\u0000k\u0007\u0001"+
		"\u0000\u0000\u0000lt\u0005\u0007\u0000\u0000mt\u0005\b\u0000\u0000nt\u0005"+
		"\n\u0000\u0000ot\u0005\t\u0000\u0000pt\u0005\u000b\u0000\u0000qt\u0005"+
		"\f\u0000\u0000rt\u00050\u0000\u0000sl\u0001\u0000\u0000\u0000sm\u0001"+
		"\u0000\u0000\u0000sn\u0001\u0000\u0000\u0000so\u0001\u0000\u0000\u0000"+
		"sp\u0001\u0000\u0000\u0000sq\u0001\u0000\u0000\u0000sr\u0001\u0000\u0000"+
		"\u0000t\t\u0001\u0000\u0000\u0000uv\u0006\u0005\uffff\uffff\u0000v\u00be"+
		"\u0005\u0011\u0000\u0000w\u00be\u0005\u000f\u0000\u0000x\u00be\u0005\u0010"+
		"\u0000\u0000y\u00be\u0005\u0012\u0000\u0000z\u0081\u0005\"\u0000\u0000"+
		"{}\u0003\n\u0005\u0000|~\u0005&\u0000\u0000}|\u0001\u0000\u0000\u0000"+
		"}~\u0001\u0000\u0000\u0000~\u0080\u0001\u0000\u0000\u0000\u007f{\u0001"+
		"\u0000\u0000\u0000\u0080\u0083\u0001\u0000\u0000\u0000\u0081\u007f\u0001"+
		"\u0000\u0000\u0000\u0081\u0082\u0001\u0000\u0000\u0000\u0082\u0084\u0001"+
		"\u0000\u0000\u0000\u0083\u0081\u0001\u0000\u0000\u0000\u0084\u00be\u0005"+
		"#\u0000\u0000\u0085\u0086\u0005\u0014\u0000\u0000\u0086\u00be\u0003\n"+
		"\u0005\f\u0087\u0088\u0005\u0013\u0000\u0000\u0088\u00be\u0003\n\u0005"+
		"\u000b\u0089\u008a\u0005\u001f\u0000\u0000\u008a\u00be\u0003\n\u0005\n"+
		"\u008b\u008c\u0005\u0013\u0000\u0000\u008c\u008d\u0005\u0013\u0000\u0000"+
		"\u008d\u00be\u00050\u0000\u0000\u008e\u008f\u00050\u0000\u0000\u008f\u0090"+
		"\u0005\u0013\u0000\u0000\u0090\u00be\u0005\u0013\u0000\u0000\u0091\u0092"+
		"\u0005\u0014\u0000\u0000\u0092\u0093\u0005\u0014\u0000\u0000\u0093\u00be"+
		"\u00050\u0000\u0000\u0094\u0095\u00050\u0000\u0000\u0095\u0096\u0005\u0014"+
		"\u0000\u0000\u0096\u00be\u0005\u0014\u0000\u0000\u0097\u0098\u0005 \u0000"+
		"\u0000\u0098\u0099\u0003\n\u0005\u0000\u0099\u009a\u0005!\u0000\u0000"+
		"\u009a\u00be\u0001\u0000\u0000\u0000\u009b\u00be\u00050\u0000\u0000\u009c"+
		"\u009d\u00050\u0000\u0000\u009d\u00a3\u0005 \u0000\u0000\u009e\u009f\u0003"+
		"\n\u0005\u0000\u009f\u00a0\u0005&\u0000\u0000\u00a0\u00a2\u0001\u0000"+
		"\u0000\u0000\u00a1\u009e\u0001\u0000\u0000\u0000\u00a2\u00a5\u0001\u0000"+
		"\u0000\u0000\u00a3\u00a1\u0001\u0000\u0000\u0000\u00a3\u00a4\u0001\u0000"+
		"\u0000\u0000\u00a4\u00a7\u0001\u0000\u0000\u0000\u00a5\u00a3\u0001\u0000"+
		"\u0000\u0000\u00a6\u00a8\u0003\n\u0005\u0000\u00a7\u00a6\u0001\u0000\u0000"+
		"\u0000\u00a7\u00a8\u0001\u0000\u0000\u0000\u00a8\u00a9\u0001\u0000\u0000"+
		"\u0000\u00a9\u00be\u0005!\u0000\u0000\u00aa\u00ab\u00050\u0000\u0000\u00ab"+
		"\u00ac\u0005\'\u0000\u0000\u00ac\u00be\u00050\u0000\u0000\u00ad\u00ae"+
		"\u00050\u0000\u0000\u00ae\u00af\u0005\'\u0000\u0000\u00af\u00b0\u0005"+
		"0\u0000\u0000\u00b0\u00b6\u0005 \u0000\u0000\u00b1\u00b2\u0003\n\u0005"+
		"\u0000\u00b2\u00b3\u0005&\u0000\u0000\u00b3\u00b5\u0001\u0000\u0000\u0000"+
		"\u00b4\u00b1\u0001\u0000\u0000\u0000\u00b5\u00b8\u0001\u0000\u0000\u0000"+
		"\u00b6\u00b4\u0001\u0000\u0000\u0000\u00b6\u00b7\u0001\u0000\u0000\u0000"+
		"\u00b7\u00ba\u0001\u0000\u0000\u0000\u00b8\u00b6\u0001\u0000\u0000\u0000"+
		"\u00b9\u00bb\u0003\n\u0005\u0000\u00ba\u00b9\u0001\u0000\u0000\u0000\u00ba"+
		"\u00bb\u0001\u0000\u0000\u0000\u00bb\u00bc\u0001\u0000\u0000\u0000\u00bc"+
		"\u00be\u0005!\u0000\u0000\u00bdu\u0001\u0000\u0000\u0000\u00bdw\u0001"+
		"\u0000\u0000\u0000\u00bdx\u0001\u0000\u0000\u0000\u00bdy\u0001\u0000\u0000"+
		"\u0000\u00bdz\u0001\u0000\u0000\u0000\u00bd\u0085\u0001\u0000\u0000\u0000"+
		"\u00bd\u0087\u0001\u0000\u0000\u0000\u00bd\u0089\u0001\u0000\u0000\u0000"+
		"\u00bd\u008b\u0001\u0000\u0000\u0000\u00bd\u008e\u0001\u0000\u0000\u0000"+
		"\u00bd\u0091\u0001\u0000\u0000\u0000\u00bd\u0094\u0001\u0000\u0000\u0000"+
		"\u00bd\u0097\u0001\u0000\u0000\u0000\u00bd\u009b\u0001\u0000\u0000\u0000"+
		"\u00bd\u009c\u0001\u0000\u0000\u0000\u00bd\u00aa\u0001\u0000\u0000\u0000"+
		"\u00bd\u00ad\u0001\u0000\u0000\u0000\u00be\u00e2\u0001\u0000\u0000\u0000"+
		"\u00bf\u00c0\n\u0017\u0000\u0000\u00c0\u00c1\u0005\u0013\u0000\u0000\u00c1"+
		"\u00e1\u0003\n\u0005\u0018\u00c2\u00c3\n\u0016\u0000\u0000\u00c3\u00c4"+
		"\u0005\u0014\u0000\u0000\u00c4\u00e1\u0003\n\u0005\u0017\u00c5\u00c6\n"+
		"\u0015\u0000\u0000\u00c6\u00c7\u0005\u0016\u0000\u0000\u00c7\u00e1\u0003"+
		"\n\u0005\u0016\u00c8\u00c9\n\u0014\u0000\u0000\u00c9\u00ca\u0005\u0015"+
		"\u0000\u0000\u00ca\u00e1\u0003\n\u0005\u0015\u00cb\u00cc\n\u0013\u0000"+
		"\u0000\u00cc\u00cd\u0005\u001d\u0000\u0000\u00cd\u00e1\u0003\n\u0005\u0014"+
		"\u00ce\u00cf\n\u0012\u0000\u0000\u00cf\u00d0\u0005\u001e\u0000\u0000\u00d0"+
		"\u00e1\u0003\n\u0005\u0013\u00d1\u00d2\n\u0011\u0000\u0000\u00d2\u00d3"+
		"\u0005\u001a\u0000\u0000\u00d3\u00e1\u0003\n\u0005\u0012\u00d4\u00d5\n"+
		"\u0010\u0000\u0000\u00d5\u00d6\u0005\u001b\u0000\u0000\u00d6\u00e1\u0003"+
		"\n\u0005\u0011\u00d7\u00d8\n\u000f\u0000\u0000\u00d8\u00d9\u0005\u0018"+
		"\u0000\u0000\u00d9\u00e1\u0003\n\u0005\u0010\u00da\u00db\n\u000e\u0000"+
		"\u0000\u00db\u00dc\u0005\u0019\u0000\u0000\u00dc\u00e1\u0003\n\u0005\u000f"+
		"\u00dd\u00de\n\r\u0000\u0000\u00de\u00df\u0005\u001c\u0000\u0000\u00df"+
		"\u00e1\u0003\n\u0005\u000e\u00e0\u00bf\u0001\u0000\u0000\u0000\u00e0\u00c2"+
		"\u0001\u0000\u0000\u0000\u00e0\u00c5\u0001\u0000\u0000\u0000\u00e0\u00c8"+
		"\u0001\u0000\u0000\u0000\u00e0\u00cb\u0001\u0000\u0000\u0000\u00e0\u00ce"+
		"\u0001\u0000\u0000\u0000\u00e0\u00d1\u0001\u0000\u0000\u0000\u00e0\u00d4"+
		"\u0001\u0000\u0000\u0000\u00e0\u00d7\u0001\u0000\u0000\u0000\u00e0\u00da"+
		"\u0001\u0000\u0000\u0000\u00e0\u00dd\u0001\u0000\u0000\u0000\u00e1\u00e4"+
		"\u0001\u0000\u0000\u0000\u00e2\u00e0\u0001\u0000\u0000\u0000\u00e2\u00e3"+
		"\u0001\u0000\u0000\u0000\u00e3\u000b\u0001\u0000\u0000\u0000\u00e4\u00e2"+
		"\u0001\u0000\u0000\u0000\u00e5\u00e6\u0003\b\u0004\u0000\u00e6\u00e7\u0005"+
		"0\u0000\u0000\u00e7\u00ed\u0005 \u0000\u0000\u00e8\u00e9\u0003\u000e\u0007"+
		"\u0000\u00e9\u00ea\u0005&\u0000\u0000\u00ea\u00ec\u0001\u0000\u0000\u0000"+
		"\u00eb\u00e8\u0001\u0000\u0000\u0000\u00ec\u00ef\u0001\u0000\u0000\u0000"+
		"\u00ed\u00eb\u0001\u0000\u0000\u0000\u00ed\u00ee\u0001\u0000\u0000\u0000"+
		"\u00ee\u00f1\u0001\u0000\u0000\u0000\u00ef\u00ed\u0001\u0000\u0000\u0000"+
		"\u00f0\u00f2\u0003\u000e\u0007\u0000\u00f1\u00f0\u0001\u0000\u0000\u0000"+
		"\u00f1\u00f2\u0001\u0000\u0000\u0000\u00f2\u00f3\u0001\u0000\u0000\u0000"+
		"\u00f3\u00f4\u0005!\u0000\u0000\u00f4\u00f5\u0003\u0010\b\u0000\u00f5"+
		"\r\u0001\u0000\u0000\u0000\u00f6\u00fa\u0003\b\u0004\u0000\u00f7\u00f8"+
		"\u0005\u0006\u0000\u0000\u00f8\u00fa\u0005\'\u0000\u0000\u00f9\u00f6\u0001"+
		"\u0000\u0000\u0000\u00f9\u00f7\u0001\u0000\u0000\u0000\u00fa\u00fb\u0001"+
		"\u0000\u0000\u0000\u00fb\u00fc\u00050\u0000\u0000\u00fc\u000f\u0001\u0000"+
		"\u0000\u0000\u00fd\u0101\u0005$\u0000\u0000\u00fe\u0100\u0003\u0002\u0001"+
		"\u0000\u00ff\u00fe\u0001\u0000\u0000\u0000\u0100\u0103\u0001\u0000\u0000"+
		"\u0000\u0101\u00ff\u0001\u0000\u0000\u0000\u0101\u0102\u0001\u0000\u0000"+
		"\u0000\u0102\u0104\u0001\u0000\u0000\u0000\u0103\u0101\u0001\u0000\u0000"+
		"\u0000\u0104\u0105\u0005%\u0000\u0000\u0105\u0011\u0001\u0000\u0000\u0000"+
		"\u0106\u0107\u0005\u0005\u0000\u0000\u0107\u010a\u00050\u0000\u0000\u0108"+
		"\u0109\u0005*\u0000\u0000\u0109\u010b\u00050\u0000\u0000\u010a\u0108\u0001"+
		"\u0000\u0000\u0000\u010a\u010b\u0001\u0000\u0000\u0000\u010b\u010c\u0001"+
		"\u0000\u0000\u0000\u010c\u0110\u0005$\u0000\u0000\u010d\u010f\u0003\u0014"+
		"\n\u0000\u010e\u010d\u0001\u0000\u0000\u0000\u010f\u0112\u0001\u0000\u0000"+
		"\u0000\u0110\u010e\u0001\u0000\u0000\u0000\u0110\u0111\u0001\u0000\u0000"+
		"\u0000\u0111\u0113\u0001\u0000\u0000\u0000\u0112\u0110\u0001\u0000\u0000"+
		"\u0000\u0113\u0114\u0005%\u0000\u0000\u0114\u0013\u0001\u0000\u0000\u0000"+
		"\u0115\u0116\u0003\b\u0004\u0000\u0116\u0119\u00050\u0000\u0000\u0117"+
		"\u0118\u0005\r\u0000\u0000\u0118\u011a\u0003\n\u0005\u0000\u0119\u0117"+
		"\u0001\u0000\u0000\u0000\u0119\u011a\u0001\u0000\u0000\u0000\u011a\u011b"+
		"\u0001\u0000\u0000\u0000\u011b\u011c\u0005\u000e\u0000\u0000\u011c\u0153"+
		"\u0001\u0000\u0000\u0000\u011d\u011f\u0005\u0003\u0000\u0000\u011e\u0120"+
		"\u0003\b\u0004\u0000\u011f\u011e\u0001\u0000\u0000\u0000\u011f\u0120\u0001"+
		"\u0000\u0000\u0000\u0120\u0121\u0001\u0000\u0000\u0000\u0121\u0124\u0005"+
		"0\u0000\u0000\u0122\u0123\u0005\r\u0000\u0000\u0123\u0125\u0003\n\u0005"+
		"\u0000\u0124\u0122\u0001\u0000\u0000\u0000\u0124\u0125\u0001\u0000\u0000"+
		"\u0000\u0125\u0126\u0001\u0000\u0000\u0000\u0126\u0153\u0005\u000e\u0000"+
		"\u0000\u0127\u0128\u00050\u0000\u0000\u0128\u012e\u0005 \u0000\u0000\u0129"+
		"\u012a\u0003\u000e\u0007\u0000\u012a\u012b\u0005&\u0000\u0000\u012b\u012d"+
		"\u0001\u0000\u0000\u0000\u012c\u0129\u0001\u0000\u0000\u0000\u012d\u0130"+
		"\u0001\u0000\u0000\u0000\u012e\u012c\u0001\u0000\u0000\u0000\u012e\u012f"+
		"\u0001\u0000\u0000\u0000\u012f\u0132\u0001\u0000\u0000\u0000\u0130\u012e"+
		"\u0001\u0000\u0000\u0000\u0131\u0133\u0003\u000e\u0007\u0000\u0132\u0131"+
		"\u0001\u0000\u0000\u0000\u0132\u0133\u0001\u0000\u0000\u0000\u0133\u0134"+
		"\u0001\u0000\u0000\u0000\u0134\u0137\u0005!\u0000\u0000\u0135\u0138\u0003"+
		"\u0010\b\u0000\u0136\u0138\u0005\u000e\u0000\u0000\u0137\u0135\u0001\u0000"+
		"\u0000\u0000\u0137\u0136\u0001\u0000\u0000\u0000\u0138\u0153\u0001\u0000"+
		"\u0000\u0000\u0139\u013a\u00050\u0000\u0000\u013a\u013b\u0005\'\u0000"+
		"\u0000\u013b\u013c\u00050\u0000\u0000\u013c\u0142\u0005 \u0000\u0000\u013d"+
		"\u013e\u0003\u000e\u0007\u0000\u013e\u013f\u0005&\u0000\u0000\u013f\u0141"+
		"\u0001\u0000\u0000\u0000\u0140\u013d\u0001\u0000\u0000\u0000\u0141\u0144"+
		"\u0001\u0000\u0000\u0000\u0142\u0140\u0001\u0000\u0000\u0000\u0142\u0143"+
		"\u0001\u0000\u0000\u0000\u0143\u0146\u0001\u0000\u0000\u0000\u0144\u0142"+
		"\u0001\u0000\u0000\u0000\u0145\u0147\u0003\u000e\u0007\u0000\u0146\u0145"+
		"\u0001\u0000\u0000\u0000\u0146\u0147\u0001\u0000\u0000\u0000\u0147\u0148"+
		"\u0001\u0000\u0000\u0000\u0148\u014b\u0005!\u0000\u0000\u0149\u014a\u0005"+
		"(\u0000\u0000\u014a\u014c\u0003\u0016\u000b\u0000\u014b\u0149\u0001\u0000"+
		"\u0000\u0000\u014b\u014c\u0001\u0000\u0000\u0000\u014c\u014f\u0001\u0000"+
		"\u0000\u0000\u014d\u0150\u0003\u0010\b\u0000\u014e\u0150\u0005\u000e\u0000"+
		"\u0000\u014f\u014d\u0001\u0000\u0000\u0000\u014f\u014e\u0001\u0000\u0000"+
		"\u0000\u0150\u0153\u0001\u0000\u0000\u0000\u0151\u0153\u0003\f\u0006\u0000"+
		"\u0152\u0115\u0001\u0000\u0000\u0000\u0152\u011d\u0001\u0000\u0000\u0000"+
		"\u0152\u0127\u0001\u0000\u0000\u0000\u0152\u0139\u0001\u0000\u0000\u0000"+
		"\u0152\u0151\u0001\u0000\u0000\u0000\u0153\u0015\u0001\u0000\u0000\u0000"+
		"\u0154\u0155\u0005\u0006\u0000\u0000\u0155\u015b\u0005 \u0000\u0000\u0156"+
		"\u0157\u0003\n\u0005\u0000\u0157\u0158\u0005&\u0000\u0000\u0158\u015a"+
		"\u0001\u0000\u0000\u0000\u0159\u0156\u0001\u0000\u0000\u0000\u015a\u015d"+
		"\u0001\u0000\u0000\u0000\u015b\u0159\u0001\u0000\u0000\u0000\u015b\u015c"+
		"\u0001\u0000\u0000\u0000\u015c\u0162\u0001\u0000\u0000\u0000\u015d\u015b"+
		"\u0001\u0000\u0000\u0000\u015e\u0160\u0003\n\u0005\u0000\u015f\u0161\u0005"+
		"&\u0000\u0000\u0160\u015f\u0001\u0000\u0000\u0000\u0160\u0161\u0001\u0000"+
		"\u0000\u0000\u0161\u0163\u0001\u0000\u0000\u0000\u0162\u015e\u0001\u0000"+
		"\u0000\u0000\u0162\u0163\u0001\u0000\u0000\u0000\u0163\u0164\u0001\u0000"+
		"\u0000\u0000\u0164\u0165\u0005!\u0000\u0000\u0165\u0017\u0001\u0000\u0000"+
		"\u0000\u0166\u0167\u0005+\u0000\u0000\u0167\u0168\u0005 \u0000\u0000\u0168"+
		"\u0169\u0003\n\u0005\u0000\u0169\u016a\u0005!\u0000\u0000\u016a\u016b"+
		"\u0003\u0010\b\u0000\u016b\u0019\u0001\u0000\u0000\u0000\u016c\u016d\u0005"+
		",\u0000\u0000\u016d\u016e\u0005+\u0000\u0000\u016e\u016f\u0005 \u0000"+
		"\u0000\u016f\u0170\u0003\n\u0005\u0000\u0170\u0171\u0005!\u0000\u0000"+
		"\u0171\u0172\u0003\u0010\b\u0000\u0172\u001b\u0001\u0000\u0000\u0000\u0173"+
		"\u0174\u0005,\u0000\u0000\u0174\u0175\u0003\u0010\b\u0000\u0175\u001d"+
		"\u0001\u0000\u0000\u0000\u0176\u017a\u0003\u0018\f\u0000\u0177\u0179\u0003"+
		"\u001a\r\u0000\u0178\u0177\u0001\u0000\u0000\u0000\u0179\u017c\u0001\u0000"+
		"\u0000\u0000\u017a\u0178\u0001\u0000\u0000\u0000\u017a\u017b\u0001\u0000"+
		"\u0000\u0000\u017b\u017e\u0001\u0000\u0000\u0000\u017c\u017a\u0001\u0000"+
		"\u0000\u0000\u017d\u017f\u0003\u001c\u000e\u0000\u017e\u017d\u0001\u0000"+
		"\u0000\u0000\u017e\u017f\u0001\u0000\u0000\u0000\u017f\u001f\u0001\u0000"+
		"\u0000\u0000\u0180\u0181\u0005-\u0000\u0000\u0181\u0182\u0005 \u0000\u0000"+
		"\u0182\u0183\u0003\n\u0005\u0000\u0183\u0184\u0005!\u0000\u0000\u0184"+
		"\u0185\u0003\u0010\b\u0000\u0185!\u0001\u0000\u0000\u0000\u0186\u018a"+
		"\u0003\u0004\u0002\u0000\u0187\u018a\u0003\u0006\u0003\u0000\u0188\u018a"+
		"\u0003\n\u0005\u0000\u0189\u0186\u0001\u0000\u0000\u0000\u0189\u0187\u0001"+
		"\u0000\u0000\u0000\u0189\u0188\u0001\u0000\u0000\u0000\u018a#\u0001\u0000"+
		"\u0000\u0000\u018b\u018e\u0005\u0002\u0000\u0000\u018c\u018e\u0003\b\u0004"+
		"\u0000\u018d\u018b\u0001\u0000\u0000\u0000\u018d\u018c\u0001\u0000\u0000"+
		"\u0000\u018e\u018f\u0001\u0000\u0000\u0000\u018f\u0190\u00050\u0000\u0000"+
		"\u0190%\u0001\u0000\u0000\u0000\u0191\u0192\u0003\"\u0011\u0000\u0192"+
		"\u0193\u0005\u000e\u0000\u0000\u0193\u0194\u0003\n\u0005\u0000\u0194\u0195"+
		"\u0005\u000e\u0000\u0000\u0195\u0196\u0003\"\u0011\u0000\u0196\u019c\u0001"+
		"\u0000\u0000\u0000\u0197\u0198\u0003$\u0012\u0000\u0198\u0199\u0005/\u0000"+
		"\u0000\u0199\u019a\u0003\n\u0005\u0000\u019a\u019c\u0001\u0000\u0000\u0000"+
		"\u019b\u0191\u0001\u0000\u0000\u0000\u019b\u0197\u0001\u0000\u0000\u0000"+
		"\u019c\'\u0001\u0000\u0000\u0000\u019d\u019e\u0005.\u0000\u0000\u019e"+
		"\u019f\u0005 \u0000\u0000\u019f\u01a0\u0003&\u0013\u0000\u01a0\u01a1\u0005"+
		"!\u0000\u0000\u01a1\u01a2\u0003\u0010\b\u0000\u01a2)\u0001\u0000\u0000"+
		"\u0000(-6?\\bs}\u0081\u00a3\u00a7\u00b6\u00ba\u00bd\u00e0\u00e2\u00ed"+
		"\u00f1\u00f9\u0101\u010a\u0110\u0119\u011f\u0124\u012e\u0132\u0137\u0142"+
		"\u0146\u014b\u014f\u0152\u015b\u0160\u0162\u017a\u017e\u0189\u018d\u019b";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}