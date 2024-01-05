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
                   TOKEN_ID = 17, TOKEN_PLUS = 18, TOKEN_MINUS = 19, TOKEN_DIVISION = 20, 
                   TOKEN_TIMES = 21, TOKEN_MODULE = 22, TOKEN_GREATER_EQUAL_THAN = 23, 
                   TOKEN_LOWER_EQUAL_THAN = 24, TOKEN_GREATER_THAN = 25, 
                   TOKEN_LOWER_THAN = 26, TOKEN_EQUAL = 27, TOKEN_AND = 28, 
                   TOKEN_OR = 29, TOKEN_NOT = 30, TOKEN_PAREN_OPEN = 31, 
                   TOKEN_PAREN_CLOSE = 32;

  @override
  final List<String> ruleNames = [
    'dartFile', 'line', 'statement', 'type', 'variableDeclaration', 'assigment', 
    'expression'
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
        expression(0);
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
        expression(0);
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
        expression(0);
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
      expression(0);
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
    var _startState = 12;
    enterRecursionRule(_localctx, 12, RULE_expression, _p);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 113;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_BOOLLIT:
        _localctx = BoolLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;

        state = 76;
        match(TOKEN_BOOLLIT);
        break;
      case TOKEN_INTLIT:
        _localctx = IntLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 77;
        match(TOKEN_INTLIT);
        break;
      case TOKEN_DOUBLELIT:
        _localctx = DoubleLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 78;
        match(TOKEN_DOUBLELIT);
        break;
      case TOKEN_STRINGLIT:
        _localctx = StringLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 79;
        match(TOKEN_STRINGLIT);
        break;
      case TOKEN_MINUS:
        _localctx = UnaryMathNegationExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 80;
        match(TOKEN_MINUS);
        state = 84;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_NEWLINE) {
          state = 81;
          match(TOKEN_NEWLINE);
          state = 86;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 87;
        _localctx.value = expression(4);
        break;
      case TOKEN_NOT:
        _localctx = UnatyLogicNegationExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 88;
        match(TOKEN_NOT);
        state = 92;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_NEWLINE) {
          state = 89;
          match(TOKEN_NEWLINE);
          state = 94;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 95;
        _localctx.value = expression(3);
        break;
      case TOKEN_PAREN_OPEN:
        _localctx = ParenthesysExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 96;
        match(TOKEN_PAREN_OPEN);
        state = 100;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_NEWLINE) {
          state = 97;
          match(TOKEN_NEWLINE);
          state = 102;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 103;
        _localctx.value = expression(0);
        state = 107;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_NEWLINE) {
          state = 104;
          match(TOKEN_NEWLINE);
          state = 109;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 110;
        match(TOKEN_PAREN_OPEN);
        break;
      case TOKEN_ID:
        _localctx = VarReferenceExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 112;
        match(TOKEN_ID);
        break;
      default:
        throw NoViableAltException(this);
      }
      context!.stop = tokenStream.LT(-1);
      state = 282;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 37, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 280;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 36, context)) {
          case 1:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 115;
            if (!(precpred(context, 15))) {
              throw FailedPredicateException(this, "precpred(context, 15)");
            }
            state = 119;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 116;
              match(TOKEN_NEWLINE);
              state = 121;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 122;
            _localctx.openand = match(TOKEN_PLUS);
            state = 126;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 123;
              match(TOKEN_NEWLINE);
              state = 128;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 129;
            _localctx.right = expression(16);
            break;
          case 2:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 130;
            if (!(precpred(context, 14))) {
              throw FailedPredicateException(this, "precpred(context, 14)");
            }
            state = 134;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 131;
              match(TOKEN_NEWLINE);
              state = 136;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 137;
            _localctx.openand = match(TOKEN_MINUS);
            state = 141;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 138;
              match(TOKEN_NEWLINE);
              state = 143;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 144;
            _localctx.right = expression(15);
            break;
          case 3:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 145;
            if (!(precpred(context, 13))) {
              throw FailedPredicateException(this, "precpred(context, 13)");
            }
            state = 149;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 146;
              match(TOKEN_NEWLINE);
              state = 151;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 152;
            _localctx.openand = match(TOKEN_TIMES);
            state = 156;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 153;
              match(TOKEN_NEWLINE);
              state = 158;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 159;
            _localctx.right = expression(14);
            break;
          case 4:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 160;
            if (!(precpred(context, 12))) {
              throw FailedPredicateException(this, "precpred(context, 12)");
            }
            state = 164;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 161;
              match(TOKEN_NEWLINE);
              state = 166;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 167;
            _localctx.openand = match(TOKEN_DIVISION);
            state = 171;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 168;
              match(TOKEN_NEWLINE);
              state = 173;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 174;
            _localctx.right = expression(13);
            break;
          case 5:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 175;
            if (!(precpred(context, 11))) {
              throw FailedPredicateException(this, "precpred(context, 11)");
            }
            state = 179;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 176;
              match(TOKEN_NEWLINE);
              state = 181;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 182;
            _localctx.openand = match(TOKEN_AND);
            state = 186;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 183;
              match(TOKEN_NEWLINE);
              state = 188;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 189;
            _localctx.right = expression(12);
            break;
          case 6:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 190;
            if (!(precpred(context, 10))) {
              throw FailedPredicateException(this, "precpred(context, 10)");
            }
            state = 194;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 191;
              match(TOKEN_NEWLINE);
              state = 196;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 197;
            _localctx.openand = match(TOKEN_OR);
            state = 201;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 198;
              match(TOKEN_NEWLINE);
              state = 203;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 204;
            _localctx.right = expression(11);
            break;
          case 7:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 205;
            if (!(precpred(context, 9))) {
              throw FailedPredicateException(this, "precpred(context, 9)");
            }
            state = 209;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 206;
              match(TOKEN_NEWLINE);
              state = 211;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 212;
            _localctx.openand = match(TOKEN_GREATER_THAN);
            state = 216;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 213;
              match(TOKEN_NEWLINE);
              state = 218;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 219;
            _localctx.right = expression(10);
            break;
          case 8:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 220;
            if (!(precpred(context, 8))) {
              throw FailedPredicateException(this, "precpred(context, 8)");
            }
            state = 224;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 221;
              match(TOKEN_NEWLINE);
              state = 226;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 227;
            _localctx.openand = match(TOKEN_LOWER_THAN);
            state = 231;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 228;
              match(TOKEN_NEWLINE);
              state = 233;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 234;
            _localctx.right = expression(9);
            break;
          case 9:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 235;
            if (!(precpred(context, 7))) {
              throw FailedPredicateException(this, "precpred(context, 7)");
            }
            state = 239;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 236;
              match(TOKEN_NEWLINE);
              state = 241;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 242;
            _localctx.openand = match(TOKEN_GREATER_EQUAL_THAN);
            state = 246;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 243;
              match(TOKEN_NEWLINE);
              state = 248;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 249;
            _localctx.right = expression(8);
            break;
          case 10:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 250;
            if (!(precpred(context, 6))) {
              throw FailedPredicateException(this, "precpred(context, 6)");
            }
            state = 254;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 251;
              match(TOKEN_NEWLINE);
              state = 256;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 257;
            _localctx.openand = match(TOKEN_LOWER_EQUAL_THAN);
            state = 261;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 258;
              match(TOKEN_NEWLINE);
              state = 263;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 264;
            _localctx.right = expression(7);
            break;
          case 11:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 265;
            if (!(precpred(context, 5))) {
              throw FailedPredicateException(this, "precpred(context, 5)");
            }
            state = 269;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 266;
              match(TOKEN_NEWLINE);
              state = 271;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 272;
            _localctx.openand = match(TOKEN_EQUAL);
            state = 276;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 273;
              match(TOKEN_NEWLINE);
              state = 278;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 279;
            _localctx.right = expression(6);
            break;
          } 
        }
        state = 284;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 37, context);
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
    case 6:
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
      4,1,32,286,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      1,0,4,0,16,8,0,11,0,12,0,17,1,1,1,1,1,1,1,1,1,2,1,2,3,2,26,8,2,1,3,
      1,3,1,3,1,3,1,3,3,3,33,8,3,1,4,1,4,1,4,5,4,38,8,4,10,4,12,4,41,9,4,
      1,4,1,4,3,4,45,8,4,1,4,5,4,48,8,4,10,4,12,4,51,9,4,1,4,1,4,1,4,1,4,
      1,4,3,4,58,8,4,1,4,1,4,1,4,1,4,1,4,3,4,65,8,4,1,4,1,4,1,4,3,4,70,8,
      4,1,5,1,5,1,5,1,5,1,6,1,6,1,6,1,6,1,6,1,6,1,6,5,6,83,8,6,10,6,12,6,
      86,9,6,1,6,1,6,1,6,5,6,91,8,6,10,6,12,6,94,9,6,1,6,1,6,1,6,5,6,99,
      8,6,10,6,12,6,102,9,6,1,6,1,6,5,6,106,8,6,10,6,12,6,109,9,6,1,6,1,
      6,1,6,3,6,114,8,6,1,6,1,6,5,6,118,8,6,10,6,12,6,121,9,6,1,6,1,6,5,
      6,125,8,6,10,6,12,6,128,9,6,1,6,1,6,1,6,5,6,133,8,6,10,6,12,6,136,
      9,6,1,6,1,6,5,6,140,8,6,10,6,12,6,143,9,6,1,6,1,6,1,6,5,6,148,8,6,
      10,6,12,6,151,9,6,1,6,1,6,5,6,155,8,6,10,6,12,6,158,9,6,1,6,1,6,1,
      6,5,6,163,8,6,10,6,12,6,166,9,6,1,6,1,6,5,6,170,8,6,10,6,12,6,173,
      9,6,1,6,1,6,1,6,5,6,178,8,6,10,6,12,6,181,9,6,1,6,1,6,5,6,185,8,6,
      10,6,12,6,188,9,6,1,6,1,6,1,6,5,6,193,8,6,10,6,12,6,196,9,6,1,6,1,
      6,5,6,200,8,6,10,6,12,6,203,9,6,1,6,1,6,1,6,5,6,208,8,6,10,6,12,6,
      211,9,6,1,6,1,6,5,6,215,8,6,10,6,12,6,218,9,6,1,6,1,6,1,6,5,6,223,
      8,6,10,6,12,6,226,9,6,1,6,1,6,5,6,230,8,6,10,6,12,6,233,9,6,1,6,1,
      6,1,6,5,6,238,8,6,10,6,12,6,241,9,6,1,6,1,6,5,6,245,8,6,10,6,12,6,
      248,9,6,1,6,1,6,1,6,5,6,253,8,6,10,6,12,6,256,9,6,1,6,1,6,5,6,260,
      8,6,10,6,12,6,263,9,6,1,6,1,6,1,6,5,6,268,8,6,10,6,12,6,271,9,6,1,
      6,1,6,5,6,275,8,6,10,6,12,6,278,9,6,1,6,5,6,281,8,6,10,6,12,6,284,
      9,6,1,6,0,1,12,7,0,2,4,6,8,10,12,0,1,1,1,1,1,336,0,15,1,0,0,0,2,19,
      1,0,0,0,4,25,1,0,0,0,6,32,1,0,0,0,8,69,1,0,0,0,10,71,1,0,0,0,12,113,
      1,0,0,0,14,16,3,2,1,0,15,14,1,0,0,0,16,17,1,0,0,0,17,15,1,0,0,0,17,
      18,1,0,0,0,18,1,1,0,0,0,19,20,3,4,2,0,20,21,5,11,0,0,21,22,7,0,0,0,
      22,3,1,0,0,0,23,26,3,8,4,0,24,26,3,10,5,0,25,23,1,0,0,0,25,24,1,0,
      0,0,26,5,1,0,0,0,27,33,5,6,0,0,28,33,5,7,0,0,29,33,5,9,0,0,30,33,5,
      8,0,0,31,33,5,17,0,0,32,27,1,0,0,0,32,28,1,0,0,0,32,29,1,0,0,0,32,
      30,1,0,0,0,32,31,1,0,0,0,33,7,1,0,0,0,34,45,5,3,0,0,35,39,5,3,0,0,
      36,38,5,1,0,0,37,36,1,0,0,0,38,41,1,0,0,0,39,37,1,0,0,0,39,40,1,0,
      0,0,40,42,1,0,0,0,41,39,1,0,0,0,42,45,3,6,3,0,43,45,3,6,3,0,44,34,
      1,0,0,0,44,35,1,0,0,0,44,43,1,0,0,0,45,49,1,0,0,0,46,48,5,1,0,0,47,
      46,1,0,0,0,48,51,1,0,0,0,49,47,1,0,0,0,49,50,1,0,0,0,50,52,1,0,0,0,
      51,49,1,0,0,0,52,53,5,17,0,0,53,54,5,10,0,0,54,70,3,12,6,0,55,57,5,
      4,0,0,56,58,3,6,3,0,57,56,1,0,0,0,57,58,1,0,0,0,58,59,1,0,0,0,59,60,
      5,17,0,0,60,61,5,10,0,0,61,70,3,12,6,0,62,64,5,5,0,0,63,65,3,6,3,0,
      64,63,1,0,0,0,64,65,1,0,0,0,65,66,1,0,0,0,66,67,5,17,0,0,67,68,5,10,
      0,0,68,70,3,12,6,0,69,44,1,0,0,0,69,55,1,0,0,0,69,62,1,0,0,0,70,9,
      1,0,0,0,71,72,5,17,0,0,72,73,5,10,0,0,73,74,3,12,6,0,74,11,1,0,0,0,
      75,76,6,6,-1,0,76,114,5,14,0,0,77,114,5,12,0,0,78,114,5,13,0,0,79,
      114,5,15,0,0,80,84,5,19,0,0,81,83,5,1,0,0,82,81,1,0,0,0,83,86,1,0,
      0,0,84,82,1,0,0,0,84,85,1,0,0,0,85,87,1,0,0,0,86,84,1,0,0,0,87,114,
      3,12,6,4,88,92,5,30,0,0,89,91,5,1,0,0,90,89,1,0,0,0,91,94,1,0,0,0,
      92,90,1,0,0,0,92,93,1,0,0,0,93,95,1,0,0,0,94,92,1,0,0,0,95,114,3,12,
      6,3,96,100,5,31,0,0,97,99,5,1,0,0,98,97,1,0,0,0,99,102,1,0,0,0,100,
      98,1,0,0,0,100,101,1,0,0,0,101,103,1,0,0,0,102,100,1,0,0,0,103,107,
      3,12,6,0,104,106,5,1,0,0,105,104,1,0,0,0,106,109,1,0,0,0,107,105,1,
      0,0,0,107,108,1,0,0,0,108,110,1,0,0,0,109,107,1,0,0,0,110,111,5,31,
      0,0,111,114,1,0,0,0,112,114,5,17,0,0,113,75,1,0,0,0,113,77,1,0,0,0,
      113,78,1,0,0,0,113,79,1,0,0,0,113,80,1,0,0,0,113,88,1,0,0,0,113,96,
      1,0,0,0,113,112,1,0,0,0,114,282,1,0,0,0,115,119,10,15,0,0,116,118,
      5,1,0,0,117,116,1,0,0,0,118,121,1,0,0,0,119,117,1,0,0,0,119,120,1,
      0,0,0,120,122,1,0,0,0,121,119,1,0,0,0,122,126,5,18,0,0,123,125,5,1,
      0,0,124,123,1,0,0,0,125,128,1,0,0,0,126,124,1,0,0,0,126,127,1,0,0,
      0,127,129,1,0,0,0,128,126,1,0,0,0,129,281,3,12,6,16,130,134,10,14,
      0,0,131,133,5,1,0,0,132,131,1,0,0,0,133,136,1,0,0,0,134,132,1,0,0,
      0,134,135,1,0,0,0,135,137,1,0,0,0,136,134,1,0,0,0,137,141,5,19,0,0,
      138,140,5,1,0,0,139,138,1,0,0,0,140,143,1,0,0,0,141,139,1,0,0,0,141,
      142,1,0,0,0,142,144,1,0,0,0,143,141,1,0,0,0,144,281,3,12,6,15,145,
      149,10,13,0,0,146,148,5,1,0,0,147,146,1,0,0,0,148,151,1,0,0,0,149,
      147,1,0,0,0,149,150,1,0,0,0,150,152,1,0,0,0,151,149,1,0,0,0,152,156,
      5,21,0,0,153,155,5,1,0,0,154,153,1,0,0,0,155,158,1,0,0,0,156,154,1,
      0,0,0,156,157,1,0,0,0,157,159,1,0,0,0,158,156,1,0,0,0,159,281,3,12,
      6,14,160,164,10,12,0,0,161,163,5,1,0,0,162,161,1,0,0,0,163,166,1,0,
      0,0,164,162,1,0,0,0,164,165,1,0,0,0,165,167,1,0,0,0,166,164,1,0,0,
      0,167,171,5,20,0,0,168,170,5,1,0,0,169,168,1,0,0,0,170,173,1,0,0,0,
      171,169,1,0,0,0,171,172,1,0,0,0,172,174,1,0,0,0,173,171,1,0,0,0,174,
      281,3,12,6,13,175,179,10,11,0,0,176,178,5,1,0,0,177,176,1,0,0,0,178,
      181,1,0,0,0,179,177,1,0,0,0,179,180,1,0,0,0,180,182,1,0,0,0,181,179,
      1,0,0,0,182,186,5,28,0,0,183,185,5,1,0,0,184,183,1,0,0,0,185,188,1,
      0,0,0,186,184,1,0,0,0,186,187,1,0,0,0,187,189,1,0,0,0,188,186,1,0,
      0,0,189,281,3,12,6,12,190,194,10,10,0,0,191,193,5,1,0,0,192,191,1,
      0,0,0,193,196,1,0,0,0,194,192,1,0,0,0,194,195,1,0,0,0,195,197,1,0,
      0,0,196,194,1,0,0,0,197,201,5,29,0,0,198,200,5,1,0,0,199,198,1,0,0,
      0,200,203,1,0,0,0,201,199,1,0,0,0,201,202,1,0,0,0,202,204,1,0,0,0,
      203,201,1,0,0,0,204,281,3,12,6,11,205,209,10,9,0,0,206,208,5,1,0,0,
      207,206,1,0,0,0,208,211,1,0,0,0,209,207,1,0,0,0,209,210,1,0,0,0,210,
      212,1,0,0,0,211,209,1,0,0,0,212,216,5,25,0,0,213,215,5,1,0,0,214,213,
      1,0,0,0,215,218,1,0,0,0,216,214,1,0,0,0,216,217,1,0,0,0,217,219,1,
      0,0,0,218,216,1,0,0,0,219,281,3,12,6,10,220,224,10,8,0,0,221,223,5,
      1,0,0,222,221,1,0,0,0,223,226,1,0,0,0,224,222,1,0,0,0,224,225,1,0,
      0,0,225,227,1,0,0,0,226,224,1,0,0,0,227,231,5,26,0,0,228,230,5,1,0,
      0,229,228,1,0,0,0,230,233,1,0,0,0,231,229,1,0,0,0,231,232,1,0,0,0,
      232,234,1,0,0,0,233,231,1,0,0,0,234,281,3,12,6,9,235,239,10,7,0,0,
      236,238,5,1,0,0,237,236,1,0,0,0,238,241,1,0,0,0,239,237,1,0,0,0,239,
      240,1,0,0,0,240,242,1,0,0,0,241,239,1,0,0,0,242,246,5,23,0,0,243,245,
      5,1,0,0,244,243,1,0,0,0,245,248,1,0,0,0,246,244,1,0,0,0,246,247,1,
      0,0,0,247,249,1,0,0,0,248,246,1,0,0,0,249,281,3,12,6,8,250,254,10,
      6,0,0,251,253,5,1,0,0,252,251,1,0,0,0,253,256,1,0,0,0,254,252,1,0,
      0,0,254,255,1,0,0,0,255,257,1,0,0,0,256,254,1,0,0,0,257,261,5,24,0,
      0,258,260,5,1,0,0,259,258,1,0,0,0,260,263,1,0,0,0,261,259,1,0,0,0,
      261,262,1,0,0,0,262,264,1,0,0,0,263,261,1,0,0,0,264,281,3,12,6,7,265,
      269,10,5,0,0,266,268,5,1,0,0,267,266,1,0,0,0,268,271,1,0,0,0,269,267,
      1,0,0,0,269,270,1,0,0,0,270,272,1,0,0,0,271,269,1,0,0,0,272,276,5,
      27,0,0,273,275,5,1,0,0,274,273,1,0,0,0,275,278,1,0,0,0,276,274,1,0,
      0,0,276,277,1,0,0,0,277,279,1,0,0,0,278,276,1,0,0,0,279,281,3,12,6,
      6,280,115,1,0,0,0,280,130,1,0,0,0,280,145,1,0,0,0,280,160,1,0,0,0,
      280,175,1,0,0,0,280,190,1,0,0,0,280,205,1,0,0,0,280,220,1,0,0,0,280,
      235,1,0,0,0,280,250,1,0,0,0,280,265,1,0,0,0,281,284,1,0,0,0,282,280,
      1,0,0,0,282,283,1,0,0,0,283,13,1,0,0,0,284,282,1,0,0,0,38,17,25,32,
      39,44,49,57,64,69,84,92,100,107,113,119,126,134,141,149,156,164,171,
      179,186,194,201,209,216,224,231,239,246,254,261,269,276,280,282
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
}

