// Generated from d://Progetti personali//dart2kotlin//dart2ast_engine//antrl4//DartParser.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'DartParserListener.dart';
import 'DartParserBaseListener.dart';
const int RULE_dartFile = 0, RULE_line = 1, RULE_statement = 2, RULE_type = 3, 
          RULE_variableDeclaration = 4, RULE_assigment = 5, RULE_expression = 6;
class DartParser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.1', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int TOKEN_NEWLINE = 1, TOKEN_WS = 2, TOKEN_VAR = 3, TOKEN_FINAL = 4, 
                   TOKEN_CONST = 5, TOKEN_INT = 6, TOKEN_DOUBLE = 7, TOKEN_STRING = 8, 
                   TOKEN_BOOL = 9, TOKEN_ASSIGN = 10, TOKEN_SEMICOLON = 11, 
                   TOKEN_INTLIT = 12, TOKEN_DOUBLELIT = 13, TOKEN_BOOLLIT = 14, 
                   TOKEN_STRINGLIT = 15, TOKEN_UnterminatedStringLiteral = 16, 
                   TOKEN_ID = 17;

  @override
  final List<String> ruleNames = [
    'dartFile', 'line', 'statement', 'type', 'variableDeclaration', 'assigment', 
    'expression'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, null, null, "'var'", "'final'", "'const'", "'int'", "'double'", 
      "'String'", "'bool'", "'='", "';'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, "NEWLINE", "WS", "VAR", "FINAL", "CONST", "INT", "DOUBLE", "STRING", 
      "BOOL", "ASSIGN", "SEMICOLON", "INTLIT", "DOUBLELIT", "BOOLLIT", "STRINGLIT", 
      "UnterminatedStringLiteral", "ID"
  ];
  static final Vocabulary VOCABULARY = VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

  @override
  Vocabulary get vocabulary {
    return VOCABULARY;
  }

  @override
  String get grammarFileName => 'DartParser.g4';

  @override
  List<int> get serializedATN => _serializedATN;

  @override
  ATN getATN() {
   return _ATN;
  }

  DartParser(TokenStream input) : super(input) {
    interpreter = ParserATNSimulator(this, _ATN, _decisionToDFA, _sharedContextCache);
  }

  DartFileContext dartFile() {
    dynamic _localctx = DartFileContext(context, state);
    enterRule(_localctx, 0, RULE_dartFile);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 15; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 14;
        line();
        state = 17; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 132088) != 0));
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  LineContext line() {
    dynamic _localctx = LineContext(context, state);
    enterRule(_localctx, 2, RULE_line);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 19;
      statement();
      state = 20;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_EOF || _la == TOKEN_NEWLINE)) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  StatementContext statement() {
    dynamic _localctx = StatementContext(context, state);
    enterRule(_localctx, 4, RULE_statement);
    try {
      state = 24;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 1, context)) {
      case 1:
        _localctx = VariableDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 22;
        variableDeclaration();
        break;
      case 2:
        _localctx = AssigmentStatementContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 23;
        assigment();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TypeContext type() {
    dynamic _localctx = TypeContext(context, state);
    enterRule(_localctx, 6, RULE_type);
    try {
      state = 31;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_INT:
        _localctx = IntTypeContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 26;
        match(TOKEN_INT);
        break;
      case TOKEN_DOUBLE:
        _localctx = DoubleTypeContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 27;
        match(TOKEN_DOUBLE);
        break;
      case TOKEN_BOOL:
        _localctx = BoolTypeContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 28;
        match(TOKEN_BOOL);
        break;
      case TOKEN_STRING:
        _localctx = StringTypeContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 29;
        match(TOKEN_STRING);
        break;
      case TOKEN_ID:
        _localctx = CustomTypeContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 30;
        match(TOKEN_ID);
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  VariableDeclarationContext variableDeclaration() {
    dynamic _localctx = VariableDeclarationContext(context, state);
    enterRule(_localctx, 8, RULE_variableDeclaration);
    int _la;
    try {
      state = 68;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_VAR:
      case TOKEN_INT:
      case TOKEN_DOUBLE:
      case TOKEN_STRING:
      case TOKEN_BOOL:
      case TOKEN_ID:
        _localctx = VarDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 43;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 4, context)) {
        case 1:
          state = 33;
          match(TOKEN_VAR);
          break;
        case 2:
          state = 34;
          match(TOKEN_VAR);
          state = 38;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          while (_la == TOKEN_NEWLINE) {
            state = 35;
            match(TOKEN_NEWLINE);
            state = 40;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
          }
          state = 41;
          type();
          break;
        case 3:
          state = 42;
          type();
          break;
        }
        state = 48;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_NEWLINE) {
          state = 45;
          match(TOKEN_NEWLINE);
          state = 50;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 51;
        match(TOKEN_ID);
        state = 52;
        match(TOKEN_ASSIGN);
        state = 53;
        expression();
        break;
      case TOKEN_FINAL:
        _localctx = FinalDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 54;
        match(TOKEN_FINAL);
        state = 56;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 6, context)) {
        case 1:
          state = 55;
          type();
          break;
        }
        state = 58;
        match(TOKEN_ID);
        state = 59;
        match(TOKEN_ASSIGN);
        state = 60;
        expression();
        break;
      case TOKEN_CONST:
        _localctx = ConstDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 61;
        match(TOKEN_CONST);
        state = 63;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 7, context)) {
        case 1:
          state = 62;
          type();
          break;
        }
        state = 65;
        match(TOKEN_ID);
        state = 66;
        match(TOKEN_ASSIGN);
        state = 67;
        expression();
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  AssigmentContext assigment() {
    dynamic _localctx = AssigmentContext(context, state);
    enterRule(_localctx, 10, RULE_assigment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 70;
      match(TOKEN_ID);
      state = 71;
      match(TOKEN_ASSIGN);
      state = 72;
      expression();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ExpressionContext expression() {
    dynamic _localctx = ExpressionContext(context, state);
    enterRule(_localctx, 12, RULE_expression);
    try {
      state = 78;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_BOOLLIT:
        _localctx = BoolLiteralExpressionContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 74;
        match(TOKEN_BOOLLIT);
        break;
      case TOKEN_INTLIT:
        _localctx = IntLiteralExpressionContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 75;
        match(TOKEN_INTLIT);
        break;
      case TOKEN_DOUBLELIT:
        _localctx = DoubleLiteralExpressionContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 76;
        match(TOKEN_DOUBLELIT);
        break;
      case TOKEN_STRINGLIT:
        _localctx = StringLiteralExpressionContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 77;
        match(TOKEN_STRINGLIT);
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  static const List<int> _serializedATN = [
      4,1,17,81,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      1,0,4,0,16,8,0,11,0,12,0,17,1,1,1,1,1,1,1,2,1,2,3,2,25,8,2,1,3,1,3,
      1,3,1,3,1,3,3,3,32,8,3,1,4,1,4,1,4,5,4,37,8,4,10,4,12,4,40,9,4,1,4,
      1,4,3,4,44,8,4,1,4,5,4,47,8,4,10,4,12,4,50,9,4,1,4,1,4,1,4,1,4,1,4,
      3,4,57,8,4,1,4,1,4,1,4,1,4,1,4,3,4,64,8,4,1,4,1,4,1,4,3,4,69,8,4,1,
      5,1,5,1,5,1,5,1,6,1,6,1,6,1,6,3,6,79,8,6,1,6,0,0,7,0,2,4,6,8,10,12,
      0,1,1,1,1,1,90,0,15,1,0,0,0,2,19,1,0,0,0,4,24,1,0,0,0,6,31,1,0,0,0,
      8,68,1,0,0,0,10,70,1,0,0,0,12,78,1,0,0,0,14,16,3,2,1,0,15,14,1,0,0,
      0,16,17,1,0,0,0,17,15,1,0,0,0,17,18,1,0,0,0,18,1,1,0,0,0,19,20,3,4,
      2,0,20,21,7,0,0,0,21,3,1,0,0,0,22,25,3,8,4,0,23,25,3,10,5,0,24,22,
      1,0,0,0,24,23,1,0,0,0,25,5,1,0,0,0,26,32,5,6,0,0,27,32,5,7,0,0,28,
      32,5,9,0,0,29,32,5,8,0,0,30,32,5,17,0,0,31,26,1,0,0,0,31,27,1,0,0,
      0,31,28,1,0,0,0,31,29,1,0,0,0,31,30,1,0,0,0,32,7,1,0,0,0,33,44,5,3,
      0,0,34,38,5,3,0,0,35,37,5,1,0,0,36,35,1,0,0,0,37,40,1,0,0,0,38,36,
      1,0,0,0,38,39,1,0,0,0,39,41,1,0,0,0,40,38,1,0,0,0,41,44,3,6,3,0,42,
      44,3,6,3,0,43,33,1,0,0,0,43,34,1,0,0,0,43,42,1,0,0,0,44,48,1,0,0,0,
      45,47,5,1,0,0,46,45,1,0,0,0,47,50,1,0,0,0,48,46,1,0,0,0,48,49,1,0,
      0,0,49,51,1,0,0,0,50,48,1,0,0,0,51,52,5,17,0,0,52,53,5,10,0,0,53,69,
      3,12,6,0,54,56,5,4,0,0,55,57,3,6,3,0,56,55,1,0,0,0,56,57,1,0,0,0,57,
      58,1,0,0,0,58,59,5,17,0,0,59,60,5,10,0,0,60,69,3,12,6,0,61,63,5,5,
      0,0,62,64,3,6,3,0,63,62,1,0,0,0,63,64,1,0,0,0,64,65,1,0,0,0,65,66,
      5,17,0,0,66,67,5,10,0,0,67,69,3,12,6,0,68,43,1,0,0,0,68,54,1,0,0,0,
      68,61,1,0,0,0,69,9,1,0,0,0,70,71,5,17,0,0,71,72,5,10,0,0,72,73,3,12,
      6,0,73,11,1,0,0,0,74,79,5,14,0,0,75,79,5,12,0,0,76,79,5,13,0,0,77,
      79,5,15,0,0,78,74,1,0,0,0,78,75,1,0,0,0,78,76,1,0,0,0,78,77,1,0,0,
      0,79,13,1,0,0,0,10,17,24,31,38,43,48,56,63,68,78
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}
class DartFileContext extends ParserRuleContext {
  List<LineContext> lines() => getRuleContexts<LineContext>();
  LineContext? line(int i) => getRuleContext<LineContext>(i);
  DartFileContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_dartFile;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterDartFile(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitDartFile(this);
  }
}

class LineContext extends ParserRuleContext {
  StatementContext? statement() => getRuleContext<StatementContext>(0);
  TerminalNode? NEWLINE() => getToken(DartParser.TOKEN_NEWLINE, 0);
  TerminalNode? EOF() => getToken(DartParser.TOKEN_EOF, 0);
  LineContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_line;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterLine(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitLine(this);
  }
}

class StatementContext extends ParserRuleContext {
  StatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_statement;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class TypeContext extends ParserRuleContext {
  TypeContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_type;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class VariableDeclarationContext extends ParserRuleContext {
  VariableDeclarationContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_variableDeclaration;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class AssigmentContext extends ParserRuleContext {
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  TerminalNode? ASSIGN() => getToken(DartParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  AssigmentContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_assigment;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterAssigment(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitAssigment(this);
  }
}

class ExpressionContext extends ParserRuleContext {
  ExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_expression;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class VariableDeclarationStatementContext extends StatementContext {
  VariableDeclarationContext? variableDeclaration() => getRuleContext<VariableDeclarationContext>(0);
  VariableDeclarationStatementContext(StatementContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterVariableDeclarationStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitVariableDeclarationStatement(this);
  }
}

class AssigmentStatementContext extends StatementContext {
  AssigmentContext? assigment() => getRuleContext<AssigmentContext>(0);
  AssigmentStatementContext(StatementContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterAssigmentStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitAssigmentStatement(this);
  }
}class CustomTypeContext extends TypeContext {
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  CustomTypeContext(TypeContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterCustomType(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitCustomType(this);
  }
}

class BoolTypeContext extends TypeContext {
  TerminalNode? BOOL() => getToken(DartParser.TOKEN_BOOL, 0);
  BoolTypeContext(TypeContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterBoolType(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitBoolType(this);
  }
}

class StringTypeContext extends TypeContext {
  TerminalNode? STRING() => getToken(DartParser.TOKEN_STRING, 0);
  StringTypeContext(TypeContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterStringType(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitStringType(this);
  }
}

class DoubleTypeContext extends TypeContext {
  TerminalNode? DOUBLE() => getToken(DartParser.TOKEN_DOUBLE, 0);
  DoubleTypeContext(TypeContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterDoubleType(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitDoubleType(this);
  }
}

class IntTypeContext extends TypeContext {
  TerminalNode? INT() => getToken(DartParser.TOKEN_INT, 0);
  IntTypeContext(TypeContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterIntType(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitIntType(this);
  }
}class VarDeclarationStatementContext extends VariableDeclarationContext {
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  TerminalNode? ASSIGN() => getToken(DartParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? VAR() => getToken(DartParser.TOKEN_VAR, 0);
  TypeContext? type() => getRuleContext<TypeContext>(0);
  List<TerminalNode> NEWLINEs() => getTokens(DartParser.TOKEN_NEWLINE);
  TerminalNode? NEWLINE(int i) => getToken(DartParser.TOKEN_NEWLINE, i);
  VarDeclarationStatementContext(VariableDeclarationContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterVarDeclarationStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitVarDeclarationStatement(this);
  }
}

class ConstDeclarationStatementContext extends VariableDeclarationContext {
  TerminalNode? CONST() => getToken(DartParser.TOKEN_CONST, 0);
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  TerminalNode? ASSIGN() => getToken(DartParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TypeContext? type() => getRuleContext<TypeContext>(0);
  ConstDeclarationStatementContext(VariableDeclarationContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterConstDeclarationStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitConstDeclarationStatement(this);
  }
}

class FinalDeclarationStatementContext extends VariableDeclarationContext {
  TerminalNode? FINAL() => getToken(DartParser.TOKEN_FINAL, 0);
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  TerminalNode? ASSIGN() => getToken(DartParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TypeContext? type() => getRuleContext<TypeContext>(0);
  FinalDeclarationStatementContext(VariableDeclarationContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterFinalDeclarationStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitFinalDeclarationStatement(this);
  }
}class DoubleLiteralExpressionContext extends ExpressionContext {
  TerminalNode? DOUBLELIT() => getToken(DartParser.TOKEN_DOUBLELIT, 0);
  DoubleLiteralExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterDoubleLiteralExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitDoubleLiteralExpression(this);
  }
}

class StringLiteralExpressionContext extends ExpressionContext {
  TerminalNode? STRINGLIT() => getToken(DartParser.TOKEN_STRINGLIT, 0);
  StringLiteralExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterStringLiteralExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitStringLiteralExpression(this);
  }
}

class BoolLiteralExpressionContext extends ExpressionContext {
  TerminalNode? BOOLLIT() => getToken(DartParser.TOKEN_BOOLLIT, 0);
  BoolLiteralExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterBoolLiteralExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitBoolLiteralExpression(this);
  }
}

class IntLiteralExpressionContext extends ExpressionContext {
  TerminalNode? INTLIT() => getToken(DartParser.TOKEN_INTLIT, 0);
  IntLiteralExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterIntLiteralExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitIntLiteralExpression(this);
  }
}