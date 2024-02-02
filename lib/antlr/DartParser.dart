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
                   TOKEN_COMMA = 35, TOKEN_DOT = 36, TOKEN_COLONS = 37, 
                   TOKEN_RETURN = 38, TOKEN_EXTENDS = 39, TOKEN_ID = 40, 
                   TOKEN_UnterminatedStringLiteral = 41;

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
      "','", "'.'", "':'", "'return'", "'extends'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, "WS", "VAR", "FINAL", "CONST", "CLASS", "THIS", "INT", "DOUBLE", 
      "STRING", "BOOL", "VOID", "ASSIGN", "SEMICOLON", "INTLIT", "DOUBLELIT", 
      "BOOLLIT", "STRINGLIT", "PLUS", "MINUS", "DIVISION", "TIMES", "MODULE", 
      "GREATER_EQUAL_THAN", "LOWER_EQUAL_THAN", "GREATER_THAN", "LOWER_THAN", 
      "EQUAL", "AND", "OR", "NOT", "PAREN_OPEN", "PAREN_CLOSE", "GRAPH_OPEN", 
      "GRAPH_CLOSE", "COMMA", "DOT", "COLONS", "RETURN", "EXTENDS", "ID", 
      "UnterminatedStringLiteral"
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
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 1377611796412) != 0));
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
      state = 68;
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
      case 7:
        _localctx = ExpressionDefinitionStatementContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 61;
        expression(0);
        state = 62;
        match(TOKEN_SEMICOLON);
        break;
      case 8:
        _localctx = ReturnStatementContext(_localctx);
        enterOuterAlt(_localctx, 8);
        state = 64;
        match(TOKEN_RETURN);
        state = 65;
        expression(0);
        state = 66;
        match(TOKEN_SEMICOLON);
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
      state = 76;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_INT:
        _localctx = IntTypeContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 70;
        match(TOKEN_INT);
        break;
      case TOKEN_DOUBLE:
        _localctx = DoubleTypeContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 71;
        match(TOKEN_DOUBLE);
        break;
      case TOKEN_BOOL:
        _localctx = BoolTypeContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 72;
        match(TOKEN_BOOL);
        break;
      case TOKEN_STRING:
        _localctx = StringTypeContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 73;
        match(TOKEN_STRING);
        break;
      case TOKEN_VOID:
        _localctx = VoidTypeContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 74;
        match(TOKEN_VOID);
        break;
      case TOKEN_ID:
        _localctx = CustomTypeContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 75;
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
      state = 127;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 10, context)) {
      case 1:
        _localctx = BoolLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;

        state = 79;
        match(TOKEN_BOOLLIT);
        break;
      case 2:
        _localctx = IntLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 80;
        match(TOKEN_INTLIT);
        break;
      case 3:
        _localctx = DoubleLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 81;
        match(TOKEN_DOUBLELIT);
        break;
      case 4:
        _localctx = StringLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 82;
        match(TOKEN_STRINGLIT);
        break;
      case 5:
        _localctx = UnaryMathExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 83;
        _localctx.operand = match(TOKEN_MINUS);
        state = 84;
        _localctx.value = expression(8);
        break;
      case 6:
        _localctx = UnaryMathExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 85;
        _localctx.operand = match(TOKEN_PLUS);
        state = 86;
        _localctx.value = expression(7);
        break;
      case 7:
        _localctx = UnaryLogicNegationExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 87;
        _localctx.operand = match(TOKEN_NOT);
        state = 88;
        _localctx.value = expression(6);
        break;
      case 8:
        _localctx = ParenthesysExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 89;
        match(TOKEN_PAREN_OPEN);
        state = 90;
        _localctx.value = expression(0);
        state = 91;
        match(TOKEN_PAREN_CLOSE);
        break;
      case 9:
        _localctx = VarReferenceExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 93;
        match(TOKEN_ID);
        break;
      case 10:
        _localctx = FunctionCallExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 94;
        match(TOKEN_ID);
        state = 95;
        match(TOKEN_PAREN_OPEN);
        state = 101;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 6, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 96;
            expression(0);
            state = 97;
            match(TOKEN_COMMA); 
          }
          state = 103;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 6, context);
        }
        state = 105;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 1102733885440) != 0)) {
          state = 104;
          expression(0);
        }

        state = 107;
        match(TOKEN_PAREN_CLOSE);
        break;
      case 11:
        _localctx = ObjectPropertyReferenceExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 108;
        match(TOKEN_ID);
        state = 109;
        match(TOKEN_DOT);
        state = 110;
        match(TOKEN_ID);
        break;
      case 12:
        _localctx = ObjectMethodCallExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 111;
        match(TOKEN_ID);
        state = 112;
        match(TOKEN_DOT);
        state = 113;
        match(TOKEN_ID);
        state = 114;
        match(TOKEN_PAREN_OPEN);
        state = 120;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 8, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 115;
            expression(0);
            state = 116;
            match(TOKEN_COMMA); 
          }
          state = 122;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 8, context);
        }
        state = 124;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 1102733885440) != 0)) {
          state = 123;
          expression(0);
        }

        state = 126;
        match(TOKEN_PAREN_CLOSE);
        break;
      }
      context!.stop = tokenStream.LT(-1);
      state = 164;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 12, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 162;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 11, context)) {
          case 1:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 129;
            if (!(precpred(context, 19))) {
              throw FailedPredicateException(this, "precpred(context, 19)");
            }
            state = 130;
            _localctx.operand = match(TOKEN_PLUS);
            state = 131;
            _localctx.right = expression(20);
            break;
          case 2:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 132;
            if (!(precpred(context, 18))) {
              throw FailedPredicateException(this, "precpred(context, 18)");
            }
            state = 133;
            _localctx.operand = match(TOKEN_MINUS);
            state = 134;
            _localctx.right = expression(19);
            break;
          case 3:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 135;
            if (!(precpred(context, 17))) {
              throw FailedPredicateException(this, "precpred(context, 17)");
            }
            state = 136;
            _localctx.operand = match(TOKEN_TIMES);
            state = 137;
            _localctx.right = expression(18);
            break;
          case 4:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 138;
            if (!(precpred(context, 16))) {
              throw FailedPredicateException(this, "precpred(context, 16)");
            }
            state = 139;
            _localctx.operand = match(TOKEN_DIVISION);
            state = 140;
            _localctx.right = expression(17);
            break;
          case 5:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 141;
            if (!(precpred(context, 15))) {
              throw FailedPredicateException(this, "precpred(context, 15)");
            }
            state = 142;
            _localctx.operand = match(TOKEN_AND);
            state = 143;
            _localctx.right = expression(16);
            break;
          case 6:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 144;
            if (!(precpred(context, 14))) {
              throw FailedPredicateException(this, "precpred(context, 14)");
            }
            state = 145;
            _localctx.operand = match(TOKEN_OR);
            state = 146;
            _localctx.right = expression(15);
            break;
          case 7:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 147;
            if (!(precpred(context, 13))) {
              throw FailedPredicateException(this, "precpred(context, 13)");
            }
            state = 148;
            _localctx.operand = match(TOKEN_GREATER_THAN);
            state = 149;
            _localctx.right = expression(14);
            break;
          case 8:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 150;
            if (!(precpred(context, 12))) {
              throw FailedPredicateException(this, "precpred(context, 12)");
            }
            state = 151;
            _localctx.operand = match(TOKEN_LOWER_THAN);
            state = 152;
            _localctx.right = expression(13);
            break;
          case 9:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 153;
            if (!(precpred(context, 11))) {
              throw FailedPredicateException(this, "precpred(context, 11)");
            }
            state = 154;
            _localctx.operand = match(TOKEN_GREATER_EQUAL_THAN);
            state = 155;
            _localctx.right = expression(12);
            break;
          case 10:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 156;
            if (!(precpred(context, 10))) {
              throw FailedPredicateException(this, "precpred(context, 10)");
            }
            state = 157;
            _localctx.operand = match(TOKEN_LOWER_EQUAL_THAN);
            state = 158;
            _localctx.right = expression(11);
            break;
          case 11:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 159;
            if (!(precpred(context, 9))) {
              throw FailedPredicateException(this, "precpred(context, 9)");
            }
            state = 160;
            _localctx.operand = match(TOKEN_EQUAL);
            state = 161;
            _localctx.right = expression(10);
            break;
          } 
        }
        state = 166;
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
      state = 167;
      _localctx.returnType = type();
      state = 168;
      _localctx.name = match(TOKEN_ID);
      state = 169;
      match(TOKEN_PAREN_OPEN);
      state = 175;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 13, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 170;
          parameter();
          state = 171;
          match(TOKEN_COMMA); 
        }
        state = 177;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 13, context);
      }
      state = 179;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 1099511631808) != 0)) {
        state = 178;
        parameter();
      }

      state = 181;
      match(TOKEN_PAREN_CLOSE);
      state = 182;
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
      state = 187;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_INT:
      case TOKEN_DOUBLE:
      case TOKEN_STRING:
      case TOKEN_BOOL:
      case TOKEN_VOID:
      case TOKEN_ID:
        state = 184;
        type();
        break;
      case TOKEN_THIS:
        state = 185;
        match(TOKEN_THIS);
        state = 186;
        match(TOKEN_DOT);
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 189;
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
      state = 191;
      match(TOKEN_GRAPH_OPEN);
      state = 195;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 1377611796412) != 0)) {
        state = 192;
        statement();
        state = 197;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 198;
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
      state = 200;
      match(TOKEN_CLASS);
      state = 201;
      _localctx.name = match(TOKEN_ID);
      state = 204;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_EXTENDS) {
        state = 202;
        match(TOKEN_EXTENDS);
        state = 203;
        _localctx.parentName = match(TOKEN_ID);
      }

      state = 206;
      match(TOKEN_GRAPH_OPEN);
      state = 210;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 1099511631752) != 0)) {
        state = 207;
        classStatement();
        state = 212;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 213;
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
      state = 292;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 32, context)) {
      case 1:
        _localctx = ClassVarDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 215;
        type();
        state = 216;
        match(TOKEN_ID);
        state = 219;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_ASSIGN) {
          state = 217;
          match(TOKEN_ASSIGN);
          state = 218;
          expression(0);
        }

        state = 221;
        match(TOKEN_SEMICOLON);
        break;
      case 2:
        _localctx = ClassImmutableVarDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 223;
        match(TOKEN_FINAL);
        state = 225;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 20, context)) {
        case 1:
          state = 224;
          type();
          break;
        }
        state = 227;
        match(TOKEN_ID);
        state = 230;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_ASSIGN) {
          state = 228;
          match(TOKEN_ASSIGN);
          state = 229;
          expression(0);
        }

        state = 232;
        match(TOKEN_SEMICOLON);
        break;
      case 3:
        _localctx = MainClassConstructorDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 233;
        _localctx.className = match(TOKEN_ID);
        state = 234;
        match(TOKEN_PAREN_OPEN);
        state = 240;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 22, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 235;
            parameter();
            state = 236;
            match(TOKEN_COMMA); 
          }
          state = 242;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 22, context);
        }
        state = 244;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 1099511631808) != 0)) {
          state = 243;
          parameter();
        }

        state = 246;
        match(TOKEN_PAREN_CLOSE);
        state = 249;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_GRAPH_OPEN:
          state = 247;
          block();
          break;
        case TOKEN_SEMICOLON:
          state = 248;
          match(TOKEN_SEMICOLON);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case 4:
        _localctx = NamedClassConstructorDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 251;
        _localctx.className = match(TOKEN_ID);
        state = 252;
        match(TOKEN_DOT);
        state = 253;
        _localctx.costructorName = match(TOKEN_ID);
        state = 254;
        match(TOKEN_PAREN_OPEN);
        state = 260;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 25, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 255;
            parameter();
            state = 256;
            match(TOKEN_COMMA); 
          }
          state = 262;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 25, context);
        }
        state = 264;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 1099511631808) != 0)) {
          state = 263;
          parameter();
        }

        state = 266;
        match(TOKEN_PAREN_CLOSE);
        state = 285;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_COLONS) {
          state = 267;
          match(TOKEN_COLONS);
          state = 268;
          match(TOKEN_THIS);
          state = 269;
          match(TOKEN_PAREN_OPEN);
          state = 275;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 27, context);
          while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
            if (_alt == 1) {
              state = 270;
              expression(0);
              state = 271;
              match(TOKEN_COMMA); 
            }
            state = 277;
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 27, context);
          }
          state = 279;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 1102733885440) != 0)) {
            state = 278;
            expression(0);
          }

          state = 282;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_COMMA) {
            state = 281;
            match(TOKEN_COMMA);
          }

          state = 284;
          match(TOKEN_PAREN_CLOSE);
        }

        state = 289;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_GRAPH_OPEN:
          state = 287;
          block();
          break;
        case TOKEN_SEMICOLON:
          state = 288;
          match(TOKEN_SEMICOLON);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case 5:
        _localctx = ClassMethodDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 291;
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
      4,1,41,295,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,1,0,4,0,20,8,0,11,0,12,0,21,1,0,1,0,1,1,1,1,1,1,1,
      1,3,1,30,8,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,39,8,1,1,1,1,1,1,1,1,
      1,1,1,1,1,1,1,3,1,48,8,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
      1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,69,8,1,1,2,1,2,1,2,1,2,1,2,1,
      2,3,2,77,8,2,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,
      3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,5,3,100,8,3,10,3,12,3,103,9,3,1,3,3,
      3,106,8,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,5,3,119,8,3,
      10,3,12,3,122,9,3,1,3,3,3,125,8,3,1,3,3,3,128,8,3,1,3,1,3,1,3,1,3,
      1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,
      3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,5,3,163,8,3,10,3,
      12,3,166,9,3,1,4,1,4,1,4,1,4,1,4,1,4,5,4,174,8,4,10,4,12,4,177,9,4,
      1,4,3,4,180,8,4,1,4,1,4,1,4,1,5,1,5,1,5,3,5,188,8,5,1,5,1,5,1,6,1,
      6,5,6,194,8,6,10,6,12,6,197,9,6,1,6,1,6,1,7,1,7,1,7,1,7,3,7,205,8,
      7,1,7,1,7,5,7,209,8,7,10,7,12,7,212,9,7,1,7,1,7,1,8,1,8,1,8,1,8,3,
      8,220,8,8,1,8,1,8,1,8,1,8,3,8,226,8,8,1,8,1,8,1,8,3,8,231,8,8,1,8,
      1,8,1,8,1,8,1,8,1,8,5,8,239,8,8,10,8,12,8,242,9,8,1,8,3,8,245,8,8,
      1,8,1,8,1,8,3,8,250,8,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,5,8,259,8,8,10,
      8,12,8,262,9,8,1,8,3,8,265,8,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,5,8,274,
      8,8,10,8,12,8,277,9,8,1,8,3,8,280,8,8,1,8,3,8,283,8,8,1,8,3,8,286,
      8,8,1,8,1,8,3,8,290,8,8,1,8,3,8,293,8,8,1,8,0,1,6,9,0,2,4,6,8,10,12,
      14,16,0,0,351,0,19,1,0,0,0,2,68,1,0,0,0,4,76,1,0,0,0,6,127,1,0,0,0,
      8,167,1,0,0,0,10,187,1,0,0,0,12,191,1,0,0,0,14,200,1,0,0,0,16,292,
      1,0,0,0,18,20,3,2,1,0,19,18,1,0,0,0,20,21,1,0,0,0,21,19,1,0,0,0,21,
      22,1,0,0,0,22,23,1,0,0,0,23,24,5,0,0,1,24,1,1,0,0,0,25,30,5,2,0,0,
      26,27,5,2,0,0,27,30,3,4,2,0,28,30,3,4,2,0,29,25,1,0,0,0,29,26,1,0,
      0,0,29,28,1,0,0,0,30,31,1,0,0,0,31,32,5,40,0,0,32,33,5,12,0,0,33,34,
      3,6,3,0,34,35,5,13,0,0,35,69,1,0,0,0,36,38,5,3,0,0,37,39,3,4,2,0,38,
      37,1,0,0,0,38,39,1,0,0,0,39,40,1,0,0,0,40,41,5,40,0,0,41,42,5,12,0,
      0,42,43,3,6,3,0,43,44,5,13,0,0,44,69,1,0,0,0,45,47,5,4,0,0,46,48,3,
      4,2,0,47,46,1,0,0,0,47,48,1,0,0,0,48,49,1,0,0,0,49,50,5,40,0,0,50,
      51,5,12,0,0,51,52,3,6,3,0,52,53,5,13,0,0,53,69,1,0,0,0,54,55,5,40,
      0,0,55,56,5,12,0,0,56,57,3,6,3,0,57,58,5,13,0,0,58,69,1,0,0,0,59,69,
      3,8,4,0,60,69,3,14,7,0,61,62,3,6,3,0,62,63,5,13,0,0,63,69,1,0,0,0,
      64,65,5,38,0,0,65,66,3,6,3,0,66,67,5,13,0,0,67,69,1,0,0,0,68,29,1,
      0,0,0,68,36,1,0,0,0,68,45,1,0,0,0,68,54,1,0,0,0,68,59,1,0,0,0,68,60,
      1,0,0,0,68,61,1,0,0,0,68,64,1,0,0,0,69,3,1,0,0,0,70,77,5,7,0,0,71,
      77,5,8,0,0,72,77,5,10,0,0,73,77,5,9,0,0,74,77,5,11,0,0,75,77,5,40,
      0,0,76,70,1,0,0,0,76,71,1,0,0,0,76,72,1,0,0,0,76,73,1,0,0,0,76,74,
      1,0,0,0,76,75,1,0,0,0,77,5,1,0,0,0,78,79,6,3,-1,0,79,128,5,16,0,0,
      80,128,5,14,0,0,81,128,5,15,0,0,82,128,5,17,0,0,83,84,5,19,0,0,84,
      128,3,6,3,8,85,86,5,18,0,0,86,128,3,6,3,7,87,88,5,30,0,0,88,128,3,
      6,3,6,89,90,5,31,0,0,90,91,3,6,3,0,91,92,5,32,0,0,92,128,1,0,0,0,93,
      128,5,40,0,0,94,95,5,40,0,0,95,101,5,31,0,0,96,97,3,6,3,0,97,98,5,
      35,0,0,98,100,1,0,0,0,99,96,1,0,0,0,100,103,1,0,0,0,101,99,1,0,0,0,
      101,102,1,0,0,0,102,105,1,0,0,0,103,101,1,0,0,0,104,106,3,6,3,0,105,
      104,1,0,0,0,105,106,1,0,0,0,106,107,1,0,0,0,107,128,5,32,0,0,108,109,
      5,40,0,0,109,110,5,36,0,0,110,128,5,40,0,0,111,112,5,40,0,0,112,113,
      5,36,0,0,113,114,5,40,0,0,114,120,5,31,0,0,115,116,3,6,3,0,116,117,
      5,35,0,0,117,119,1,0,0,0,118,115,1,0,0,0,119,122,1,0,0,0,120,118,1,
      0,0,0,120,121,1,0,0,0,121,124,1,0,0,0,122,120,1,0,0,0,123,125,3,6,
      3,0,124,123,1,0,0,0,124,125,1,0,0,0,125,126,1,0,0,0,126,128,5,32,0,
      0,127,78,1,0,0,0,127,80,1,0,0,0,127,81,1,0,0,0,127,82,1,0,0,0,127,
      83,1,0,0,0,127,85,1,0,0,0,127,87,1,0,0,0,127,89,1,0,0,0,127,93,1,0,
      0,0,127,94,1,0,0,0,127,108,1,0,0,0,127,111,1,0,0,0,128,164,1,0,0,0,
      129,130,10,19,0,0,130,131,5,18,0,0,131,163,3,6,3,20,132,133,10,18,
      0,0,133,134,5,19,0,0,134,163,3,6,3,19,135,136,10,17,0,0,136,137,5,
      21,0,0,137,163,3,6,3,18,138,139,10,16,0,0,139,140,5,20,0,0,140,163,
      3,6,3,17,141,142,10,15,0,0,142,143,5,28,0,0,143,163,3,6,3,16,144,145,
      10,14,0,0,145,146,5,29,0,0,146,163,3,6,3,15,147,148,10,13,0,0,148,
      149,5,25,0,0,149,163,3,6,3,14,150,151,10,12,0,0,151,152,5,26,0,0,152,
      163,3,6,3,13,153,154,10,11,0,0,154,155,5,23,0,0,155,163,3,6,3,12,156,
      157,10,10,0,0,157,158,5,24,0,0,158,163,3,6,3,11,159,160,10,9,0,0,160,
      161,5,27,0,0,161,163,3,6,3,10,162,129,1,0,0,0,162,132,1,0,0,0,162,
      135,1,0,0,0,162,138,1,0,0,0,162,141,1,0,0,0,162,144,1,0,0,0,162,147,
      1,0,0,0,162,150,1,0,0,0,162,153,1,0,0,0,162,156,1,0,0,0,162,159,1,
      0,0,0,163,166,1,0,0,0,164,162,1,0,0,0,164,165,1,0,0,0,165,7,1,0,0,
      0,166,164,1,0,0,0,167,168,3,4,2,0,168,169,5,40,0,0,169,175,5,31,0,
      0,170,171,3,10,5,0,171,172,5,35,0,0,172,174,1,0,0,0,173,170,1,0,0,
      0,174,177,1,0,0,0,175,173,1,0,0,0,175,176,1,0,0,0,176,179,1,0,0,0,
      177,175,1,0,0,0,178,180,3,10,5,0,179,178,1,0,0,0,179,180,1,0,0,0,180,
      181,1,0,0,0,181,182,5,32,0,0,182,183,3,12,6,0,183,9,1,0,0,0,184,188,
      3,4,2,0,185,186,5,6,0,0,186,188,5,36,0,0,187,184,1,0,0,0,187,185,1,
      0,0,0,188,189,1,0,0,0,189,190,5,40,0,0,190,11,1,0,0,0,191,195,5,33,
      0,0,192,194,3,2,1,0,193,192,1,0,0,0,194,197,1,0,0,0,195,193,1,0,0,
      0,195,196,1,0,0,0,196,198,1,0,0,0,197,195,1,0,0,0,198,199,5,34,0,0,
      199,13,1,0,0,0,200,201,5,5,0,0,201,204,5,40,0,0,202,203,5,39,0,0,203,
      205,5,40,0,0,204,202,1,0,0,0,204,205,1,0,0,0,205,206,1,0,0,0,206,210,
      5,33,0,0,207,209,3,16,8,0,208,207,1,0,0,0,209,212,1,0,0,0,210,208,
      1,0,0,0,210,211,1,0,0,0,211,213,1,0,0,0,212,210,1,0,0,0,213,214,5,
      34,0,0,214,15,1,0,0,0,215,216,3,4,2,0,216,219,5,40,0,0,217,218,5,12,
      0,0,218,220,3,6,3,0,219,217,1,0,0,0,219,220,1,0,0,0,220,221,1,0,0,
      0,221,222,5,13,0,0,222,293,1,0,0,0,223,225,5,3,0,0,224,226,3,4,2,0,
      225,224,1,0,0,0,225,226,1,0,0,0,226,227,1,0,0,0,227,230,5,40,0,0,228,
      229,5,12,0,0,229,231,3,6,3,0,230,228,1,0,0,0,230,231,1,0,0,0,231,232,
      1,0,0,0,232,293,5,13,0,0,233,234,5,40,0,0,234,240,5,31,0,0,235,236,
      3,10,5,0,236,237,5,35,0,0,237,239,1,0,0,0,238,235,1,0,0,0,239,242,
      1,0,0,0,240,238,1,0,0,0,240,241,1,0,0,0,241,244,1,0,0,0,242,240,1,
      0,0,0,243,245,3,10,5,0,244,243,1,0,0,0,244,245,1,0,0,0,245,246,1,0,
      0,0,246,249,5,32,0,0,247,250,3,12,6,0,248,250,5,13,0,0,249,247,1,0,
      0,0,249,248,1,0,0,0,250,293,1,0,0,0,251,252,5,40,0,0,252,253,5,36,
      0,0,253,254,5,40,0,0,254,260,5,31,0,0,255,256,3,10,5,0,256,257,5,35,
      0,0,257,259,1,0,0,0,258,255,1,0,0,0,259,262,1,0,0,0,260,258,1,0,0,
      0,260,261,1,0,0,0,261,264,1,0,0,0,262,260,1,0,0,0,263,265,3,10,5,0,
      264,263,1,0,0,0,264,265,1,0,0,0,265,266,1,0,0,0,266,285,5,32,0,0,267,
      268,5,37,0,0,268,269,5,6,0,0,269,275,5,31,0,0,270,271,3,6,3,0,271,
      272,5,35,0,0,272,274,1,0,0,0,273,270,1,0,0,0,274,277,1,0,0,0,275,273,
      1,0,0,0,275,276,1,0,0,0,276,279,1,0,0,0,277,275,1,0,0,0,278,280,3,
      6,3,0,279,278,1,0,0,0,279,280,1,0,0,0,280,282,1,0,0,0,281,283,5,35,
      0,0,282,281,1,0,0,0,282,283,1,0,0,0,283,284,1,0,0,0,284,286,5,32,0,
      0,285,267,1,0,0,0,285,286,1,0,0,0,286,289,1,0,0,0,287,290,3,12,6,0,
      288,290,5,13,0,0,289,287,1,0,0,0,289,288,1,0,0,0,290,293,1,0,0,0,291,
      293,3,8,4,0,292,215,1,0,0,0,292,223,1,0,0,0,292,233,1,0,0,0,292,251,
      1,0,0,0,292,291,1,0,0,0,293,17,1,0,0,0,33,21,29,38,47,68,76,101,105,
      120,124,127,162,164,175,179,187,195,204,210,219,225,230,240,244,249,
      260,264,275,279,282,285,289,292
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
  Token? parentName;
  TerminalNode? CLASS() => getToken(DartParser.TOKEN_CLASS, 0);
  TerminalNode? GRAPH_OPEN() => getToken(DartParser.TOKEN_GRAPH_OPEN, 0);
  TerminalNode? GRAPH_CLOSE() => getToken(DartParser.TOKEN_GRAPH_CLOSE, 0);
  List<TerminalNode> IDs() => getTokens(DartParser.TOKEN_ID);
  TerminalNode? ID(int i) => getToken(DartParser.TOKEN_ID, i);
  TerminalNode? EXTENDS() => getToken(DartParser.TOKEN_EXTENDS, 0);
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