class VarReferenceExpressionContext extends ExpressionContext {
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  VarReferenceExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
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
}

class DoubleLiteralExpressionContext extends ExpressionContext {
  TerminalNode? DOUBLELIT() => getToken(DartParser.TOKEN_DOUBLELIT, 0);
  DoubleLiteralExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
}

class UnatyLogicNegationExpressionContext extends ExpressionContext {
  ExpressionContext? value;
  TerminalNode? NOT() => getToken(DartParser.TOKEN_NOT, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  List<TerminalNode> NEWLINEs() => getTokens(DartParser.TOKEN_NEWLINE);
  TerminalNode? NEWLINE(int i) => getToken(DartParser.TOKEN_NEWLINE, i);
  UnatyLogicNegationExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
}

class StringLiteralExpressionContext extends ExpressionContext {
  TerminalNode? STRINGLIT() => getToken(DartParser.TOKEN_STRINGLIT, 0);
  StringLiteralExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
}

class BoolLiteralExpressionContext extends ExpressionContext {
  TerminalNode? BOOLLIT() => getToken(DartParser.TOKEN_BOOLLIT, 0);
  BoolLiteralExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
}

class UnaryMathNegationExpressionContext extends ExpressionContext {
  ExpressionContext? value;
  TerminalNode? MINUS() => getToken(DartParser.TOKEN_MINUS, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  List<TerminalNode> NEWLINEs() => getTokens(DartParser.TOKEN_NEWLINE);
  TerminalNode? NEWLINE(int i) => getToken(DartParser.TOKEN_NEWLINE, i);
  UnaryMathNegationExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
}

class ParenthesysExpressionContext extends ExpressionContext {
  ExpressionContext? value;
  List<TerminalNode> PAREN_OPENs() => getTokens(DartParser.TOKEN_PAREN_OPEN);
  TerminalNode? PAREN_OPEN(int i) => getToken(DartParser.TOKEN_PAREN_OPEN, i);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  List<TerminalNode> NEWLINEs() => getTokens(DartParser.TOKEN_NEWLINE);
  TerminalNode? NEWLINE(int i) => getToken(DartParser.TOKEN_NEWLINE, i);
  ParenthesysExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
}

class IntLiteralExpressionContext extends ExpressionContext {
  TerminalNode? INTLIT() => getToken(DartParser.TOKEN_INTLIT, 0);
  IntLiteralExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
}