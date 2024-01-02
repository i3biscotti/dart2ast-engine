// Generated from /Users/bonfry/Desktop/dart2kotlin/dart2ast_engine/antrl4/DartParser.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

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
      match(TOKEN_SEMICOLON);
      state = 21;
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
      state = 25;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 1, context)) {
      case 1:
        _localctx = VariableDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 23;
        variableDeclaration();
        break;
      case 2:
        _localctx = AssigmentStatementContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 24;
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
      state = 32;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_INT:
        _localctx = IntTypeContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 27;
        match(TOKEN_INT);
        break;
      case TOKEN_DOUBLE:
        _localctx = DoubleTypeContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 28;
        match(TOKEN_DOUBLE);
        break;
      case TOKEN_BOOL:
        _localctx = BoolTypeContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 29;
        match(TOKEN_BOOL);
        break;
      case TOKEN_STRING:
        _localctx = StringTypeContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 30;
        match(TOKEN_STRING);
        break;
      case TOKEN_ID:
        _localctx = CustomTypeContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 31;
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
      state = 69;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_VAR:
      case TOKEN_INT:
      case TOKEN_DOUBLE:
      case TOKEN_STRING:
      case TOKEN_BOOL:
      case TOKEN_ID:
        _localctx = VarDeclarationContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 44;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 4, context)) {
        case 1:
          state = 34;
          match(TOKEN_VAR);
          break;
        case 2:
          state = 35;
          match(TOKEN_VAR);
          state = 39;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          while (_la == TOKEN_NEWLINE) {
            state = 36;
            match(TOKEN_NEWLINE);
            state = 41;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
          }
          state = 42;
          type();
          break;
        case 3:
          state = 43;
          type();
          break;
        }
        state = 49;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_NEWLINE) {
          state = 46;
          match(TOKEN_NEWLINE);
          state = 51;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 52;
        match(TOKEN_ID);
        state = 53;
        match(TOKEN_ASSIGN);
        state = 54;
        expression();
        break;
      case TOKEN_FINAL:
        _localctx = FinalDeclarationContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 55;
        match(TOKEN_FINAL);
        state = 57;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 6, context)) {
        case 1:
          state = 56;
          type();
          break;
        }
        state = 59;
        match(TOKEN_ID);
        state = 60;
        match(TOKEN_ASSIGN);
        state = 61;
        expression();
        break;
      case TOKEN_CONST:
        _localctx = ConstDeclarationContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 62;
        match(TOKEN_CONST);
        state = 64;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 7, context)) {
        case 1:
          state = 63;
          type();
          break;
        }
        state = 66;
        match(TOKEN_ID);
        state = 67;
        match(TOKEN_ASSIGN);
        state = 68;
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
      state = 71;
      match(TOKEN_ID);
      state = 72;
      match(TOKEN_ASSIGN);
      state = 73;
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
      state = 79;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_BOOLLIT:
        _localctx = BoolLiteralExpressionContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 75;
        match(TOKEN_BOOLLIT);
        break;
      case TOKEN_INTLIT:
        _localctx = IntLiteralExpressionContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 76;
        match(TOKEN_INTLIT);
        break;
      case TOKEN_DOUBLELIT:
        _localctx = DoubleLiteralExpressionContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 77;
        match(TOKEN_DOUBLELIT);
        break;
      case TOKEN_STRINGLIT:
        _localctx = StringLiteralExpressionContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 78;
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
      4,1,17,82,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      1,0,4,0,16,8,0,11,0,12,0,17,1,1,1,1,1,1,1,1,1,2,1,2,3,2,26,8,2,1,3,
      1,3,1,3,1,3,1,3,3,3,33,8,3,1,4,1,4,1,4,5,4,38,8,4,10,4,12,4,41,9,4,
      1,4,1,4,3,4,45,8,4,1,4,5,4,48,8,4,10,4,12,4,51,9,4,1,4,1,4,1,4,1,4,
      1,4,3,4,58,8,4,1,4,1,4,1,4,1,4,1,4,3,4,65,8,4,1,4,1,4,1,4,3,4,70,8,
      4,1,5,1,5,1,5,1,5,1,6,1,6,1,6,1,6,3,6,80,8,6,1,6,0,0,7,0,2,4,6,8,10,
      12,0,1,1,1,1,1,91,0,15,1,0,0,0,2,19,1,0,0,0,4,25,1,0,0,0,6,32,1,0,
      0,0,8,69,1,0,0,0,10,71,1,0,0,0,12,79,1,0,0,0,14,16,3,2,1,0,15,14,1,
      0,0,0,16,17,1,0,0,0,17,15,1,0,0,0,17,18,1,0,0,0,18,1,1,0,0,0,19,20,
      3,4,2,0,20,21,5,11,0,0,21,22,7,0,0,0,22,3,1,0,0,0,23,26,3,8,4,0,24,
      26,3,10,5,0,25,23,1,0,0,0,25,24,1,0,0,0,26,5,1,0,0,0,27,33,5,6,0,0,
      28,33,5,7,0,0,29,33,5,9,0,0,30,33,5,8,0,0,31,33,5,17,0,0,32,27,1,0,
      0,0,32,28,1,0,0,0,32,29,1,0,0,0,32,30,1,0,0,0,32,31,1,0,0,0,33,7,1,
      0,0,0,34,45,5,3,0,0,35,39,5,3,0,0,36,38,5,1,0,0,37,36,1,0,0,0,38,41,
      1,0,0,0,39,37,1,0,0,0,39,40,1,0,0,0,40,42,1,0,0,0,41,39,1,0,0,0,42,
      45,3,6,3,0,43,45,3,6,3,0,44,34,1,0,0,0,44,35,1,0,0,0,44,43,1,0,0,0,
      45,49,1,0,0,0,46,48,5,1,0,0,47,46,1,0,0,0,48,51,1,0,0,0,49,47,1,0,
      0,0,49,50,1,0,0,0,50,52,1,0,0,0,51,49,1,0,0,0,52,53,5,17,0,0,53,54,
      5,10,0,0,54,70,3,12,6,0,55,57,5,4,0,0,56,58,3,6,3,0,57,56,1,0,0,0,
      57,58,1,0,0,0,58,59,1,0,0,0,59,60,5,17,0,0,60,61,5,10,0,0,61,70,3,
      12,6,0,62,64,5,5,0,0,63,65,3,6,3,0,64,63,1,0,0,0,64,65,1,0,0,0,65,
      66,1,0,0,0,66,67,5,17,0,0,67,68,5,10,0,0,68,70,3,12,6,0,69,44,1,0,
      0,0,69,55,1,0,0,0,69,62,1,0,0,0,70,9,1,0,0,0,71,72,5,17,0,0,72,73,
      5,10,0,0,73,74,3,12,6,0,74,11,1,0,0,0,75,80,5,14,0,0,76,80,5,12,0,
      0,77,80,5,13,0,0,78,80,5,15,0,0,79,75,1,0,0,0,79,76,1,0,0,0,79,77,
      1,0,0,0,79,78,1,0,0,0,80,13,1,0,0,0,10,17,25,32,39,44,49,57,64,69,
      79
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
}

