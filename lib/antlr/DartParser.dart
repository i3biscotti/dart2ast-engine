// Generated from d://Progetti personali//dart2kotlin//dart2ast_engine//antrl4//DartParser.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'DartParserListener.dart';
import 'DartParserBaseListener.dart';
const int RULE_dartFile = 0, RULE_statement = 1, RULE_type = 2, RULE_expression = 3, 
          RULE_functionDefinition = 4, RULE_parameter = 5, RULE_block = 6, 
          RULE_classDefinition = 7, RULE_classStatement = 8;
class DartParser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.1', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int TOKEN_WS = 1, TOKEN_VAR = 2, TOKEN_FINAL = 3, TOKEN_CONST = 4, 
                   TOKEN_CLASS = 5, TOKEN_THIS = 6, TOKEN_INT = 7, TOKEN_DOUBLE = 8, 
                   TOKEN_STRING = 9, TOKEN_BOOL = 10, TOKEN_VOID = 11, TOKEN_ASSIGN = 12, 
                   TOKEN_SEMICOLON = 13, TOKEN_INTLIT = 14, TOKEN_DOUBLELIT = 15, 
                   TOKEN_BOOLLIT = 16, TOKEN_STRINGLIT = 17, TOKEN_PLUS = 18, 
                   TOKEN_MINUS = 19, TOKEN_DIVISION = 20, TOKEN_TIMES = 21, 
                   TOKEN_MODULE = 22, TOKEN_GREATER_EQUAL_THAN = 23, TOKEN_LOWER_EQUAL_THAN = 24, 
                   TOKEN_GREATER_THAN = 25, TOKEN_LOWER_THAN = 26, TOKEN_EQUAL = 27, 
                   TOKEN_AND = 28, TOKEN_OR = 29, TOKEN_NOT = 30, TOKEN_PAREN_OPEN = 31, 
                   TOKEN_PAREN_CLOSE = 32, TOKEN_GRAPH_OPEN = 33, TOKEN_GRAPH_CLOSE = 34, 
                   TOKEN_COMMA = 35, TOKEN_DOT = 36, TOKEN_ID = 37, TOKEN_UnterminatedStringLiteral = 38;

  @override
  final List<String> ruleNames = [
    'dartFile', 'statement', 'type', 'expression', 'functionDefinition', 
    'parameter', 'block', 'classDefinition', 'classStatement'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, null, "'var'", "'final'", "'const'", "'class'", "'this'", "'int'", 
      "'double'", "'String'", "'bool'", "'void'", "'='", "';'", null, null, 
      null, null, "'+'", "'-'", "'/'", "'*'", "'%'", "'>='", "'<='", "'>'", 
      "'<'", "'=='", "'&&'", "'||'", "'!'", "'('", "')'", "'{'", "'}'", 
      "','", "'.'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, "WS", "VAR", "FINAL", "CONST", "CLASS", "THIS", "INT", "DOUBLE", 
      "STRING", "BOOL", "VOID", "ASSIGN", "SEMICOLON", "INTLIT", "DOUBLELIT", 
      "BOOLLIT", "STRINGLIT", "PLUS", "MINUS", "DIVISION", "TIMES", "MODULE", 
      "GREATER_EQUAL_THAN", "LOWER_EQUAL_THAN", "GREATER_THAN", "LOWER_THAN", 
      "EQUAL", "AND", "OR", "NOT", "PAREN_OPEN", "PAREN_CLOSE", "GRAPH_OPEN", 
      "GRAPH_CLOSE", "COMMA", "DOT", "ID", "UnterminatedStringLiteral"
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
      state = 19; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 18;
        statement();
        state = 21; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 137438957500) != 0));
      state = 23;
      match(TOKEN_EOF);
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
    enterRule(_localctx, 2, RULE_statement);
    try {
      state = 61;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 4, context)) {
      case 1:
        _localctx = VarDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 29;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 1, context)) {
        case 1:
          state = 25;
          match(TOKEN_VAR);
          break;
        case 2:
          state = 26;
          match(TOKEN_VAR);
          state = 27;
          type();
          break;
        case 3:
          state = 28;
          type();
          break;
        }
        state = 31;
        match(TOKEN_ID);
        state = 32;
        match(TOKEN_ASSIGN);
        state = 33;
        expression(0);
        state = 34;
        match(TOKEN_SEMICOLON);
        break;
      case 2:
        _localctx = FinalDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 36;
        match(TOKEN_FINAL);
        state = 38;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 2, context)) {
        case 1:
          state = 37;
          type();
          break;
        }
        state = 40;
        match(TOKEN_ID);
        state = 41;
        match(TOKEN_ASSIGN);
        state = 42;
        expression(0);
        state = 43;
        match(TOKEN_SEMICOLON);
        break;
      case 3:
        _localctx = ConstDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 45;
        match(TOKEN_CONST);
        state = 47;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 3, context)) {
        case 1:
          state = 46;
          type();
          break;
        }
        state = 49;
        match(TOKEN_ID);
        state = 50;
        match(TOKEN_ASSIGN);
        state = 51;
        expression(0);
        state = 52;
        match(TOKEN_SEMICOLON);
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
        state = 57;
        match(TOKEN_SEMICOLON);
        break;
      case 5:
        _localctx = FunctionDefinitionStatementContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 59;
        functionDefinition();
        break;
      case 6:
        _localctx = ClassDefinitionStatementContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 60;
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
    enterRule(_localctx, 4, RULE_type);
    try {
      state = 69;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_INT:
        _localctx = IntTypeContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 63;
        match(TOKEN_INT);
        break;
      case TOKEN_DOUBLE:
        _localctx = DoubleTypeContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 64;
        match(TOKEN_DOUBLE);
        break;
      case TOKEN_BOOL:
        _localctx = BoolTypeContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 65;
        match(TOKEN_BOOL);
        break;
      case TOKEN_STRING:
        _localctx = StringTypeContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 66;
        match(TOKEN_STRING);
        break;
      case TOKEN_VOID:
        _localctx = VoidTypeContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 67;
        match(TOKEN_VOID);
        break;
      case TOKEN_ID:
        _localctx = CustomTypeContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 68;
        _localctx.name = match(TOKEN_ID);
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
    var _startState = 6;
    enterRecursionRule(_localctx, 6, RULE_expression, _p);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 120;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 10, context)) {
      case 1:
        _localctx = BoolLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;

        state = 72;
        match(TOKEN_BOOLLIT);
        break;
      case 2:
        _localctx = IntLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 73;
        match(TOKEN_INTLIT);
        break;
      case 3:
        _localctx = DoubleLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 74;
        match(TOKEN_DOUBLELIT);
        break;
      case 4:
        _localctx = StringLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 75;
        match(TOKEN_STRINGLIT);
        break;
      case 5:
        _localctx = UnaryMathExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 76;
        _localctx.operand = match(TOKEN_MINUS);
        state = 77;
        _localctx.value = expression(8);
        break;
      case 6:
        _localctx = UnaryMathExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 78;
        _localctx.operand = match(TOKEN_PLUS);
        state = 79;
        _localctx.value = expression(7);
        break;
      case 7:
        _localctx = UnaryLogicNegationExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 80;
        _localctx.operand = match(TOKEN_NOT);
        state = 81;
        _localctx.value = expression(6);
        break;
      case 8:
        _localctx = ParenthesysExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 82;
        match(TOKEN_PAREN_OPEN);
        state = 83;
        _localctx.value = expression(0);
        state = 84;
        match(TOKEN_PAREN_OPEN);
        break;
      case 9:
        _localctx = VarReferenceExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 86;
        match(TOKEN_ID);
        break;
      case 10:
        _localctx = FunctionCallExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 87;
        match(TOKEN_ID);
        state = 88;
        match(TOKEN_PAREN_OPEN);
        state = 94;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 6, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 89;
            expression(0);
            state = 90;
            match(TOKEN_COMMA); 
          }
          state = 96;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 6, context);
        }
        state = 98;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 140661211136) != 0)) {
          state = 97;
          expression(0);
        }

        state = 100;
        match(TOKEN_PAREN_CLOSE);
        break;
      case 11:
        _localctx = ObjectPropertyReferenceExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 101;
        match(TOKEN_ID);
        state = 102;
        match(TOKEN_DOT);
        state = 103;
        match(TOKEN_ID);
        break;
      case 12:
        _localctx = ObjectMethodCallExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 104;
        match(TOKEN_ID);
        state = 105;
        match(TOKEN_DOT);
        state = 106;
        match(TOKEN_ID);
        state = 107;
        match(TOKEN_PAREN_OPEN);
        state = 113;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 8, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 108;
            expression(0);
            state = 109;
            match(TOKEN_COMMA); 
          }
          state = 115;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 8, context);
        }
        state = 117;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 140661211136) != 0)) {
          state = 116;
          expression(0);
        }

        state = 119;
        match(TOKEN_PAREN_CLOSE);
        break;
      }
      context!.stop = tokenStream.LT(-1);
      state = 157;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 12, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 155;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 11, context)) {
          case 1:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 122;
            if (!(precpred(context, 19))) {
              throw FailedPredicateException(this, "precpred(context, 19)");
            }
            state = 123;
            _localctx.openand = match(TOKEN_PLUS);
            state = 124;
            _localctx.right = expression(20);
            break;
          case 2:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 125;
            if (!(precpred(context, 18))) {
              throw FailedPredicateException(this, "precpred(context, 18)");
            }
            state = 126;
            _localctx.openand = match(TOKEN_MINUS);
            state = 127;
            _localctx.right = expression(19);
            break;
          case 3:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 128;
            if (!(precpred(context, 17))) {
              throw FailedPredicateException(this, "precpred(context, 17)");
            }
            state = 129;
            _localctx.openand = match(TOKEN_TIMES);
            state = 130;
            _localctx.right = expression(18);
            break;
          case 4:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 131;
            if (!(precpred(context, 16))) {
              throw FailedPredicateException(this, "precpred(context, 16)");
            }
            state = 132;
            _localctx.openand = match(TOKEN_DIVISION);
            state = 133;
            _localctx.right = expression(17);
            break;
          case 5:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 134;
            if (!(precpred(context, 15))) {
              throw FailedPredicateException(this, "precpred(context, 15)");
            }
            state = 135;
            _localctx.openand = match(TOKEN_AND);
            state = 136;
            _localctx.right = expression(16);
            break;
          case 6:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 137;
            if (!(precpred(context, 14))) {
              throw FailedPredicateException(this, "precpred(context, 14)");
            }
            state = 138;
            _localctx.openand = match(TOKEN_OR);
            state = 139;
            _localctx.right = expression(15);
            break;
          case 7:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 140;
            if (!(precpred(context, 13))) {
              throw FailedPredicateException(this, "precpred(context, 13)");
            }
            state = 141;
            _localctx.openand = match(TOKEN_GREATER_THAN);
            state = 142;
            _localctx.right = expression(14);
            break;
          case 8:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 143;
            if (!(precpred(context, 12))) {
              throw FailedPredicateException(this, "precpred(context, 12)");
            }
            state = 144;
            _localctx.openand = match(TOKEN_LOWER_THAN);
            state = 145;
            _localctx.right = expression(13);
            break;
          case 9:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 146;
            if (!(precpred(context, 11))) {
              throw FailedPredicateException(this, "precpred(context, 11)");
            }
            state = 147;
            _localctx.openand = match(TOKEN_GREATER_EQUAL_THAN);
            state = 148;
            _localctx.right = expression(12);
            break;
          case 10:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 149;
            if (!(precpred(context, 10))) {
              throw FailedPredicateException(this, "precpred(context, 10)");
            }
            state = 150;
            _localctx.openand = match(TOKEN_LOWER_EQUAL_THAN);
            state = 151;
            _localctx.right = expression(11);
            break;
          case 11:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 152;
            if (!(precpred(context, 9))) {
              throw FailedPredicateException(this, "precpred(context, 9)");
            }
            state = 153;
            _localctx.openand = match(TOKEN_EQUAL);
            state = 154;
            _localctx.right = expression(10);
            break;
          } 
        }
        state = 159;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 12, context);
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
    enterRule(_localctx, 8, RULE_functionDefinition);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 160;
      _localctx.returnType = type();
      state = 161;
      _localctx.name = match(TOKEN_ID);
      state = 162;
      match(TOKEN_PAREN_OPEN);
      state = 168;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 13, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 163;
          parameter();
          state = 164;
          match(TOKEN_COMMA); 
        }
        state = 170;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 13, context);
      }
      state = 172;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 137438957504) != 0)) {
        state = 171;
        parameter();
      }

      state = 174;
      match(TOKEN_PAREN_CLOSE);
      state = 175;
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
    enterRule(_localctx, 10, RULE_parameter);
    try {
      enterOuterAlt(_localctx, 1);
      state = 180;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_INT:
      case TOKEN_DOUBLE:
      case TOKEN_STRING:
      case TOKEN_BOOL:
      case TOKEN_VOID:
      case TOKEN_ID:
        state = 177;
        type();
        break;
      case TOKEN_THIS:
        state = 178;
        match(TOKEN_THIS);
        state = 179;
        match(TOKEN_DOT);
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 182;
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

  BlockContext block() {
    dynamic _localctx = BlockContext(context, state);
    enterRule(_localctx, 12, RULE_block);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 184;
      match(TOKEN_GRAPH_OPEN);
      state = 188;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 137438957500) != 0)) {
        state = 185;
        statement();
        state = 190;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 191;
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
    enterRule(_localctx, 14, RULE_classDefinition);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 193;
      match(TOKEN_CLASS);
      state = 194;
      _localctx.name = match(TOKEN_ID);
      state = 195;
      match(TOKEN_GRAPH_OPEN);
      state = 199;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 137438957448) != 0)) {
        state = 196;
        classStatement();
        state = 201;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 202;
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

  ClassStatementContext classStatement() {
    dynamic _localctx = ClassStatementContext(context, state);
    enterRule(_localctx, 16, RULE_classStatement);
    int _la;
    try {
      int _alt;
      state = 242;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 23, context)) {
      case 1:
        _localctx = ClassVarDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 204;
        type();
        state = 205;
        match(TOKEN_ID);
        state = 206;
        match(TOKEN_ASSIGN);
        state = 207;
        expression(0);
        state = 208;
        match(TOKEN_SEMICOLON);
        break;
      case 2:
        _localctx = ClassImmutableVarDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 210;
        match(TOKEN_FINAL);
        state = 212;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 18, context)) {
        case 1:
          state = 211;
          type();
          break;
        }
        state = 214;
        match(TOKEN_ID);
        state = 215;
        match(TOKEN_ASSIGN);
        state = 216;
        expression(0);
        state = 217;
        match(TOKEN_SEMICOLON);
        break;
      case 3:
        _localctx = ClassConstructorDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 219;
        _localctx.className = match(TOKEN_ID);
        state = 222;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_DOT) {
          state = 220;
          match(TOKEN_DOT);
          state = 221;
          _localctx.costructorName = match(TOKEN_ID);
        }

        state = 224;
        match(TOKEN_PAREN_OPEN);
        state = 230;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 20, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 225;
            parameter();
            state = 226;
            match(TOKEN_COMMA); 
          }
          state = 232;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 20, context);
        }
        state = 234;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 137438957504) != 0)) {
          state = 233;
          parameter();
        }

        state = 236;
        match(TOKEN_PAREN_CLOSE);
        state = 239;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_GRAPH_OPEN:
          state = 237;
          block();
          break;
        case TOKEN_SEMICOLON:
          state = 238;
          match(TOKEN_SEMICOLON);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case 4:
        _localctx = ClassMethodDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 241;
        functionDefinition();
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

  @override
  bool sempred(RuleContext? _localctx, int ruleIndex, int predIndex) {
    switch (ruleIndex) {
    case 3:
      return _expression_sempred(_localctx as ExpressionContext?, predIndex);
    }
    return true;
  }
  bool _expression_sempred(dynamic _localctx, int predIndex) {
    switch (predIndex) {
      case 0: return precpred(context, 19);
      case 1: return precpred(context, 18);
      case 2: return precpred(context, 17);
      case 3: return precpred(context, 16);
      case 4: return precpred(context, 15);
      case 5: return precpred(context, 14);
      case 6: return precpred(context, 13);
      case 7: return precpred(context, 12);
      case 8: return precpred(context, 11);
      case 9: return precpred(context, 10);
      case 10: return precpred(context, 9);
    }
    return true;
  }

  static const List<int> _serializedATN = [
      4,1,38,245,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,1,0,4,0,20,8,0,11,0,12,0,21,1,0,1,0,1,1,1,1,1,1,1,
      1,3,1,30,8,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,39,8,1,1,1,1,1,1,1,1,
      1,1,1,1,1,1,1,3,1,48,8,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
      1,1,1,3,1,62,8,1,1,2,1,2,1,2,1,2,1,2,1,2,3,2,70,8,2,1,3,1,3,1,3,1,
      3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,
      1,3,5,3,93,8,3,10,3,12,3,96,9,3,1,3,3,3,99,8,3,1,3,1,3,1,3,1,3,1,3,
      1,3,1,3,1,3,1,3,1,3,1,3,5,3,112,8,3,10,3,12,3,115,9,3,1,3,3,3,118,
      8,3,1,3,3,3,121,8,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,
      3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,
      1,3,1,3,1,3,1,3,1,3,5,3,156,8,3,10,3,12,3,159,9,3,1,4,1,4,1,4,1,4,
      1,4,1,4,5,4,167,8,4,10,4,12,4,170,9,4,1,4,3,4,173,8,4,1,4,1,4,1,4,
      1,5,1,5,1,5,3,5,181,8,5,1,5,1,5,1,6,1,6,5,6,187,8,6,10,6,12,6,190,
      9,6,1,6,1,6,1,7,1,7,1,7,1,7,5,7,198,8,7,10,7,12,7,201,9,7,1,7,1,7,
      1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,3,8,213,8,8,1,8,1,8,1,8,1,8,1,8,1,
      8,1,8,1,8,3,8,223,8,8,1,8,1,8,1,8,1,8,5,8,229,8,8,10,8,12,8,232,9,
      8,1,8,3,8,235,8,8,1,8,1,8,1,8,3,8,240,8,8,1,8,3,8,243,8,8,1,8,0,1,
      6,9,0,2,4,6,8,10,12,14,16,0,0,289,0,19,1,0,0,0,2,61,1,0,0,0,4,69,1,
      0,0,0,6,120,1,0,0,0,8,160,1,0,0,0,10,180,1,0,0,0,12,184,1,0,0,0,14,
      193,1,0,0,0,16,242,1,0,0,0,18,20,3,2,1,0,19,18,1,0,0,0,20,21,1,0,0,
      0,21,19,1,0,0,0,21,22,1,0,0,0,22,23,1,0,0,0,23,24,5,0,0,1,24,1,1,0,
      0,0,25,30,5,2,0,0,26,27,5,2,0,0,27,30,3,4,2,0,28,30,3,4,2,0,29,25,
      1,0,0,0,29,26,1,0,0,0,29,28,1,0,0,0,30,31,1,0,0,0,31,32,5,37,0,0,32,
      33,5,12,0,0,33,34,3,6,3,0,34,35,5,13,0,0,35,62,1,0,0,0,36,38,5,3,0,
      0,37,39,3,4,2,0,38,37,1,0,0,0,38,39,1,0,0,0,39,40,1,0,0,0,40,41,5,
      37,0,0,41,42,5,12,0,0,42,43,3,6,3,0,43,44,5,13,0,0,44,62,1,0,0,0,45,
      47,5,4,0,0,46,48,3,4,2,0,47,46,1,0,0,0,47,48,1,0,0,0,48,49,1,0,0,0,
      49,50,5,37,0,0,50,51,5,12,0,0,51,52,3,6,3,0,52,53,5,13,0,0,53,62,1,
      0,0,0,54,55,5,37,0,0,55,56,5,12,0,0,56,57,3,6,3,0,57,58,5,13,0,0,58,
      62,1,0,0,0,59,62,3,8,4,0,60,62,3,14,7,0,61,29,1,0,0,0,61,36,1,0,0,
      0,61,45,1,0,0,0,61,54,1,0,0,0,61,59,1,0,0,0,61,60,1,0,0,0,62,3,1,0,
      0,0,63,70,5,7,0,0,64,70,5,8,0,0,65,70,5,10,0,0,66,70,5,9,0,0,67,70,
      5,11,0,0,68,70,5,37,0,0,69,63,1,0,0,0,69,64,1,0,0,0,69,65,1,0,0,0,
      69,66,1,0,0,0,69,67,1,0,0,0,69,68,1,0,0,0,70,5,1,0,0,0,71,72,6,3,-1,
      0,72,121,5,16,0,0,73,121,5,14,0,0,74,121,5,15,0,0,75,121,5,17,0,0,
      76,77,5,19,0,0,77,121,3,6,3,8,78,79,5,18,0,0,79,121,3,6,3,7,80,81,
      5,30,0,0,81,121,3,6,3,6,82,83,5,31,0,0,83,84,3,6,3,0,84,85,5,31,0,
      0,85,121,1,0,0,0,86,121,5,37,0,0,87,88,5,37,0,0,88,94,5,31,0,0,89,
      90,3,6,3,0,90,91,5,35,0,0,91,93,1,0,0,0,92,89,1,0,0,0,93,96,1,0,0,
      0,94,92,1,0,0,0,94,95,1,0,0,0,95,98,1,0,0,0,96,94,1,0,0,0,97,99,3,
      6,3,0,98,97,1,0,0,0,98,99,1,0,0,0,99,100,1,0,0,0,100,121,5,32,0,0,
      101,102,5,37,0,0,102,103,5,36,0,0,103,121,5,37,0,0,104,105,5,37,0,
      0,105,106,5,36,0,0,106,107,5,37,0,0,107,113,5,31,0,0,108,109,3,6,3,
      0,109,110,5,35,0,0,110,112,1,0,0,0,111,108,1,0,0,0,112,115,1,0,0,0,
      113,111,1,0,0,0,113,114,1,0,0,0,114,117,1,0,0,0,115,113,1,0,0,0,116,
      118,3,6,3,0,117,116,1,0,0,0,117,118,1,0,0,0,118,119,1,0,0,0,119,121,
      5,32,0,0,120,71,1,0,0,0,120,73,1,0,0,0,120,74,1,0,0,0,120,75,1,0,0,
      0,120,76,1,0,0,0,120,78,1,0,0,0,120,80,1,0,0,0,120,82,1,0,0,0,120,
      86,1,0,0,0,120,87,1,0,0,0,120,101,1,0,0,0,120,104,1,0,0,0,121,157,
      1,0,0,0,122,123,10,19,0,0,123,124,5,18,0,0,124,156,3,6,3,20,125,126,
      10,18,0,0,126,127,5,19,0,0,127,156,3,6,3,19,128,129,10,17,0,0,129,
      130,5,21,0,0,130,156,3,6,3,18,131,132,10,16,0,0,132,133,5,20,0,0,133,
      156,3,6,3,17,134,135,10,15,0,0,135,136,5,28,0,0,136,156,3,6,3,16,137,
      138,10,14,0,0,138,139,5,29,0,0,139,156,3,6,3,15,140,141,10,13,0,0,
      141,142,5,25,0,0,142,156,3,6,3,14,143,144,10,12,0,0,144,145,5,26,0,
      0,145,156,3,6,3,13,146,147,10,11,0,0,147,148,5,23,0,0,148,156,3,6,
      3,12,149,150,10,10,0,0,150,151,5,24,0,0,151,156,3,6,3,11,152,153,10,
      9,0,0,153,154,5,27,0,0,154,156,3,6,3,10,155,122,1,0,0,0,155,125,1,
      0,0,0,155,128,1,0,0,0,155,131,1,0,0,0,155,134,1,0,0,0,155,137,1,0,
      0,0,155,140,1,0,0,0,155,143,1,0,0,0,155,146,1,0,0,0,155,149,1,0,0,
      0,155,152,1,0,0,0,156,159,1,0,0,0,157,155,1,0,0,0,157,158,1,0,0,0,
      158,7,1,0,0,0,159,157,1,0,0,0,160,161,3,4,2,0,161,162,5,37,0,0,162,
      168,5,31,0,0,163,164,3,10,5,0,164,165,5,35,0,0,165,167,1,0,0,0,166,
      163,1,0,0,0,167,170,1,0,0,0,168,166,1,0,0,0,168,169,1,0,0,0,169,172,
      1,0,0,0,170,168,1,0,0,0,171,173,3,10,5,0,172,171,1,0,0,0,172,173,1,
      0,0,0,173,174,1,0,0,0,174,175,5,32,0,0,175,176,3,12,6,0,176,9,1,0,
      0,0,177,181,3,4,2,0,178,179,5,6,0,0,179,181,5,36,0,0,180,177,1,0,0,
      0,180,178,1,0,0,0,181,182,1,0,0,0,182,183,5,37,0,0,183,11,1,0,0,0,
      184,188,5,33,0,0,185,187,3,2,1,0,186,185,1,0,0,0,187,190,1,0,0,0,188,
      186,1,0,0,0,188,189,1,0,0,0,189,191,1,0,0,0,190,188,1,0,0,0,191,192,
      5,34,0,0,192,13,1,0,0,0,193,194,5,5,0,0,194,195,5,37,0,0,195,199,5,
      33,0,0,196,198,3,16,8,0,197,196,1,0,0,0,198,201,1,0,0,0,199,197,1,
      0,0,0,199,200,1,0,0,0,200,202,1,0,0,0,201,199,1,0,0,0,202,203,5,34,
      0,0,203,15,1,0,0,0,204,205,3,4,2,0,205,206,5,37,0,0,206,207,5,12,0,
      0,207,208,3,6,3,0,208,209,5,13,0,0,209,243,1,0,0,0,210,212,5,3,0,0,
      211,213,3,4,2,0,212,211,1,0,0,0,212,213,1,0,0,0,213,214,1,0,0,0,214,
      215,5,37,0,0,215,216,5,12,0,0,216,217,3,6,3,0,217,218,5,13,0,0,218,
      243,1,0,0,0,219,222,5,37,0,0,220,221,5,36,0,0,221,223,5,37,0,0,222,
      220,1,0,0,0,222,223,1,0,0,0,223,224,1,0,0,0,224,230,5,31,0,0,225,226,
      3,10,5,0,226,227,5,35,0,0,227,229,1,0,0,0,228,225,1,0,0,0,229,232,
      1,0,0,0,230,228,1,0,0,0,230,231,1,0,0,0,231,234,1,0,0,0,232,230,1,
      0,0,0,233,235,3,10,5,0,234,233,1,0,0,0,234,235,1,0,0,0,235,236,1,0,
      0,0,236,239,5,32,0,0,237,240,3,12,6,0,238,240,5,13,0,0,239,237,1,0,
      0,0,239,238,1,0,0,0,240,243,1,0,0,0,241,243,3,8,4,0,242,204,1,0,0,
      0,242,210,1,0,0,0,242,219,1,0,0,0,242,241,1,0,0,0,243,17,1,0,0,0,24,
      21,29,38,47,61,69,94,98,113,117,120,155,157,168,172,180,188,199,212,
      222,230,234,239,242
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}
class DartFileContext extends ParserRuleContext {
  TerminalNode? EOF() => getToken(DartParser.TOKEN_EOF, 0);
  List<StatementContext> statements() => getRuleContexts<StatementContext>();
  StatementContext? statement(int i) => getRuleContext<StatementContext>(i);
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
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  TypeContext? type() => getRuleContext<TypeContext>(0);
  TerminalNode? THIS() => getToken(DartParser.TOKEN_THIS, 0);
  TerminalNode? DOT() => getToken(DartParser.TOKEN_DOT, 0);
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

class BlockContext extends ParserRuleContext {
  TerminalNode? GRAPH_OPEN() => getToken(DartParser.TOKEN_GRAPH_OPEN, 0);
  TerminalNode? GRAPH_CLOSE() => getToken(DartParser.TOKEN_GRAPH_CLOSE, 0);
  List<StatementContext> statements() => getRuleContexts<StatementContext>();
  StatementContext? statement(int i) => getRuleContext<StatementContext>(i);
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
  TerminalNode? GRAPH_CLOSE() => getToken(DartParser.TOKEN_GRAPH_CLOSE, 0);
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  List<ClassStatementContext> classStatements() => getRuleContexts<ClassStatementContext>();
  ClassStatementContext? classStatement(int i) => getRuleContext<ClassStatementContext>(i);
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

class ClassStatementContext extends ParserRuleContext {
  ClassStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_classStatement;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class VarDeclarationStatementContext extends StatementContext {
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  TerminalNode? ASSIGN() => getToken(DartParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? SEMICOLON() => getToken(DartParser.TOKEN_SEMICOLON, 0);
  TerminalNode? VAR() => getToken(DartParser.TOKEN_VAR, 0);
  TypeContext? type() => getRuleContext<TypeContext>(0);
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

class ConstDeclarationStatementContext extends StatementContext {
  TerminalNode? CONST() => getToken(DartParser.TOKEN_CONST, 0);
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  TerminalNode? ASSIGN() => getToken(DartParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? SEMICOLON() => getToken(DartParser.TOKEN_SEMICOLON, 0);
  TypeContext? type() => getRuleContext<TypeContext>(0);
  ConstDeclarationStatementContext(StatementContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterConstDeclarationStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitConstDeclarationStatement(this);
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
}class VoidTypeContext extends TypeContext {
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

class CustomTypeContext extends TypeContext {
  Token? name;
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

class ObjectPropertyReferenceExpressionContext extends ExpressionContext {
  List<TerminalNode> IDs() => getTokens(DartParser.TOKEN_ID);
  TerminalNode? ID(int i) => getToken(DartParser.TOKEN_ID, i);
  TerminalNode? DOT() => getToken(DartParser.TOKEN_DOT, 0);
  ObjectPropertyReferenceExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterObjectPropertyReferenceExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitObjectPropertyReferenceExpression(this);
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

class FunctionCallExpressionContext extends ExpressionContext {
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  TerminalNode? PAREN_OPEN() => getToken(DartParser.TOKEN_PAREN_OPEN, 0);
  TerminalNode? PAREN_CLOSE() => getToken(DartParser.TOKEN_PAREN_CLOSE, 0);
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  List<TerminalNode> COMMAs() => getTokens(DartParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(DartParser.TOKEN_COMMA, i);
  FunctionCallExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterFunctionCallExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitFunctionCallExpression(this);
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

class UnaryLogicNegationExpressionContext extends ExpressionContext {
  Token? operand;
  ExpressionContext? value;
  TerminalNode? NOT() => getToken(DartParser.TOKEN_NOT, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
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

class ObjectMethodCallExpressionContext extends ExpressionContext {
  List<TerminalNode> IDs() => getTokens(DartParser.TOKEN_ID);
  TerminalNode? ID(int i) => getToken(DartParser.TOKEN_ID, i);
  TerminalNode? DOT() => getToken(DartParser.TOKEN_DOT, 0);
  TerminalNode? PAREN_OPEN() => getToken(DartParser.TOKEN_PAREN_OPEN, 0);
  TerminalNode? PAREN_CLOSE() => getToken(DartParser.TOKEN_PAREN_CLOSE, 0);
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  List<TerminalNode> COMMAs() => getTokens(DartParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(DartParser.TOKEN_COMMA, i);
  ObjectMethodCallExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterObjectMethodCallExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitObjectMethodCallExpression(this);
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
  ParenthesysExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterParenthesysExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitParenthesysExpression(this);
  }
}class ClassMethodDeclarationStatementContext extends ClassStatementContext {
  FunctionDefinitionContext? functionDefinition() => getRuleContext<FunctionDefinitionContext>(0);
  ClassMethodDeclarationStatementContext(ClassStatementContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterClassMethodDeclarationStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitClassMethodDeclarationStatement(this);
  }
}

class ClassVarDeclarationStatementContext extends ClassStatementContext {
  TypeContext? type() => getRuleContext<TypeContext>(0);
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  TerminalNode? ASSIGN() => getToken(DartParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? SEMICOLON() => getToken(DartParser.TOKEN_SEMICOLON, 0);
  ClassVarDeclarationStatementContext(ClassStatementContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterClassVarDeclarationStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitClassVarDeclarationStatement(this);
  }
}

class ClassImmutableVarDeclarationStatementContext extends ClassStatementContext {
  TerminalNode? FINAL() => getToken(DartParser.TOKEN_FINAL, 0);
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  TerminalNode? ASSIGN() => getToken(DartParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? SEMICOLON() => getToken(DartParser.TOKEN_SEMICOLON, 0);
  TypeContext? type() => getRuleContext<TypeContext>(0);
  ClassImmutableVarDeclarationStatementContext(ClassStatementContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterClassImmutableVarDeclarationStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitClassImmutableVarDeclarationStatement(this);
  }
}

class ClassConstructorDeclarationStatementContext extends ClassStatementContext {
  Token? className;
  Token? costructorName;
  TerminalNode? PAREN_OPEN() => getToken(DartParser.TOKEN_PAREN_OPEN, 0);
  TerminalNode? PAREN_CLOSE() => getToken(DartParser.TOKEN_PAREN_CLOSE, 0);
  List<TerminalNode> IDs() => getTokens(DartParser.TOKEN_ID);
  TerminalNode? ID(int i) => getToken(DartParser.TOKEN_ID, i);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  TerminalNode? SEMICOLON() => getToken(DartParser.TOKEN_SEMICOLON, 0);
  TerminalNode? DOT() => getToken(DartParser.TOKEN_DOT, 0);
  List<ParameterContext> parameters() => getRuleContexts<ParameterContext>();
  ParameterContext? parameter(int i) => getRuleContext<ParameterContext>(i);
  List<TerminalNode> COMMAs() => getTokens(DartParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(DartParser.TOKEN_COMMA, i);
  ClassConstructorDeclarationStatementContext(ClassStatementContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterClassConstructorDeclarationStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitClassConstructorDeclarationStatement(this);
  }
}