class ExpressionDefinitionStatementContext extends StatementContext {
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? SEMICOLON() => getToken(DartParser.TOKEN_SEMICOLON, 0);
  ExpressionDefinitionStatementContext(StatementContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterExpressionDefinitionStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitExpressionDefinitionStatement(this);
  }
}

class ReturnStatementContext extends StatementContext {
  TerminalNode? RETURN() => getToken(DartParser.TOKEN_RETURN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? SEMICOLON() => getToken(DartParser.TOKEN_SEMICOLON, 0);
  ReturnStatementContext(StatementContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterReturnStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitReturnStatement(this);
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
  Token? operand;
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
  Token? operand;
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
  TerminalNode? PAREN_OPEN() => getToken(DartParser.TOKEN_PAREN_OPEN, 0);
  TerminalNode? PAREN_CLOSE() => getToken(DartParser.TOKEN_PAREN_CLOSE, 0);
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
}class NamedClassConstructorDeclarationStatementContext extends ClassStatementContext {
  Token? className;
  Token? costructorName;
  TerminalNode? DOT() => getToken(DartParser.TOKEN_DOT, 0);
  List<TerminalNode> PAREN_OPENs() => getTokens(DartParser.TOKEN_PAREN_OPEN);
  TerminalNode? PAREN_OPEN(int i) => getToken(DartParser.TOKEN_PAREN_OPEN, i);
  List<TerminalNode> PAREN_CLOSEs() => getTokens(DartParser.TOKEN_PAREN_CLOSE);
  TerminalNode? PAREN_CLOSE(int i) => getToken(DartParser.TOKEN_PAREN_CLOSE, i);
  List<TerminalNode> IDs() => getTokens(DartParser.TOKEN_ID);
  TerminalNode? ID(int i) => getToken(DartParser.TOKEN_ID, i);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  TerminalNode? SEMICOLON() => getToken(DartParser.TOKEN_SEMICOLON, 0);
  List<ParameterContext> parameters() => getRuleContexts<ParameterContext>();
  ParameterContext? parameter(int i) => getRuleContext<ParameterContext>(i);
  List<TerminalNode> COMMAs() => getTokens(DartParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(DartParser.TOKEN_COMMA, i);
  TerminalNode? COLONS() => getToken(DartParser.TOKEN_COLONS, 0);
  TerminalNode? THIS() => getToken(DartParser.TOKEN_THIS, 0);
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  NamedClassConstructorDeclarationStatementContext(ClassStatementContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterNamedClassConstructorDeclarationStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitNamedClassConstructorDeclarationStatement(this);
  }
}

class ClassMethodDeclarationStatementContext extends ClassStatementContext {
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
  TerminalNode? SEMICOLON() => getToken(DartParser.TOKEN_SEMICOLON, 0);
  TerminalNode? ASSIGN() => getToken(DartParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
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
  TerminalNode? SEMICOLON() => getToken(DartParser.TOKEN_SEMICOLON, 0);
  TypeContext? type() => getRuleContext<TypeContext>(0);
  TerminalNode? ASSIGN() => getToken(DartParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
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

class MainClassConstructorDeclarationStatementContext extends ClassStatementContext {
  Token? className;
  TerminalNode? PAREN_OPEN() => getToken(DartParser.TOKEN_PAREN_OPEN, 0);
  TerminalNode? PAREN_CLOSE() => getToken(DartParser.TOKEN_PAREN_CLOSE, 0);
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  TerminalNode? SEMICOLON() => getToken(DartParser.TOKEN_SEMICOLON, 0);
  List<ParameterContext> parameters() => getRuleContexts<ParameterContext>();
  ParameterContext? parameter(int i) => getRuleContext<ParameterContext>(i);
  List<TerminalNode> COMMAs() => getTokens(DartParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(DartParser.TOKEN_COMMA, i);
  MainClassConstructorDeclarationStatementContext(ClassStatementContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterMainClassConstructorDeclarationStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitMainClassConstructorDeclarationStatement(this);
  }
}