class LineContext extends ParserRuleContext {
  StatementContext? statement() => getRuleContext<StatementContext>(0);
  TerminalNode? SEMICOLON() => getToken(DartParser.TOKEN_SEMICOLON, 0);
  TerminalNode? NEWLINE() => getToken(DartParser.TOKEN_NEWLINE, 0);
  TerminalNode? EOF() => getToken(DartParser.TOKEN_EOF, 0);
  LineContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_line;
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
}

class AssigmentStatementContext extends StatementContext {
  AssigmentContext? assigment() => getRuleContext<AssigmentContext>(0);
  AssigmentStatementContext(StatementContext ctx) { copyFrom(ctx); }
}class CustomTypeContext extends TypeContext {
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  CustomTypeContext(TypeContext ctx) { copyFrom(ctx); }
}

class BoolTypeContext extends TypeContext {
  TerminalNode? BOOL() => getToken(DartParser.TOKEN_BOOL, 0);
  BoolTypeContext(TypeContext ctx) { copyFrom(ctx); }
}

class StringTypeContext extends TypeContext {
  TerminalNode? STRING() => getToken(DartParser.TOKEN_STRING, 0);
  StringTypeContext(TypeContext ctx) { copyFrom(ctx); }
}

class DoubleTypeContext extends TypeContext {
  TerminalNode? DOUBLE() => getToken(DartParser.TOKEN_DOUBLE, 0);
  DoubleTypeContext(TypeContext ctx) { copyFrom(ctx); }
}

class IntTypeContext extends TypeContext {
  TerminalNode? INT() => getToken(DartParser.TOKEN_INT, 0);
  IntTypeContext(TypeContext ctx) { copyFrom(ctx); }
}class VarDeclarationContext extends VariableDeclarationContext {
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  TerminalNode? ASSIGN() => getToken(DartParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? VAR() => getToken(DartParser.TOKEN_VAR, 0);
  TypeContext? type() => getRuleContext<TypeContext>(0);
  List<TerminalNode> NEWLINEs() => getTokens(DartParser.TOKEN_NEWLINE);
  TerminalNode? NEWLINE(int i) => getToken(DartParser.TOKEN_NEWLINE, i);
  VarDeclarationContext(VariableDeclarationContext ctx) { copyFrom(ctx); }
}

class FinalDeclarationContext extends VariableDeclarationContext {
  TerminalNode? FINAL() => getToken(DartParser.TOKEN_FINAL, 0);
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  TerminalNode? ASSIGN() => getToken(DartParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TypeContext? type() => getRuleContext<TypeContext>(0);
  FinalDeclarationContext(VariableDeclarationContext ctx) { copyFrom(ctx); }
}

class ConstDeclarationContext extends VariableDeclarationContext {
  TerminalNode? CONST() => getToken(DartParser.TOKEN_CONST, 0);
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  TerminalNode? ASSIGN() => getToken(DartParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TypeContext? type() => getRuleContext<TypeContext>(0);
  ConstDeclarationContext(VariableDeclarationContext ctx) { copyFrom(ctx); }
}class DoubleLiteralExpressionContext extends ExpressionContext {
  TerminalNode? DOUBLELIT() => getToken(DartParser.TOKEN_DOUBLELIT, 0);
  DoubleLiteralExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
}

class StringLiteralExpressionContext extends ExpressionContext {
  TerminalNode? STRINGLIT() => getToken(DartParser.TOKEN_STRINGLIT, 0);
  StringLiteralExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
}

class BoolLiteralExpressionContext extends ExpressionContext {
  TerminalNode? BOOLLIT() => getToken(DartParser.TOKEN_BOOLLIT, 0);
  BoolLiteralExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
}

class IntLiteralExpressionContext extends ExpressionContext {
  TerminalNode? INTLIT() => getToken(DartParser.TOKEN_INTLIT, 0);
  IntLiteralExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
}