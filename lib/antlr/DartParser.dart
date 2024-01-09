// Generated from d://Progetti personali//dart2kotlin//dart2ast_engine//antrl4//DartParser.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'DartParserListener.dart';
import 'DartParserBaseListener.dart';
const int RULE_dartFile = 0, RULE_line = 1, RULE_statement = 2, RULE_type = 3, 
          RULE_expression = 4;
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
                   TOKEN_ID = 17, TOKEN_PLUS = 18, TOKEN_MINUS = 19, TOKEN_DIVISION = 20, 
                   TOKEN_TIMES = 21, TOKEN_MODULE = 22, TOKEN_GREATER_EQUAL_THAN = 23, 
                   TOKEN_LOWER_EQUAL_THAN = 24, TOKEN_GREATER_THAN = 25, 
                   TOKEN_LOWER_THAN = 26, TOKEN_EQUAL = 27, TOKEN_AND = 28, 
                   TOKEN_OR = 29, TOKEN_NOT = 30, TOKEN_PAREN_OPEN = 31, 
                   TOKEN_PAREN_CLOSE = 32;

  @override
  final List<String> ruleNames = [
    'dartFile', 'line', 'statement', 'type', 'expression'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, null, null, "'var'", "'final'", "'const'", "'int'", "'double'", 
      "'String'", "'bool'", "'='", "';'", null, null, null, null, null, 
      null, "'+'", "'-'", "'/'", "'*'", "'%'", "'>='", "'<='", "'>'", "'<'", 
      "'=='", "'&&'", "'||'", "'!'", "'('", "')'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, "NEWLINE", "WS", "VAR", "FINAL", "CONST", "INT", "DOUBLE", "STRING", 
      "BOOL", "ASSIGN", "SEMICOLON", "INTLIT", "DOUBLELIT", "BOOLLIT", "STRINGLIT", 
      "UnterminatedStringLiteral", "ID", "PLUS", "MINUS", "DIVISION", "TIMES", 
      "MODULE", "GREATER_EQUAL_THAN", "LOWER_EQUAL_THAN", "GREATER_THAN", 
      "LOWER_THAN", "EQUAL", "AND", "OR", "NOT", "PAREN_OPEN", "PAREN_CLOSE"
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
      state = 11; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 10;
        line();
        state = 13; 
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
      state = 15;
      statement();
      state = 16;
      match(TOKEN_SEMICOLON);
      state = 17;
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
    int _la;
    try {
      state = 57;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 6, context)) {
      case 1:
        _localctx = VarDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 29;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 2, context)) {
        case 1:
          state = 19;
          match(TOKEN_VAR);
          break;
        case 2:
          state = 20;
          match(TOKEN_VAR);
          state = 24;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          while (_la == TOKEN_NEWLINE) {
            state = 21;
            match(TOKEN_NEWLINE);
            state = 26;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
          }
          state = 27;
          type();
          break;
        case 3:
          state = 28;
          type();
          break;
        }
        state = 34;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_NEWLINE) {
          state = 31;
          match(TOKEN_NEWLINE);
          state = 36;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 37;
        match(TOKEN_ID);
        state = 38;
        match(TOKEN_ASSIGN);
        state = 39;
        expression(0);
        break;
      case 2:
        _localctx = FinalDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 40;
        match(TOKEN_FINAL);
        state = 42;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 4, context)) {
        case 1:
          state = 41;
          type();
          break;
        }
        state = 44;
        match(TOKEN_ID);
        state = 45;
        match(TOKEN_ASSIGN);
        state = 46;
        expression(0);
        break;
      case 3:
        _localctx = ConstDeclarationStatmentContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 47;
        match(TOKEN_CONST);
        state = 49;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 5, context)) {
        case 1:
          state = 48;
          type();
          break;
        }
        state = 51;
        match(TOKEN_ID);
        state = 52;
        match(TOKEN_ASSIGN);
        state = 53;
        expression(0);
        break;
      case 4:
        _localctx = AssigmentStatementContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 54;
        match(TOKEN_ID);
        state = 55;
        match(TOKEN_ASSIGN);
        state = 56;
        expression(0);
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
      state = 64;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_INT:
        _localctx = IntTypeContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 59;
        match(TOKEN_INT);
        break;
      case TOKEN_DOUBLE:
        _localctx = DoubleTypeContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 60;
        match(TOKEN_DOUBLE);
        break;
      case TOKEN_BOOL:
        _localctx = BoolTypeContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 61;
        match(TOKEN_BOOL);
        break;
      case TOKEN_STRING:
        _localctx = StringTypeContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 62;
        match(TOKEN_STRING);
        break;
      case TOKEN_ID:
        _localctx = CustomTypeContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 63;
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

  ExpressionContext expression([int _p = 0]) {
    final _parentctx = context;
    final _parentState = state;
    dynamic _localctx = ExpressionContext(context, _parentState);
    var _prevctx = _localctx;
    var _startState = 8;
    enterRecursionRule(_localctx, 8, RULE_expression, _p);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 104;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_BOOLLIT:
        _localctx = BoolLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;

        state = 67;
        match(TOKEN_BOOLLIT);
        break;
      case TOKEN_INTLIT:
        _localctx = IntLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 68;
        match(TOKEN_INTLIT);
        break;
      case TOKEN_DOUBLELIT:
        _localctx = DoubleLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 69;
        match(TOKEN_DOUBLELIT);
        break;
      case TOKEN_STRINGLIT:
        _localctx = StringLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 70;
        match(TOKEN_STRINGLIT);
        break;
      case TOKEN_MINUS:
        _localctx = UnaryMathNegationExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 71;
        match(TOKEN_MINUS);
        state = 75;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_NEWLINE) {
          state = 72;
          match(TOKEN_NEWLINE);
          state = 77;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 78;
        _localctx.value = expression(4);
        break;
      case TOKEN_NOT:
        _localctx = UnatyLogicNegationExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 79;
        match(TOKEN_NOT);
        state = 83;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_NEWLINE) {
          state = 80;
          match(TOKEN_NEWLINE);
          state = 85;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 86;
        _localctx.value = expression(3);
        break;
      case TOKEN_PAREN_OPEN:
        _localctx = ParenthesysExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 87;
        match(TOKEN_PAREN_OPEN);
        state = 91;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_NEWLINE) {
          state = 88;
          match(TOKEN_NEWLINE);
          state = 93;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 94;
        _localctx.value = expression(0);
        state = 98;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_NEWLINE) {
          state = 95;
          match(TOKEN_NEWLINE);
          state = 100;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 101;
        match(TOKEN_PAREN_OPEN);
        break;
      case TOKEN_ID:
        _localctx = VarReferenceExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 103;
        match(TOKEN_ID);
        break;
      default:
        throw NoViableAltException(this);
      }
      context!.stop = tokenStream.LT(-1);
      state = 273;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 36, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 271;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 35, context)) {
          case 1:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 106;
            if (!(precpred(context, 15))) {
              throw FailedPredicateException(this, "precpred(context, 15)");
            }
            state = 110;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 107;
              match(TOKEN_NEWLINE);
              state = 112;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 113;
            _localctx.openand = match(TOKEN_PLUS);
            state = 117;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 114;
              match(TOKEN_NEWLINE);
              state = 119;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 120;
            _localctx.right = expression(16);
            break;
          case 2:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 121;
            if (!(precpred(context, 14))) {
              throw FailedPredicateException(this, "precpred(context, 14)");
            }
            state = 125;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 122;
              match(TOKEN_NEWLINE);
              state = 127;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 128;
            _localctx.openand = match(TOKEN_MINUS);
            state = 132;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 129;
              match(TOKEN_NEWLINE);
              state = 134;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 135;
            _localctx.right = expression(15);
            break;
          case 3:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 136;
            if (!(precpred(context, 13))) {
              throw FailedPredicateException(this, "precpred(context, 13)");
            }
            state = 140;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 137;
              match(TOKEN_NEWLINE);
              state = 142;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 143;
            _localctx.openand = match(TOKEN_TIMES);
            state = 147;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 144;
              match(TOKEN_NEWLINE);
              state = 149;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 150;
            _localctx.right = expression(14);
            break;
          case 4:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 151;
            if (!(precpred(context, 12))) {
              throw FailedPredicateException(this, "precpred(context, 12)");
            }
            state = 155;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 152;
              match(TOKEN_NEWLINE);
              state = 157;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 158;
            _localctx.openand = match(TOKEN_DIVISION);
            state = 162;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 159;
              match(TOKEN_NEWLINE);
              state = 164;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 165;
            _localctx.right = expression(13);
            break;
          case 5:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 166;
            if (!(precpred(context, 11))) {
              throw FailedPredicateException(this, "precpred(context, 11)");
            }
            state = 170;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 167;
              match(TOKEN_NEWLINE);
              state = 172;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 173;
            _localctx.openand = match(TOKEN_AND);
            state = 177;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 174;
              match(TOKEN_NEWLINE);
              state = 179;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 180;
            _localctx.right = expression(12);
            break;
          case 6:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 181;
            if (!(precpred(context, 10))) {
              throw FailedPredicateException(this, "precpred(context, 10)");
            }
            state = 185;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 182;
              match(TOKEN_NEWLINE);
              state = 187;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 188;
            _localctx.openand = match(TOKEN_OR);
            state = 192;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 189;
              match(TOKEN_NEWLINE);
              state = 194;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 195;
            _localctx.right = expression(11);
            break;
          case 7:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 196;
            if (!(precpred(context, 9))) {
              throw FailedPredicateException(this, "precpred(context, 9)");
            }
            state = 200;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 197;
              match(TOKEN_NEWLINE);
              state = 202;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 203;
            _localctx.openand = match(TOKEN_GREATER_THAN);
            state = 207;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 204;
              match(TOKEN_NEWLINE);
              state = 209;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 210;
            _localctx.right = expression(10);
            break;
          case 8:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 211;
            if (!(precpred(context, 8))) {
              throw FailedPredicateException(this, "precpred(context, 8)");
            }
            state = 215;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 212;
              match(TOKEN_NEWLINE);
              state = 217;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 218;
            _localctx.openand = match(TOKEN_LOWER_THAN);
            state = 222;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 219;
              match(TOKEN_NEWLINE);
              state = 224;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 225;
            _localctx.right = expression(9);
            break;
          case 9:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 226;
            if (!(precpred(context, 7))) {
              throw FailedPredicateException(this, "precpred(context, 7)");
            }
            state = 230;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 227;
              match(TOKEN_NEWLINE);
              state = 232;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 233;
            _localctx.openand = match(TOKEN_GREATER_EQUAL_THAN);
            state = 237;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 234;
              match(TOKEN_NEWLINE);
              state = 239;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 240;
            _localctx.right = expression(8);
            break;
          case 10:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 241;
            if (!(precpred(context, 6))) {
              throw FailedPredicateException(this, "precpred(context, 6)");
            }
            state = 245;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 242;
              match(TOKEN_NEWLINE);
              state = 247;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 248;
            _localctx.openand = match(TOKEN_LOWER_EQUAL_THAN);
            state = 252;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 249;
              match(TOKEN_NEWLINE);
              state = 254;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 255;
            _localctx.right = expression(7);
            break;
          case 11:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 256;
            if (!(precpred(context, 5))) {
              throw FailedPredicateException(this, "precpred(context, 5)");
            }
            state = 260;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 257;
              match(TOKEN_NEWLINE);
              state = 262;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 263;
            _localctx.openand = match(TOKEN_EQUAL);
            state = 267;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 264;
              match(TOKEN_NEWLINE);
              state = 269;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 270;
            _localctx.right = expression(6);
            break;
          } 
        }
        state = 275;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 36, context);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      unrollRecursionContexts(_parentctx);
    }
    return _localctx;
  }

  @override
  bool sempred(RuleContext? _localctx, int ruleIndex, int predIndex) {
    switch (ruleIndex) {
    case 4:
      return _expression_sempred(_localctx as ExpressionContext?, predIndex);
    }
    return true;
  }
  bool _expression_sempred(dynamic _localctx, int predIndex) {
    switch (predIndex) {
      case 0: return precpred(context, 15);
      case 1: return precpred(context, 14);
      case 2: return precpred(context, 13);
      case 3: return precpred(context, 12);
      case 4: return precpred(context, 11);
      case 5: return precpred(context, 10);
      case 6: return precpred(context, 9);
      case 7: return precpred(context, 8);
      case 8: return precpred(context, 7);
      case 9: return precpred(context, 6);
      case 10: return precpred(context, 5);
    }
    return true;
  }

  static const List<int> _serializedATN = [
      4,1,32,277,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,1,0,4,0,12,8,0,
      11,0,12,0,13,1,1,1,1,1,1,1,1,1,2,1,2,1,2,5,2,23,8,2,10,2,12,2,26,9,
      2,1,2,1,2,3,2,30,8,2,1,2,5,2,33,8,2,10,2,12,2,36,9,2,1,2,1,2,1,2,1,
      2,1,2,3,2,43,8,2,1,2,1,2,1,2,1,2,1,2,3,2,50,8,2,1,2,1,2,1,2,1,2,1,
      2,1,2,3,2,58,8,2,1,3,1,3,1,3,1,3,1,3,3,3,65,8,3,1,4,1,4,1,4,1,4,1,
      4,1,4,1,4,5,4,74,8,4,10,4,12,4,77,9,4,1,4,1,4,1,4,5,4,82,8,4,10,4,
      12,4,85,9,4,1,4,1,4,1,4,5,4,90,8,4,10,4,12,4,93,9,4,1,4,1,4,5,4,97,
      8,4,10,4,12,4,100,9,4,1,4,1,4,1,4,3,4,105,8,4,1,4,1,4,5,4,109,8,4,
      10,4,12,4,112,9,4,1,4,1,4,5,4,116,8,4,10,4,12,4,119,9,4,1,4,1,4,1,
      4,5,4,124,8,4,10,4,12,4,127,9,4,1,4,1,4,5,4,131,8,4,10,4,12,4,134,
      9,4,1,4,1,4,1,4,5,4,139,8,4,10,4,12,4,142,9,4,1,4,1,4,5,4,146,8,4,
      10,4,12,4,149,9,4,1,4,1,4,1,4,5,4,154,8,4,10,4,12,4,157,9,4,1,4,1,
      4,5,4,161,8,4,10,4,12,4,164,9,4,1,4,1,4,1,4,5,4,169,8,4,10,4,12,4,
      172,9,4,1,4,1,4,5,4,176,8,4,10,4,12,4,179,9,4,1,4,1,4,1,4,5,4,184,
      8,4,10,4,12,4,187,9,4,1,4,1,4,5,4,191,8,4,10,4,12,4,194,9,4,1,4,1,
      4,1,4,5,4,199,8,4,10,4,12,4,202,9,4,1,4,1,4,5,4,206,8,4,10,4,12,4,
      209,9,4,1,4,1,4,1,4,5,4,214,8,4,10,4,12,4,217,9,4,1,4,1,4,5,4,221,
      8,4,10,4,12,4,224,9,4,1,4,1,4,1,4,5,4,229,8,4,10,4,12,4,232,9,4,1,
      4,1,4,5,4,236,8,4,10,4,12,4,239,9,4,1,4,1,4,1,4,5,4,244,8,4,10,4,12,
      4,247,9,4,1,4,1,4,5,4,251,8,4,10,4,12,4,254,9,4,1,4,1,4,1,4,5,4,259,
      8,4,10,4,12,4,262,9,4,1,4,1,4,5,4,266,8,4,10,4,12,4,269,9,4,1,4,5,
      4,272,8,4,10,4,12,4,275,9,4,1,4,0,1,8,5,0,2,4,6,8,0,1,1,1,1,1,329,
      0,11,1,0,0,0,2,15,1,0,0,0,4,57,1,0,0,0,6,64,1,0,0,0,8,104,1,0,0,0,
      10,12,3,2,1,0,11,10,1,0,0,0,12,13,1,0,0,0,13,11,1,0,0,0,13,14,1,0,
      0,0,14,1,1,0,0,0,15,16,3,4,2,0,16,17,5,11,0,0,17,18,7,0,0,0,18,3,1,
      0,0,0,19,30,5,3,0,0,20,24,5,3,0,0,21,23,5,1,0,0,22,21,1,0,0,0,23,26,
      1,0,0,0,24,22,1,0,0,0,24,25,1,0,0,0,25,27,1,0,0,0,26,24,1,0,0,0,27,
      30,3,6,3,0,28,30,3,6,3,0,29,19,1,0,0,0,29,20,1,0,0,0,29,28,1,0,0,0,
      30,34,1,0,0,0,31,33,5,1,0,0,32,31,1,0,0,0,33,36,1,0,0,0,34,32,1,0,
      0,0,34,35,1,0,0,0,35,37,1,0,0,0,36,34,1,0,0,0,37,38,5,17,0,0,38,39,
      5,10,0,0,39,58,3,8,4,0,40,42,5,4,0,0,41,43,3,6,3,0,42,41,1,0,0,0,42,
      43,1,0,0,0,43,44,1,0,0,0,44,45,5,17,0,0,45,46,5,10,0,0,46,58,3,8,4,
      0,47,49,5,5,0,0,48,50,3,6,3,0,49,48,1,0,0,0,49,50,1,0,0,0,50,51,1,
      0,0,0,51,52,5,17,0,0,52,53,5,10,0,0,53,58,3,8,4,0,54,55,5,17,0,0,55,
      56,5,10,0,0,56,58,3,8,4,0,57,29,1,0,0,0,57,40,1,0,0,0,57,47,1,0,0,
      0,57,54,1,0,0,0,58,5,1,0,0,0,59,65,5,6,0,0,60,65,5,7,0,0,61,65,5,9,
      0,0,62,65,5,8,0,0,63,65,5,17,0,0,64,59,1,0,0,0,64,60,1,0,0,0,64,61,
      1,0,0,0,64,62,1,0,0,0,64,63,1,0,0,0,65,7,1,0,0,0,66,67,6,4,-1,0,67,
      105,5,14,0,0,68,105,5,12,0,0,69,105,5,13,0,0,70,105,5,15,0,0,71,75,
      5,19,0,0,72,74,5,1,0,0,73,72,1,0,0,0,74,77,1,0,0,0,75,73,1,0,0,0,75,
      76,1,0,0,0,76,78,1,0,0,0,77,75,1,0,0,0,78,105,3,8,4,4,79,83,5,30,0,
      0,80,82,5,1,0,0,81,80,1,0,0,0,82,85,1,0,0,0,83,81,1,0,0,0,83,84,1,
      0,0,0,84,86,1,0,0,0,85,83,1,0,0,0,86,105,3,8,4,3,87,91,5,31,0,0,88,
      90,5,1,0,0,89,88,1,0,0,0,90,93,1,0,0,0,91,89,1,0,0,0,91,92,1,0,0,0,
      92,94,1,0,0,0,93,91,1,0,0,0,94,98,3,8,4,0,95,97,5,1,0,0,96,95,1,0,
      0,0,97,100,1,0,0,0,98,96,1,0,0,0,98,99,1,0,0,0,99,101,1,0,0,0,100,
      98,1,0,0,0,101,102,5,31,0,0,102,105,1,0,0,0,103,105,5,17,0,0,104,66,
      1,0,0,0,104,68,1,0,0,0,104,69,1,0,0,0,104,70,1,0,0,0,104,71,1,0,0,
      0,104,79,1,0,0,0,104,87,1,0,0,0,104,103,1,0,0,0,105,273,1,0,0,0,106,
      110,10,15,0,0,107,109,5,1,0,0,108,107,1,0,0,0,109,112,1,0,0,0,110,
      108,1,0,0,0,110,111,1,0,0,0,111,113,1,0,0,0,112,110,1,0,0,0,113,117,
      5,18,0,0,114,116,5,1,0,0,115,114,1,0,0,0,116,119,1,0,0,0,117,115,1,
      0,0,0,117,118,1,0,0,0,118,120,1,0,0,0,119,117,1,0,0,0,120,272,3,8,
      4,16,121,125,10,14,0,0,122,124,5,1,0,0,123,122,1,0,0,0,124,127,1,0,
      0,0,125,123,1,0,0,0,125,126,1,0,0,0,126,128,1,0,0,0,127,125,1,0,0,
      0,128,132,5,19,0,0,129,131,5,1,0,0,130,129,1,0,0,0,131,134,1,0,0,0,
      132,130,1,0,0,0,132,133,1,0,0,0,133,135,1,0,0,0,134,132,1,0,0,0,135,
      272,3,8,4,15,136,140,10,13,0,0,137,139,5,1,0,0,138,137,1,0,0,0,139,
      142,1,0,0,0,140,138,1,0,0,0,140,141,1,0,0,0,141,143,1,0,0,0,142,140,
      1,0,0,0,143,147,5,21,0,0,144,146,5,1,0,0,145,144,1,0,0,0,146,149,1,
      0,0,0,147,145,1,0,0,0,147,148,1,0,0,0,148,150,1,0,0,0,149,147,1,0,
      0,0,150,272,3,8,4,14,151,155,10,12,0,0,152,154,5,1,0,0,153,152,1,0,
      0,0,154,157,1,0,0,0,155,153,1,0,0,0,155,156,1,0,0,0,156,158,1,0,0,
      0,157,155,1,0,0,0,158,162,5,20,0,0,159,161,5,1,0,0,160,159,1,0,0,0,
      161,164,1,0,0,0,162,160,1,0,0,0,162,163,1,0,0,0,163,165,1,0,0,0,164,
      162,1,0,0,0,165,272,3,8,4,13,166,170,10,11,0,0,167,169,5,1,0,0,168,
      167,1,0,0,0,169,172,1,0,0,0,170,168,1,0,0,0,170,171,1,0,0,0,171,173,
      1,0,0,0,172,170,1,0,0,0,173,177,5,28,0,0,174,176,5,1,0,0,175,174,1,
      0,0,0,176,179,1,0,0,0,177,175,1,0,0,0,177,178,1,0,0,0,178,180,1,0,
      0,0,179,177,1,0,0,0,180,272,3,8,4,12,181,185,10,10,0,0,182,184,5,1,
      0,0,183,182,1,0,0,0,184,187,1,0,0,0,185,183,1,0,0,0,185,186,1,0,0,
      0,186,188,1,0,0,0,187,185,1,0,0,0,188,192,5,29,0,0,189,191,5,1,0,0,
      190,189,1,0,0,0,191,194,1,0,0,0,192,190,1,0,0,0,192,193,1,0,0,0,193,
      195,1,0,0,0,194,192,1,0,0,0,195,272,3,8,4,11,196,200,10,9,0,0,197,
      199,5,1,0,0,198,197,1,0,0,0,199,202,1,0,0,0,200,198,1,0,0,0,200,201,
      1,0,0,0,201,203,1,0,0,0,202,200,1,0,0,0,203,207,5,25,0,0,204,206,5,
      1,0,0,205,204,1,0,0,0,206,209,1,0,0,0,207,205,1,0,0,0,207,208,1,0,
      0,0,208,210,1,0,0,0,209,207,1,0,0,0,210,272,3,8,4,10,211,215,10,8,
      0,0,212,214,5,1,0,0,213,212,1,0,0,0,214,217,1,0,0,0,215,213,1,0,0,
      0,215,216,1,0,0,0,216,218,1,0,0,0,217,215,1,0,0,0,218,222,5,26,0,0,
      219,221,5,1,0,0,220,219,1,0,0,0,221,224,1,0,0,0,222,220,1,0,0,0,222,
      223,1,0,0,0,223,225,1,0,0,0,224,222,1,0,0,0,225,272,3,8,4,9,226,230,
      10,7,0,0,227,229,5,1,0,0,228,227,1,0,0,0,229,232,1,0,0,0,230,228,1,
      0,0,0,230,231,1,0,0,0,231,233,1,0,0,0,232,230,1,0,0,0,233,237,5,23,
      0,0,234,236,5,1,0,0,235,234,1,0,0,0,236,239,1,0,0,0,237,235,1,0,0,
      0,237,238,1,0,0,0,238,240,1,0,0,0,239,237,1,0,0,0,240,272,3,8,4,8,
      241,245,10,6,0,0,242,244,5,1,0,0,243,242,1,0,0,0,244,247,1,0,0,0,245,
      243,1,0,0,0,245,246,1,0,0,0,246,248,1,0,0,0,247,245,1,0,0,0,248,252,
      5,24,0,0,249,251,5,1,0,0,250,249,1,0,0,0,251,254,1,0,0,0,252,250,1,
      0,0,0,252,253,1,0,0,0,253,255,1,0,0,0,254,252,1,0,0,0,255,272,3,8,
      4,7,256,260,10,5,0,0,257,259,5,1,0,0,258,257,1,0,0,0,259,262,1,0,0,
      0,260,258,1,0,0,0,260,261,1,0,0,0,261,263,1,0,0,0,262,260,1,0,0,0,
      263,267,5,27,0,0,264,266,5,1,0,0,265,264,1,0,0,0,266,269,1,0,0,0,267,
      265,1,0,0,0,267,268,1,0,0,0,268,270,1,0,0,0,269,267,1,0,0,0,270,272,
      3,8,4,6,271,106,1,0,0,0,271,121,1,0,0,0,271,136,1,0,0,0,271,151,1,
      0,0,0,271,166,1,0,0,0,271,181,1,0,0,0,271,196,1,0,0,0,271,211,1,0,
      0,0,271,226,1,0,0,0,271,241,1,0,0,0,271,256,1,0,0,0,272,275,1,0,0,
      0,273,271,1,0,0,0,273,274,1,0,0,0,274,9,1,0,0,0,275,273,1,0,0,0,37,
      13,24,29,34,42,49,57,64,75,83,91,98,104,110,117,125,132,140,147,155,
      162,170,177,185,192,200,207,215,222,230,237,245,252,260,267,271,273
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
  TerminalNode? SEMICOLON() => getToken(DartParser.TOKEN_SEMICOLON, 0);
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

class ExpressionContext extends ParserRuleContext {
  ExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_expression;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class VarDeclarationStatementContext extends StatementContext {
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  TerminalNode? ASSIGN() => getToken(DartParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? VAR() => getToken(DartParser.TOKEN_VAR, 0);
  TypeContext? type() => getRuleContext<TypeContext>(0);
  List<TerminalNode> NEWLINEs() => getTokens(DartParser.TOKEN_NEWLINE);
  TerminalNode? NEWLINE(int i) => getToken(DartParser.TOKEN_NEWLINE, i);
  VarDeclarationStatementContext(StatementContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterVarDeclarationStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitVarDeclarationStatement(this);
  }
}

class ConstDeclarationStatmentContext extends StatementContext {
  TerminalNode? CONST() => getToken(DartParser.TOKEN_CONST, 0);
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  TerminalNode? ASSIGN() => getToken(DartParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TypeContext? type() => getRuleContext<TypeContext>(0);
  ConstDeclarationStatmentContext(StatementContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterConstDeclarationStatment(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitConstDeclarationStatment(this);
  }
}

class FinalDeclarationStatementContext extends StatementContext {
  TerminalNode? FINAL() => getToken(DartParser.TOKEN_FINAL, 0);
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  TerminalNode? ASSIGN() => getToken(DartParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TypeContext? type() => getRuleContext<TypeContext>(0);
  FinalDeclarationStatementContext(StatementContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterFinalDeclarationStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitFinalDeclarationStatement(this);
  }
}

class AssigmentStatementContext extends StatementContext {
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  TerminalNode? ASSIGN() => getToken(DartParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
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
}class BinaryMathExpressionContext extends ExpressionContext {
  ExpressionContext? left;
  Token? openand;
  ExpressionContext? right;
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode? PLUS() => getToken(DartParser.TOKEN_PLUS, 0);
  List<TerminalNode> NEWLINEs() => getTokens(DartParser.TOKEN_NEWLINE);
  TerminalNode? NEWLINE(int i) => getToken(DartParser.TOKEN_NEWLINE, i);
  TerminalNode? MINUS() => getToken(DartParser.TOKEN_MINUS, 0);
  TerminalNode? TIMES() => getToken(DartParser.TOKEN_TIMES, 0);
  TerminalNode? DIVISION() => getToken(DartParser.TOKEN_DIVISION, 0);
  BinaryMathExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterBinaryMathExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitBinaryMathExpression(this);
  }
}

class VarReferenceExpressionContext extends ExpressionContext {
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  VarReferenceExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterVarReferenceExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitVarReferenceExpression(this);
  }
}

class BinaryLogicExpressionContext extends ExpressionContext {
  ExpressionContext? left;
  Token? openand;
  ExpressionContext? right;
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode? AND() => getToken(DartParser.TOKEN_AND, 0);
  List<TerminalNode> NEWLINEs() => getTokens(DartParser.TOKEN_NEWLINE);
  TerminalNode? NEWLINE(int i) => getToken(DartParser.TOKEN_NEWLINE, i);
  TerminalNode? OR() => getToken(DartParser.TOKEN_OR, 0);
  TerminalNode? GREATER_THAN() => getToken(DartParser.TOKEN_GREATER_THAN, 0);
  TerminalNode? LOWER_THAN() => getToken(DartParser.TOKEN_LOWER_THAN, 0);
  TerminalNode? GREATER_EQUAL_THAN() => getToken(DartParser.TOKEN_GREATER_EQUAL_THAN, 0);
  TerminalNode? LOWER_EQUAL_THAN() => getToken(DartParser.TOKEN_LOWER_EQUAL_THAN, 0);
  TerminalNode? EQUAL() => getToken(DartParser.TOKEN_EQUAL, 0);
  BinaryLogicExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterBinaryLogicExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitBinaryLogicExpression(this);
  }
}

class DoubleLiteralExpressionContext extends ExpressionContext {
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

class UnatyLogicNegationExpressionContext extends ExpressionContext {
  ExpressionContext? value;
  TerminalNode? NOT() => getToken(DartParser.TOKEN_NOT, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  List<TerminalNode> NEWLINEs() => getTokens(DartParser.TOKEN_NEWLINE);
  TerminalNode? NEWLINE(int i) => getToken(DartParser.TOKEN_NEWLINE, i);
  UnatyLogicNegationExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterUnatyLogicNegationExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitUnatyLogicNegationExpression(this);
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

class UnaryMathNegationExpressionContext extends ExpressionContext {
  ExpressionContext? value;
  TerminalNode? MINUS() => getToken(DartParser.TOKEN_MINUS, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  List<TerminalNode> NEWLINEs() => getTokens(DartParser.TOKEN_NEWLINE);
  TerminalNode? NEWLINE(int i) => getToken(DartParser.TOKEN_NEWLINE, i);
  UnaryMathNegationExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterUnaryMathNegationExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitUnaryMathNegationExpression(this);
  }
}

class ParenthesysExpressionContext extends ExpressionContext {
  ExpressionContext? value;
  List<TerminalNode> PAREN_OPENs() => getTokens(DartParser.TOKEN_PAREN_OPEN);
  TerminalNode? PAREN_OPEN(int i) => getToken(DartParser.TOKEN_PAREN_OPEN, i);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  List<TerminalNode> NEWLINEs() => getTokens(DartParser.TOKEN_NEWLINE);
  TerminalNode? NEWLINE(int i) => getToken(DartParser.TOKEN_NEWLINE, i);
  ParenthesysExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterParenthesysExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitParenthesysExpression(this);
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