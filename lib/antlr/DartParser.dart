// Generated from d://Progetti personali//dart2kotlin//dart2ast_engine//antrl4//DartParser.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'DartParserListener.dart';
import 'DartParserBaseListener.dart';
const int RULE_dartFile = 0, RULE_line = 1, RULE_statement = 2, RULE_type = 3, 
          RULE_expression = 4, RULE_functionDefinition = 5, RULE_parameter = 6, 
          RULE_constructorDefinition = 7, RULE_constructorParameter = 8, 
          RULE_block = 9, RULE_classDefinition = 10;
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
                   TOKEN_PAREN_CLOSE = 32, TOKEN_VOID = 33, TOKEN_GRAPH_OPEN = 34, 
                   TOKEN_GRAPH_CLOSE = 35, TOKEN_COMMA = 36, TOKEN_CLASS = 37, 
                   TOKEN_THIS = 38, TOKEN_DOT = 39;

  @override
  final List<String> ruleNames = [
    'dartFile', 'line', 'statement', 'type', 'expression', 'functionDefinition', 
    'parameter', 'constructorDefinition', 'constructorParameter', 'block', 
    'classDefinition'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, null, null, "'var'", "'final'", "'const'", "'int'", "'double'", 
      "'String'", "'bool'", "'='", "';'", null, null, null, null, null, 
      null, "'+'", "'-'", "'/'", "'*'", "'%'", "'>='", "'<='", "'>'", "'<'", 
      "'=='", "'&&'", "'||'", "'!'", "'('", "')'", "'void'", "'{'", "'}'", 
      "','", "'class'", "'this'", "'.'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, "NEWLINE", "WS", "VAR", "FINAL", "CONST", "INT", "DOUBLE", "STRING", 
      "BOOL", "ASSIGN", "SEMICOLON", "INTLIT", "DOUBLELIT", "BOOLLIT", "STRINGLIT", 
      "UnterminatedStringLiteral", "ID", "PLUS", "MINUS", "DIVISION", "TIMES", 
      "MODULE", "GREATER_EQUAL_THAN", "LOWER_EQUAL_THAN", "GREATER_THAN", 
      "LOWER_THAN", "EQUAL", "AND", "OR", "NOT", "PAREN_OPEN", "PAREN_CLOSE", 
      "VOID", "GRAPH_OPEN", "GRAPH_CLOSE", "COMMA", "CLASS", "THIS", "DOT"
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
      state = 23; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 22;
        line();
        state = 25; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 146029020152) != 0));
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
      state = 27;
      statement();
      state = 28;
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
      state = 79;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 6, context)) {
      case 1:
        _localctx = VarDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 40;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 2, context)) {
        case 1:
          state = 30;
          match(TOKEN_VAR);
          break;
        case 2:
          state = 31;
          match(TOKEN_VAR);
          state = 35;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          while (_la == TOKEN_NEWLINE) {
            state = 32;
            match(TOKEN_NEWLINE);
            state = 37;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
          }
          state = 38;
          type();
          break;
        case 3:
          state = 39;
          type();
          break;
        }
        state = 45;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_NEWLINE) {
          state = 42;
          match(TOKEN_NEWLINE);
          state = 47;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 48;
        match(TOKEN_ID);
        state = 49;
        match(TOKEN_ASSIGN);
        state = 50;
        expression(0);
        state = 51;
        match(TOKEN_SEMICOLON);
        break;
      case 2:
        _localctx = FinalDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 53;
        match(TOKEN_FINAL);
        state = 55;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 4, context)) {
        case 1:
          state = 54;
          type();
          break;
        }
        state = 57;
        match(TOKEN_ID);
        state = 58;
        match(TOKEN_ASSIGN);
        state = 59;
        expression(0);
        state = 60;
        match(TOKEN_SEMICOLON);
        break;
      case 3:
        _localctx = ConstDeclarationStatmentContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 62;
        match(TOKEN_CONST);
        state = 64;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 5, context)) {
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
        state = 69;
        match(TOKEN_SEMICOLON);
        break;
      case 4:
        _localctx = AssigmentStatementContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 71;
        match(TOKEN_ID);
        state = 72;
        match(TOKEN_ASSIGN);
        state = 73;
        expression(0);
        state = 74;
        match(TOKEN_SEMICOLON);
        break;
      case 5:
        _localctx = FunctionDefinitionStatementContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 76;
        functionDefinition();
        break;
      case 6:
        _localctx = ConstructorDefinitionStatementContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 77;
        constructorDefinition();
        break;
      case 7:
        _localctx = ClassDefinitionStatementContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 78;
        classDefinition();
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
      state = 87;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_INT:
        _localctx = IntTypeContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 81;
        match(TOKEN_INT);
        break;
      case TOKEN_DOUBLE:
        _localctx = DoubleTypeContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 82;
        match(TOKEN_DOUBLE);
        break;
      case TOKEN_BOOL:
        _localctx = BoolTypeContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 83;
        match(TOKEN_BOOL);
        break;
      case TOKEN_STRING:
        _localctx = StringTypeContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 84;
        match(TOKEN_STRING);
        break;
      case TOKEN_ID:
        _localctx = CustomTypeContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 85;
        match(TOKEN_ID);
        break;
      case TOKEN_VOID:
        _localctx = VoidTypeContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 86;
        match(TOKEN_VOID);
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
      state = 135;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_BOOLLIT:
        _localctx = BoolLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;

        state = 90;
        match(TOKEN_BOOLLIT);
        break;
      case TOKEN_INTLIT:
        _localctx = IntLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 91;
        match(TOKEN_INTLIT);
        break;
      case TOKEN_DOUBLELIT:
        _localctx = DoubleLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 92;
        match(TOKEN_DOUBLELIT);
        break;
      case TOKEN_STRINGLIT:
        _localctx = StringLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 93;
        match(TOKEN_STRINGLIT);
        break;
      case TOKEN_MINUS:
        _localctx = UnaryMathExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 94;
        _localctx.operand = match(TOKEN_MINUS);
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
        _localctx.value = expression(5);
        break;
      case TOKEN_PLUS:
        _localctx = UnaryMathExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 102;
        _localctx.operand = match(TOKEN_PLUS);
        state = 106;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_NEWLINE) {
          state = 103;
          match(TOKEN_NEWLINE);
          state = 108;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 109;
        _localctx.value = expression(4);
        break;
      case TOKEN_NOT:
        _localctx = UnaryLogicNegationExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 110;
        _localctx.operand = match(TOKEN_NOT);
        state = 114;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_NEWLINE) {
          state = 111;
          match(TOKEN_NEWLINE);
          state = 116;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 117;
        _localctx.value = expression(3);
        break;
      case TOKEN_PAREN_OPEN:
        _localctx = ParenthesysExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 118;
        match(TOKEN_PAREN_OPEN);
        state = 122;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_NEWLINE) {
          state = 119;
          match(TOKEN_NEWLINE);
          state = 124;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 125;
        _localctx.value = expression(0);
        state = 129;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_NEWLINE) {
          state = 126;
          match(TOKEN_NEWLINE);
          state = 131;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 132;
        match(TOKEN_PAREN_OPEN);
        break;
      case TOKEN_ID:
        _localctx = VarReferenceExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 134;
        match(TOKEN_ID);
        break;
      default:
        throw NoViableAltException(this);
      }
      context!.stop = tokenStream.LT(-1);
      state = 304;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 37, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 302;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 36, context)) {
          case 1:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 137;
            if (!(precpred(context, 16))) {
              throw FailedPredicateException(this, "precpred(context, 16)");
            }
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
            _localctx.openand = match(TOKEN_PLUS);
            state = 148;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 145;
              match(TOKEN_NEWLINE);
              state = 150;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 151;
            _localctx.right = expression(17);
            break;
          case 2:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 152;
            if (!(precpred(context, 15))) {
              throw FailedPredicateException(this, "precpred(context, 15)");
            }
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
            _localctx.openand = match(TOKEN_MINUS);
            state = 163;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 160;
              match(TOKEN_NEWLINE);
              state = 165;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 166;
            _localctx.right = expression(16);
            break;
          case 3:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 167;
            if (!(precpred(context, 14))) {
              throw FailedPredicateException(this, "precpred(context, 14)");
            }
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
            _localctx.openand = match(TOKEN_TIMES);
            state = 178;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 175;
              match(TOKEN_NEWLINE);
              state = 180;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 181;
            _localctx.right = expression(15);
            break;
          case 4:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 182;
            if (!(precpred(context, 13))) {
              throw FailedPredicateException(this, "precpred(context, 13)");
            }
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
            _localctx.openand = match(TOKEN_DIVISION);
            state = 193;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 190;
              match(TOKEN_NEWLINE);
              state = 195;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 196;
            _localctx.right = expression(14);
            break;
          case 5:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 197;
            if (!(precpred(context, 12))) {
              throw FailedPredicateException(this, "precpred(context, 12)");
            }
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
            _localctx.openand = match(TOKEN_AND);
            state = 208;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 205;
              match(TOKEN_NEWLINE);
              state = 210;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 211;
            _localctx.right = expression(13);
            break;
          case 6:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 212;
            if (!(precpred(context, 11))) {
              throw FailedPredicateException(this, "precpred(context, 11)");
            }
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
            _localctx.openand = match(TOKEN_OR);
            state = 223;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 220;
              match(TOKEN_NEWLINE);
              state = 225;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 226;
            _localctx.right = expression(12);
            break;
          case 7:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 227;
            if (!(precpred(context, 10))) {
              throw FailedPredicateException(this, "precpred(context, 10)");
            }
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
            _localctx.openand = match(TOKEN_GREATER_THAN);
            state = 238;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 235;
              match(TOKEN_NEWLINE);
              state = 240;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 241;
            _localctx.right = expression(11);
            break;
          case 8:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 242;
            if (!(precpred(context, 9))) {
              throw FailedPredicateException(this, "precpred(context, 9)");
            }
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
            _localctx.openand = match(TOKEN_LOWER_THAN);
            state = 253;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 250;
              match(TOKEN_NEWLINE);
              state = 255;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 256;
            _localctx.right = expression(10);
            break;
          case 9:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 257;
            if (!(precpred(context, 8))) {
              throw FailedPredicateException(this, "precpred(context, 8)");
            }
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
            _localctx.openand = match(TOKEN_GREATER_EQUAL_THAN);
            state = 268;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 265;
              match(TOKEN_NEWLINE);
              state = 270;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 271;
            _localctx.right = expression(9);
            break;
          case 10:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 272;
            if (!(precpred(context, 7))) {
              throw FailedPredicateException(this, "precpred(context, 7)");
            }
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
            _localctx.openand = match(TOKEN_LOWER_EQUAL_THAN);
            state = 283;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 280;
              match(TOKEN_NEWLINE);
              state = 285;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 286;
            _localctx.right = expression(8);
            break;
          case 11:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 287;
            if (!(precpred(context, 6))) {
              throw FailedPredicateException(this, "precpred(context, 6)");
            }
            state = 291;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 288;
              match(TOKEN_NEWLINE);
              state = 293;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 294;
            _localctx.openand = match(TOKEN_EQUAL);
            state = 298;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            while (_la == TOKEN_NEWLINE) {
              state = 295;
              match(TOKEN_NEWLINE);
              state = 300;
              errorHandler.sync(this);
              _la = tokenStream.LA(1)!;
            }
            state = 301;
            _localctx.right = expression(7);
            break;
          } 
        }
        state = 306;
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

  FunctionDefinitionContext functionDefinition() {
    dynamic _localctx = FunctionDefinitionContext(context, state);
    enterRule(_localctx, 10, RULE_functionDefinition);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 307;
      _localctx.returnType = type();
      state = 308;
      _localctx.name = match(TOKEN_ID);
      state = 309;
      match(TOKEN_PAREN_OPEN);
      state = 321;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 39, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 310;
          parameter();
          state = 314;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          while (_la == TOKEN_NEWLINE) {
            state = 311;
            match(TOKEN_NEWLINE);
            state = 316;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
          }
          state = 317;
          match(TOKEN_COMMA); 
        }
        state = 323;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 39, context);
      }
      state = 327;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_NEWLINE) {
        state = 324;
        match(TOKEN_NEWLINE);
        state = 329;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 331;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 8590066624) != 0)) {
        state = 330;
        parameter();
      }

      state = 333;
      match(TOKEN_PAREN_CLOSE);
      state = 337;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_NEWLINE) {
        state = 334;
        match(TOKEN_NEWLINE);
        state = 339;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 340;
      block();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ParameterContext parameter() {
    dynamic _localctx = ParameterContext(context, state);
    enterRule(_localctx, 12, RULE_parameter);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 342;
      type();
      state = 346;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_NEWLINE) {
        state = 343;
        match(TOKEN_NEWLINE);
        state = 348;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 349;
      match(TOKEN_ID);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ConstructorDefinitionContext constructorDefinition() {
    dynamic _localctx = ConstructorDefinitionContext(context, state);
    enterRule(_localctx, 14, RULE_constructorDefinition);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 351;
      _localctx.name = match(TOKEN_ID);
      state = 355;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_NEWLINE) {
        state = 352;
        match(TOKEN_NEWLINE);
        state = 357;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 358;
      match(TOKEN_PAREN_OPEN);
      state = 362;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 45, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 359;
          match(TOKEN_NEWLINE); 
        }
        state = 364;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 45, context);
      }
      state = 381;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 48, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 365;
          constructorParameter();
          state = 369;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          while (_la == TOKEN_NEWLINE) {
            state = 366;
            match(TOKEN_NEWLINE);
            state = 371;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
          }
          state = 372;
          match(TOKEN_COMMA);
          state = 376;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 47, context);
          while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
            if (_alt == 1) {
              state = 373;
              match(TOKEN_NEWLINE); 
            }
            state = 378;
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 47, context);
          } 
        }
        state = 383;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 48, context);
      }
      state = 385;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_THIS) {
        state = 384;
        constructorParameter();
      }

      state = 390;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_NEWLINE) {
        state = 387;
        match(TOKEN_NEWLINE);
        state = 392;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 393;
      match(TOKEN_PAREN_CLOSE);
      state = 397;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_NEWLINE) {
        state = 394;
        match(TOKEN_NEWLINE);
        state = 399;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 402;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_GRAPH_OPEN:
        state = 400;
        block();
        break;
      case TOKEN_SEMICOLON:
        state = 401;
        match(TOKEN_SEMICOLON);
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

  ConstructorParameterContext constructorParameter() {
    dynamic _localctx = ConstructorParameterContext(context, state);
    enterRule(_localctx, 16, RULE_constructorParameter);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 404;
      match(TOKEN_THIS);
      state = 408;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_NEWLINE) {
        state = 405;
        match(TOKEN_NEWLINE);
        state = 410;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 411;
      match(TOKEN_DOT);
      state = 415;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_NEWLINE) {
        state = 412;
        match(TOKEN_NEWLINE);
        state = 417;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 418;
      _localctx.name = match(TOKEN_ID);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  BlockContext block() {
    dynamic _localctx = BlockContext(context, state);
    enterRule(_localctx, 18, RULE_block);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 420;
      match(TOKEN_GRAPH_OPEN);
      state = 424;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 55, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 421;
          match(TOKEN_NEWLINE); 
        }
        state = 426;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 55, context);
      }
      state = 438;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 146029020152) != 0)) {
        state = 427;
        statement();
        state = 431;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_NEWLINE) {
          state = 428;
          match(TOKEN_NEWLINE);
          state = 433;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 434;
        match(TOKEN_SEMICOLON);
        state = 440;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 444;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_NEWLINE) {
        state = 441;
        match(TOKEN_NEWLINE);
        state = 446;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 447;
      match(TOKEN_GRAPH_CLOSE);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ClassDefinitionContext classDefinition() {
    dynamic _localctx = ClassDefinitionContext(context, state);
    enterRule(_localctx, 20, RULE_classDefinition);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 449;
      match(TOKEN_CLASS);
      state = 450;
      _localctx.name = match(TOKEN_ID);
      state = 454;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_NEWLINE) {
        state = 451;
        match(TOKEN_NEWLINE);
        state = 456;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 457;
      match(TOKEN_GRAPH_OPEN);
      state = 461;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_NEWLINE) {
        state = 458;
        match(TOKEN_NEWLINE);
        state = 463;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 464;
      block();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
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
      case 0: return precpred(context, 16);
      case 1: return precpred(context, 15);
      case 2: return precpred(context, 14);
      case 3: return precpred(context, 13);
      case 4: return precpred(context, 12);
      case 5: return precpred(context, 11);
      case 6: return precpred(context, 10);
      case 7: return precpred(context, 9);
      case 8: return precpred(context, 8);
      case 9: return precpred(context, 7);
      case 10: return precpred(context, 6);
    }
    return true;
  }

  static const List<int> _serializedATN = [
      4,1,39,467,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,1,0,4,0,24,8,0,11,0,12,0,25,1,1,
      1,1,1,1,1,2,1,2,1,2,5,2,34,8,2,10,2,12,2,37,9,2,1,2,1,2,3,2,41,8,2,
      1,2,5,2,44,8,2,10,2,12,2,47,9,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,3,2,56,
      8,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,3,2,65,8,2,1,2,1,2,1,2,1,2,1,2,1,2,
      1,2,1,2,1,2,1,2,1,2,1,2,1,2,3,2,80,8,2,1,3,1,3,1,3,1,3,1,3,1,3,3,3,
      88,8,3,1,4,1,4,1,4,1,4,1,4,1,4,1,4,5,4,97,8,4,10,4,12,4,100,9,4,1,
      4,1,4,1,4,5,4,105,8,4,10,4,12,4,108,9,4,1,4,1,4,1,4,5,4,113,8,4,10,
      4,12,4,116,9,4,1,4,1,4,1,4,5,4,121,8,4,10,4,12,4,124,9,4,1,4,1,4,5,
      4,128,8,4,10,4,12,4,131,9,4,1,4,1,4,1,4,3,4,136,8,4,1,4,1,4,5,4,140,
      8,4,10,4,12,4,143,9,4,1,4,1,4,5,4,147,8,4,10,4,12,4,150,9,4,1,4,1,
      4,1,4,5,4,155,8,4,10,4,12,4,158,9,4,1,4,1,4,5,4,162,8,4,10,4,12,4,
      165,9,4,1,4,1,4,1,4,5,4,170,8,4,10,4,12,4,173,9,4,1,4,1,4,5,4,177,
      8,4,10,4,12,4,180,9,4,1,4,1,4,1,4,5,4,185,8,4,10,4,12,4,188,9,4,1,
      4,1,4,5,4,192,8,4,10,4,12,4,195,9,4,1,4,1,4,1,4,5,4,200,8,4,10,4,12,
      4,203,9,4,1,4,1,4,5,4,207,8,4,10,4,12,4,210,9,4,1,4,1,4,1,4,5,4,215,
      8,4,10,4,12,4,218,9,4,1,4,1,4,5,4,222,8,4,10,4,12,4,225,9,4,1,4,1,
      4,1,4,5,4,230,8,4,10,4,12,4,233,9,4,1,4,1,4,5,4,237,8,4,10,4,12,4,
      240,9,4,1,4,1,4,1,4,5,4,245,8,4,10,4,12,4,248,9,4,1,4,1,4,5,4,252,
      8,4,10,4,12,4,255,9,4,1,4,1,4,1,4,5,4,260,8,4,10,4,12,4,263,9,4,1,
      4,1,4,5,4,267,8,4,10,4,12,4,270,9,4,1,4,1,4,1,4,5,4,275,8,4,10,4,12,
      4,278,9,4,1,4,1,4,5,4,282,8,4,10,4,12,4,285,9,4,1,4,1,4,1,4,5,4,290,
      8,4,10,4,12,4,293,9,4,1,4,1,4,5,4,297,8,4,10,4,12,4,300,9,4,1,4,5,
      4,303,8,4,10,4,12,4,306,9,4,1,5,1,5,1,5,1,5,1,5,5,5,313,8,5,10,5,12,
      5,316,9,5,1,5,1,5,5,5,320,8,5,10,5,12,5,323,9,5,1,5,5,5,326,8,5,10,
      5,12,5,329,9,5,1,5,3,5,332,8,5,1,5,1,5,5,5,336,8,5,10,5,12,5,339,9,
      5,1,5,1,5,1,6,1,6,5,6,345,8,6,10,6,12,6,348,9,6,1,6,1,6,1,7,1,7,5,
      7,354,8,7,10,7,12,7,357,9,7,1,7,1,7,5,7,361,8,7,10,7,12,7,364,9,7,
      1,7,1,7,5,7,368,8,7,10,7,12,7,371,9,7,1,7,1,7,5,7,375,8,7,10,7,12,
      7,378,9,7,5,7,380,8,7,10,7,12,7,383,9,7,1,7,3,7,386,8,7,1,7,5,7,389,
      8,7,10,7,12,7,392,9,7,1,7,1,7,5,7,396,8,7,10,7,12,7,399,9,7,1,7,1,
      7,3,7,403,8,7,1,8,1,8,5,8,407,8,8,10,8,12,8,410,9,8,1,8,1,8,5,8,414,
      8,8,10,8,12,8,417,9,8,1,8,1,8,1,9,1,9,5,9,423,8,9,10,9,12,9,426,9,
      9,1,9,1,9,5,9,430,8,9,10,9,12,9,433,9,9,1,9,1,9,5,9,437,8,9,10,9,12,
      9,440,9,9,1,9,5,9,443,8,9,10,9,12,9,446,9,9,1,9,1,9,1,10,1,10,1,10,
      5,10,453,8,10,10,10,12,10,456,9,10,1,10,1,10,5,10,460,8,10,10,10,12,
      10,463,9,10,1,10,1,10,1,10,0,1,8,11,0,2,4,6,8,10,12,14,16,18,20,0,
      1,1,1,1,1,542,0,23,1,0,0,0,2,27,1,0,0,0,4,79,1,0,0,0,6,87,1,0,0,0,
      8,135,1,0,0,0,10,307,1,0,0,0,12,342,1,0,0,0,14,351,1,0,0,0,16,404,
      1,0,0,0,18,420,1,0,0,0,20,449,1,0,0,0,22,24,3,2,1,0,23,22,1,0,0,0,
      24,25,1,0,0,0,25,23,1,0,0,0,25,26,1,0,0,0,26,1,1,0,0,0,27,28,3,4,2,
      0,28,29,7,0,0,0,29,3,1,0,0,0,30,41,5,3,0,0,31,35,5,3,0,0,32,34,5,1,
      0,0,33,32,1,0,0,0,34,37,1,0,0,0,35,33,1,0,0,0,35,36,1,0,0,0,36,38,
      1,0,0,0,37,35,1,0,0,0,38,41,3,6,3,0,39,41,3,6,3,0,40,30,1,0,0,0,40,
      31,1,0,0,0,40,39,1,0,0,0,41,45,1,0,0,0,42,44,5,1,0,0,43,42,1,0,0,0,
      44,47,1,0,0,0,45,43,1,0,0,0,45,46,1,0,0,0,46,48,1,0,0,0,47,45,1,0,
      0,0,48,49,5,17,0,0,49,50,5,10,0,0,50,51,3,8,4,0,51,52,5,11,0,0,52,
      80,1,0,0,0,53,55,5,4,0,0,54,56,3,6,3,0,55,54,1,0,0,0,55,56,1,0,0,0,
      56,57,1,0,0,0,57,58,5,17,0,0,58,59,5,10,0,0,59,60,3,8,4,0,60,61,5,
      11,0,0,61,80,1,0,0,0,62,64,5,5,0,0,63,65,3,6,3,0,64,63,1,0,0,0,64,
      65,1,0,0,0,65,66,1,0,0,0,66,67,5,17,0,0,67,68,5,10,0,0,68,69,3,8,4,
      0,69,70,5,11,0,0,70,80,1,0,0,0,71,72,5,17,0,0,72,73,5,10,0,0,73,74,
      3,8,4,0,74,75,5,11,0,0,75,80,1,0,0,0,76,80,3,10,5,0,77,80,3,14,7,0,
      78,80,3,20,10,0,79,40,1,0,0,0,79,53,1,0,0,0,79,62,1,0,0,0,79,71,1,
      0,0,0,79,76,1,0,0,0,79,77,1,0,0,0,79,78,1,0,0,0,80,5,1,0,0,0,81,88,
      5,6,0,0,82,88,5,7,0,0,83,88,5,9,0,0,84,88,5,8,0,0,85,88,5,17,0,0,86,
      88,5,33,0,0,87,81,1,0,0,0,87,82,1,0,0,0,87,83,1,0,0,0,87,84,1,0,0,
      0,87,85,1,0,0,0,87,86,1,0,0,0,88,7,1,0,0,0,89,90,6,4,-1,0,90,136,5,
      14,0,0,91,136,5,12,0,0,92,136,5,13,0,0,93,136,5,15,0,0,94,98,5,19,
      0,0,95,97,5,1,0,0,96,95,1,0,0,0,97,100,1,0,0,0,98,96,1,0,0,0,98,99,
      1,0,0,0,99,101,1,0,0,0,100,98,1,0,0,0,101,136,3,8,4,5,102,106,5,18,
      0,0,103,105,5,1,0,0,104,103,1,0,0,0,105,108,1,0,0,0,106,104,1,0,0,
      0,106,107,1,0,0,0,107,109,1,0,0,0,108,106,1,0,0,0,109,136,3,8,4,4,
      110,114,5,30,0,0,111,113,5,1,0,0,112,111,1,0,0,0,113,116,1,0,0,0,114,
      112,1,0,0,0,114,115,1,0,0,0,115,117,1,0,0,0,116,114,1,0,0,0,117,136,
      3,8,4,3,118,122,5,31,0,0,119,121,5,1,0,0,120,119,1,0,0,0,121,124,1,
      0,0,0,122,120,1,0,0,0,122,123,1,0,0,0,123,125,1,0,0,0,124,122,1,0,
      0,0,125,129,3,8,4,0,126,128,5,1,0,0,127,126,1,0,0,0,128,131,1,0,0,
      0,129,127,1,0,0,0,129,130,1,0,0,0,130,132,1,0,0,0,131,129,1,0,0,0,
      132,133,5,31,0,0,133,136,1,0,0,0,134,136,5,17,0,0,135,89,1,0,0,0,135,
      91,1,0,0,0,135,92,1,0,0,0,135,93,1,0,0,0,135,94,1,0,0,0,135,102,1,
      0,0,0,135,110,1,0,0,0,135,118,1,0,0,0,135,134,1,0,0,0,136,304,1,0,
      0,0,137,141,10,16,0,0,138,140,5,1,0,0,139,138,1,0,0,0,140,143,1,0,
      0,0,141,139,1,0,0,0,141,142,1,0,0,0,142,144,1,0,0,0,143,141,1,0,0,
      0,144,148,5,18,0,0,145,147,5,1,0,0,146,145,1,0,0,0,147,150,1,0,0,0,
      148,146,1,0,0,0,148,149,1,0,0,0,149,151,1,0,0,0,150,148,1,0,0,0,151,
      303,3,8,4,17,152,156,10,15,0,0,153,155,5,1,0,0,154,153,1,0,0,0,155,
      158,1,0,0,0,156,154,1,0,0,0,156,157,1,0,0,0,157,159,1,0,0,0,158,156,
      1,0,0,0,159,163,5,19,0,0,160,162,5,1,0,0,161,160,1,0,0,0,162,165,1,
      0,0,0,163,161,1,0,0,0,163,164,1,0,0,0,164,166,1,0,0,0,165,163,1,0,
      0,0,166,303,3,8,4,16,167,171,10,14,0,0,168,170,5,1,0,0,169,168,1,0,
      0,0,170,173,1,0,0,0,171,169,1,0,0,0,171,172,1,0,0,0,172,174,1,0,0,
      0,173,171,1,0,0,0,174,178,5,21,0,0,175,177,5,1,0,0,176,175,1,0,0,0,
      177,180,1,0,0,0,178,176,1,0,0,0,178,179,1,0,0,0,179,181,1,0,0,0,180,
      178,1,0,0,0,181,303,3,8,4,15,182,186,10,13,0,0,183,185,5,1,0,0,184,
      183,1,0,0,0,185,188,1,0,0,0,186,184,1,0,0,0,186,187,1,0,0,0,187,189,
      1,0,0,0,188,186,1,0,0,0,189,193,5,20,0,0,190,192,5,1,0,0,191,190,1,
      0,0,0,192,195,1,0,0,0,193,191,1,0,0,0,193,194,1,0,0,0,194,196,1,0,
      0,0,195,193,1,0,0,0,196,303,3,8,4,14,197,201,10,12,0,0,198,200,5,1,
      0,0,199,198,1,0,0,0,200,203,1,0,0,0,201,199,1,0,0,0,201,202,1,0,0,
      0,202,204,1,0,0,0,203,201,1,0,0,0,204,208,5,28,0,0,205,207,5,1,0,0,
      206,205,1,0,0,0,207,210,1,0,0,0,208,206,1,0,0,0,208,209,1,0,0,0,209,
      211,1,0,0,0,210,208,1,0,0,0,211,303,3,8,4,13,212,216,10,11,0,0,213,
      215,5,1,0,0,214,213,1,0,0,0,215,218,1,0,0,0,216,214,1,0,0,0,216,217,
      1,0,0,0,217,219,1,0,0,0,218,216,1,0,0,0,219,223,5,29,0,0,220,222,5,
      1,0,0,221,220,1,0,0,0,222,225,1,0,0,0,223,221,1,0,0,0,223,224,1,0,
      0,0,224,226,1,0,0,0,225,223,1,0,0,0,226,303,3,8,4,12,227,231,10,10,
      0,0,228,230,5,1,0,0,229,228,1,0,0,0,230,233,1,0,0,0,231,229,1,0,0,
      0,231,232,1,0,0,0,232,234,1,0,0,0,233,231,1,0,0,0,234,238,5,25,0,0,
      235,237,5,1,0,0,236,235,1,0,0,0,237,240,1,0,0,0,238,236,1,0,0,0,238,
      239,1,0,0,0,239,241,1,0,0,0,240,238,1,0,0,0,241,303,3,8,4,11,242,246,
      10,9,0,0,243,245,5,1,0,0,244,243,1,0,0,0,245,248,1,0,0,0,246,244,1,
      0,0,0,246,247,1,0,0,0,247,249,1,0,0,0,248,246,1,0,0,0,249,253,5,26,
      0,0,250,252,5,1,0,0,251,250,1,0,0,0,252,255,1,0,0,0,253,251,1,0,0,
      0,253,254,1,0,0,0,254,256,1,0,0,0,255,253,1,0,0,0,256,303,3,8,4,10,
      257,261,10,8,0,0,258,260,5,1,0,0,259,258,1,0,0,0,260,263,1,0,0,0,261,
      259,1,0,0,0,261,262,1,0,0,0,262,264,1,0,0,0,263,261,1,0,0,0,264,268,
      5,23,0,0,265,267,5,1,0,0,266,265,1,0,0,0,267,270,1,0,0,0,268,266,1,
      0,0,0,268,269,1,0,0,0,269,271,1,0,0,0,270,268,1,0,0,0,271,303,3,8,
      4,9,272,276,10,7,0,0,273,275,5,1,0,0,274,273,1,0,0,0,275,278,1,0,0,
      0,276,274,1,0,0,0,276,277,1,0,0,0,277,279,1,0,0,0,278,276,1,0,0,0,
      279,283,5,24,0,0,280,282,5,1,0,0,281,280,1,0,0,0,282,285,1,0,0,0,283,
      281,1,0,0,0,283,284,1,0,0,0,284,286,1,0,0,0,285,283,1,0,0,0,286,303,
      3,8,4,8,287,291,10,6,0,0,288,290,5,1,0,0,289,288,1,0,0,0,290,293,1,
      0,0,0,291,289,1,0,0,0,291,292,1,0,0,0,292,294,1,0,0,0,293,291,1,0,
      0,0,294,298,5,27,0,0,295,297,5,1,0,0,296,295,1,0,0,0,297,300,1,0,0,
      0,298,296,1,0,0,0,298,299,1,0,0,0,299,301,1,0,0,0,300,298,1,0,0,0,
      301,303,3,8,4,7,302,137,1,0,0,0,302,152,1,0,0,0,302,167,1,0,0,0,302,
      182,1,0,0,0,302,197,1,0,0,0,302,212,1,0,0,0,302,227,1,0,0,0,302,242,
      1,0,0,0,302,257,1,0,0,0,302,272,1,0,0,0,302,287,1,0,0,0,303,306,1,
      0,0,0,304,302,1,0,0,0,304,305,1,0,0,0,305,9,1,0,0,0,306,304,1,0,0,
      0,307,308,3,6,3,0,308,309,5,17,0,0,309,321,5,31,0,0,310,314,3,12,6,
      0,311,313,5,1,0,0,312,311,1,0,0,0,313,316,1,0,0,0,314,312,1,0,0,0,
      314,315,1,0,0,0,315,317,1,0,0,0,316,314,1,0,0,0,317,318,5,36,0,0,318,
      320,1,0,0,0,319,310,1,0,0,0,320,323,1,0,0,0,321,319,1,0,0,0,321,322,
      1,0,0,0,322,327,1,0,0,0,323,321,1,0,0,0,324,326,5,1,0,0,325,324,1,
      0,0,0,326,329,1,0,0,0,327,325,1,0,0,0,327,328,1,0,0,0,328,331,1,0,
      0,0,329,327,1,0,0,0,330,332,3,12,6,0,331,330,1,0,0,0,331,332,1,0,0,
      0,332,333,1,0,0,0,333,337,5,32,0,0,334,336,5,1,0,0,335,334,1,0,0,0,
      336,339,1,0,0,0,337,335,1,0,0,0,337,338,1,0,0,0,338,340,1,0,0,0,339,
      337,1,0,0,0,340,341,3,18,9,0,341,11,1,0,0,0,342,346,3,6,3,0,343,345,
      5,1,0,0,344,343,1,0,0,0,345,348,1,0,0,0,346,344,1,0,0,0,346,347,1,
      0,0,0,347,349,1,0,0,0,348,346,1,0,0,0,349,350,5,17,0,0,350,13,1,0,
      0,0,351,355,5,17,0,0,352,354,5,1,0,0,353,352,1,0,0,0,354,357,1,0,0,
      0,355,353,1,0,0,0,355,356,1,0,0,0,356,358,1,0,0,0,357,355,1,0,0,0,
      358,362,5,31,0,0,359,361,5,1,0,0,360,359,1,0,0,0,361,364,1,0,0,0,362,
      360,1,0,0,0,362,363,1,0,0,0,363,381,1,0,0,0,364,362,1,0,0,0,365,369,
      3,16,8,0,366,368,5,1,0,0,367,366,1,0,0,0,368,371,1,0,0,0,369,367,1,
      0,0,0,369,370,1,0,0,0,370,372,1,0,0,0,371,369,1,0,0,0,372,376,5,36,
      0,0,373,375,5,1,0,0,374,373,1,0,0,0,375,378,1,0,0,0,376,374,1,0,0,
      0,376,377,1,0,0,0,377,380,1,0,0,0,378,376,1,0,0,0,379,365,1,0,0,0,
      380,383,1,0,0,0,381,379,1,0,0,0,381,382,1,0,0,0,382,385,1,0,0,0,383,
      381,1,0,0,0,384,386,3,16,8,0,385,384,1,0,0,0,385,386,1,0,0,0,386,390,
      1,0,0,0,387,389,5,1,0,0,388,387,1,0,0,0,389,392,1,0,0,0,390,388,1,
      0,0,0,390,391,1,0,0,0,391,393,1,0,0,0,392,390,1,0,0,0,393,397,5,32,
      0,0,394,396,5,1,0,0,395,394,1,0,0,0,396,399,1,0,0,0,397,395,1,0,0,
      0,397,398,1,0,0,0,398,402,1,0,0,0,399,397,1,0,0,0,400,403,3,18,9,0,
      401,403,5,11,0,0,402,400,1,0,0,0,402,401,1,0,0,0,403,15,1,0,0,0,404,
      408,5,38,0,0,405,407,5,1,0,0,406,405,1,0,0,0,407,410,1,0,0,0,408,406,
      1,0,0,0,408,409,1,0,0,0,409,411,1,0,0,0,410,408,1,0,0,0,411,415,5,
      39,0,0,412,414,5,1,0,0,413,412,1,0,0,0,414,417,1,0,0,0,415,413,1,0,
      0,0,415,416,1,0,0,0,416,418,1,0,0,0,417,415,1,0,0,0,418,419,5,17,0,
      0,419,17,1,0,0,0,420,424,5,34,0,0,421,423,5,1,0,0,422,421,1,0,0,0,
      423,426,1,0,0,0,424,422,1,0,0,0,424,425,1,0,0,0,425,438,1,0,0,0,426,
      424,1,0,0,0,427,431,3,4,2,0,428,430,5,1,0,0,429,428,1,0,0,0,430,433,
      1,0,0,0,431,429,1,0,0,0,431,432,1,0,0,0,432,434,1,0,0,0,433,431,1,
      0,0,0,434,435,5,11,0,0,435,437,1,0,0,0,436,427,1,0,0,0,437,440,1,0,
      0,0,438,436,1,0,0,0,438,439,1,0,0,0,439,444,1,0,0,0,440,438,1,0,0,
      0,441,443,5,1,0,0,442,441,1,0,0,0,443,446,1,0,0,0,444,442,1,0,0,0,
      444,445,1,0,0,0,445,447,1,0,0,0,446,444,1,0,0,0,447,448,5,35,0,0,448,
      19,1,0,0,0,449,450,5,37,0,0,450,454,5,17,0,0,451,453,5,1,0,0,452,451,
      1,0,0,0,453,456,1,0,0,0,454,452,1,0,0,0,454,455,1,0,0,0,455,457,1,
      0,0,0,456,454,1,0,0,0,457,461,5,34,0,0,458,460,5,1,0,0,459,458,1,0,
      0,0,460,463,1,0,0,0,461,459,1,0,0,0,461,462,1,0,0,0,462,464,1,0,0,
      0,463,461,1,0,0,0,464,465,3,18,9,0,465,21,1,0,0,0,61,25,35,40,45,55,
      64,79,87,98,106,114,122,129,135,141,148,156,163,171,178,186,193,201,
      208,216,223,231,238,246,253,261,268,276,283,291,298,302,304,314,321,
      327,331,337,346,355,362,369,376,381,385,390,397,402,408,415,424,431,
      438,444,454,461
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

class ExpressionContext extends ParserRuleContext {
  ExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_expression;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class FunctionDefinitionContext extends ParserRuleContext {
  TypeContext? returnType;
  Token? name;
  TerminalNode? PAREN_OPEN() => getToken(DartParser.TOKEN_PAREN_OPEN, 0);
  TerminalNode? PAREN_CLOSE() => getToken(DartParser.TOKEN_PAREN_CLOSE, 0);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  TypeContext? type() => getRuleContext<TypeContext>(0);
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  List<ParameterContext> parameters() => getRuleContexts<ParameterContext>();
  ParameterContext? parameter(int i) => getRuleContext<ParameterContext>(i);
  List<TerminalNode> COMMAs() => getTokens(DartParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(DartParser.TOKEN_COMMA, i);
  List<TerminalNode> NEWLINEs() => getTokens(DartParser.TOKEN_NEWLINE);
  TerminalNode? NEWLINE(int i) => getToken(DartParser.TOKEN_NEWLINE, i);
  FunctionDefinitionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_functionDefinition;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterFunctionDefinition(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitFunctionDefinition(this);
  }
}

class ParameterContext extends ParserRuleContext {
  TypeContext? type() => getRuleContext<TypeContext>(0);
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  List<TerminalNode> NEWLINEs() => getTokens(DartParser.TOKEN_NEWLINE);
  TerminalNode? NEWLINE(int i) => getToken(DartParser.TOKEN_NEWLINE, i);
  ParameterContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_parameter;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterParameter(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitParameter(this);
  }
}

class ConstructorDefinitionContext extends ParserRuleContext {
  Token? name;
  TerminalNode? PAREN_OPEN() => getToken(DartParser.TOKEN_PAREN_OPEN, 0);
  TerminalNode? PAREN_CLOSE() => getToken(DartParser.TOKEN_PAREN_CLOSE, 0);
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  TerminalNode? SEMICOLON() => getToken(DartParser.TOKEN_SEMICOLON, 0);
  List<TerminalNode> NEWLINEs() => getTokens(DartParser.TOKEN_NEWLINE);
  TerminalNode? NEWLINE(int i) => getToken(DartParser.TOKEN_NEWLINE, i);
  List<ConstructorParameterContext> constructorParameters() => getRuleContexts<ConstructorParameterContext>();
  ConstructorParameterContext? constructorParameter(int i) => getRuleContext<ConstructorParameterContext>(i);
  List<TerminalNode> COMMAs() => getTokens(DartParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(DartParser.TOKEN_COMMA, i);
  ConstructorDefinitionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_constructorDefinition;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterConstructorDefinition(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitConstructorDefinition(this);
  }
}

class ConstructorParameterContext extends ParserRuleContext {
  Token? name;
  TerminalNode? THIS() => getToken(DartParser.TOKEN_THIS, 0);
  TerminalNode? DOT() => getToken(DartParser.TOKEN_DOT, 0);
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  List<TerminalNode> NEWLINEs() => getTokens(DartParser.TOKEN_NEWLINE);
  TerminalNode? NEWLINE(int i) => getToken(DartParser.TOKEN_NEWLINE, i);
  ConstructorParameterContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_constructorParameter;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterConstructorParameter(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitConstructorParameter(this);
  }
}

class BlockContext extends ParserRuleContext {
  TerminalNode? GRAPH_OPEN() => getToken(DartParser.TOKEN_GRAPH_OPEN, 0);
  TerminalNode? GRAPH_CLOSE() => getToken(DartParser.TOKEN_GRAPH_CLOSE, 0);
  List<TerminalNode> NEWLINEs() => getTokens(DartParser.TOKEN_NEWLINE);
  TerminalNode? NEWLINE(int i) => getToken(DartParser.TOKEN_NEWLINE, i);
  List<StatementContext> statements() => getRuleContexts<StatementContext>();
  StatementContext? statement(int i) => getRuleContext<StatementContext>(i);
  List<TerminalNode> SEMICOLONs() => getTokens(DartParser.TOKEN_SEMICOLON);
  TerminalNode? SEMICOLON(int i) => getToken(DartParser.TOKEN_SEMICOLON, i);
  BlockContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_block;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterBlock(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitBlock(this);
  }
}

class ClassDefinitionContext extends ParserRuleContext {
  Token? name;
  TerminalNode? CLASS() => getToken(DartParser.TOKEN_CLASS, 0);
  TerminalNode? GRAPH_OPEN() => getToken(DartParser.TOKEN_GRAPH_OPEN, 0);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  List<TerminalNode> NEWLINEs() => getTokens(DartParser.TOKEN_NEWLINE);
  TerminalNode? NEWLINE(int i) => getToken(DartParser.TOKEN_NEWLINE, i);
  ClassDefinitionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_classDefinition;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterClassDefinition(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitClassDefinition(this);
  }
}

class VarDeclarationStatementContext extends StatementContext {
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  TerminalNode? ASSIGN() => getToken(DartParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? SEMICOLON() => getToken(DartParser.TOKEN_SEMICOLON, 0);
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

class FunctionDefinitionStatementContext extends StatementContext {
  FunctionDefinitionContext? functionDefinition() => getRuleContext<FunctionDefinitionContext>(0);
  FunctionDefinitionStatementContext(StatementContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterFunctionDefinitionStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitFunctionDefinitionStatement(this);
  }
}

class ConstDeclarationStatmentContext extends StatementContext {
  TerminalNode? CONST() => getToken(DartParser.TOKEN_CONST, 0);
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  TerminalNode? ASSIGN() => getToken(DartParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? SEMICOLON() => getToken(DartParser.TOKEN_SEMICOLON, 0);
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
  TerminalNode? SEMICOLON() => getToken(DartParser.TOKEN_SEMICOLON, 0);
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
  TerminalNode? SEMICOLON() => getToken(DartParser.TOKEN_SEMICOLON, 0);
  AssigmentStatementContext(StatementContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterAssigmentStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitAssigmentStatement(this);
  }
}

class ClassDefinitionStatementContext extends StatementContext {
  ClassDefinitionContext? classDefinition() => getRuleContext<ClassDefinitionContext>(0);
  ClassDefinitionStatementContext(StatementContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterClassDefinitionStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitClassDefinitionStatement(this);
  }
}

class ConstructorDefinitionStatementContext extends StatementContext {
  ConstructorDefinitionContext? constructorDefinition() => getRuleContext<ConstructorDefinitionContext>(0);
  ConstructorDefinitionStatementContext(StatementContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterConstructorDefinitionStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitConstructorDefinitionStatement(this);
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

class VoidTypeContext extends TypeContext {
  TerminalNode? VOID() => getToken(DartParser.TOKEN_VOID, 0);
  VoidTypeContext(TypeContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterVoidType(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitVoidType(this);
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

class UnaryLogicNegationExpressionContext extends ExpressionContext {
  Token? operand;
  ExpressionContext? value;
  TerminalNode? NOT() => getToken(DartParser.TOKEN_NOT, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  List<TerminalNode> NEWLINEs() => getTokens(DartParser.TOKEN_NEWLINE);
  TerminalNode? NEWLINE(int i) => getToken(DartParser.TOKEN_NEWLINE, i);
  UnaryLogicNegationExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterUnaryLogicNegationExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitUnaryLogicNegationExpression(this);
  }
}

class UnaryMathExpressionContext extends ExpressionContext {
  Token? operand;
  ExpressionContext? value;
  TerminalNode? MINUS() => getToken(DartParser.TOKEN_MINUS, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  List<TerminalNode> NEWLINEs() => getTokens(DartParser.TOKEN_NEWLINE);
  TerminalNode? NEWLINE(int i) => getToken(DartParser.TOKEN_NEWLINE, i);
  TerminalNode? PLUS() => getToken(DartParser.TOKEN_PLUS, 0);
  UnaryMathExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterUnaryMathExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitUnaryMathExpression(this);
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