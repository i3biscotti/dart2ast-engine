// Generated from d://Progetti personali//dart2kotlin//dart2ast_engine//antrl4//DartParser.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'DartParserListener.dart';
import 'DartParserBaseListener.dart';
const int RULE_dartFile = 0, RULE_statement = 1, RULE_type = 2, RULE_expression = 3, 
          RULE_functionDefinition = 4, RULE_parameter = 5, RULE_block = 6, 
          RULE_classDefinition = 7, RULE_classStatement = 8, RULE_thisConstructorCall = 9;
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
    'parameter', 'block', 'classDefinition', 'classStatement', 'thisConstructorCall'
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
      state = 21; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 20;
        statement();
        state = 23; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 1377611796412) != 0));
      state = 25;
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
      state = 70;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 4, context)) {
      case 1:
        _localctx = VarDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 31;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 1, context)) {
        case 1:
          state = 27;
          match(TOKEN_VAR);
          break;
        case 2:
          state = 28;
          match(TOKEN_VAR);
          state = 29;
          type();
          break;
        case 3:
          state = 30;
          type();
          break;
        }
        state = 33;
        match(TOKEN_ID);
        state = 34;
        match(TOKEN_ASSIGN);
        state = 35;
        expression(0);
        state = 36;
        match(TOKEN_SEMICOLON);
        break;
      case 2:
        _localctx = FinalDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 38;
        match(TOKEN_FINAL);
        state = 40;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 2, context)) {
        case 1:
          state = 39;
          type();
          break;
        }
        state = 42;
        match(TOKEN_ID);
        state = 43;
        match(TOKEN_ASSIGN);
        state = 44;
        expression(0);
        state = 45;
        match(TOKEN_SEMICOLON);
        break;
      case 3:
        _localctx = ConstDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 47;
        match(TOKEN_CONST);
        state = 49;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 3, context)) {
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
        state = 54;
        match(TOKEN_SEMICOLON);
        break;
      case 4:
        _localctx = AssigmentStatementContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 56;
        match(TOKEN_ID);
        state = 57;
        match(TOKEN_ASSIGN);
        state = 58;
        expression(0);
        state = 59;
        match(TOKEN_SEMICOLON);
        break;
      case 5:
        _localctx = FunctionDefinitionStatementContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 61;
        functionDefinition();
        break;
      case 6:
        _localctx = ClassDefinitionStatementContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 62;
        classDefinition();
        break;
      case 7:
        _localctx = ExpressionDefinitionStatementContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 63;
        expression(0);
        state = 64;
        match(TOKEN_SEMICOLON);
        break;
      case 8:
        _localctx = ReturnStatementContext(_localctx);
        enterOuterAlt(_localctx, 8);
        state = 66;
        match(TOKEN_RETURN);
        state = 67;
        expression(0);
        state = 68;
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
      state = 78;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_INT:
        _localctx = IntTypeContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 72;
        match(TOKEN_INT);
        break;
      case TOKEN_DOUBLE:
        _localctx = DoubleTypeContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 73;
        match(TOKEN_DOUBLE);
        break;
      case TOKEN_BOOL:
        _localctx = BoolTypeContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 74;
        match(TOKEN_BOOL);
        break;
      case TOKEN_STRING:
        _localctx = StringTypeContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 75;
        match(TOKEN_STRING);
        break;
      case TOKEN_VOID:
        _localctx = VoidTypeContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 76;
        match(TOKEN_VOID);
        break;
      case TOKEN_ID:
        _localctx = CustomTypeContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 77;
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
      state = 129;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 10, context)) {
      case 1:
        _localctx = BoolLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;

        state = 81;
        match(TOKEN_BOOLLIT);
        break;
      case 2:
        _localctx = IntLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 82;
        match(TOKEN_INTLIT);
        break;
      case 3:
        _localctx = DoubleLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 83;
        match(TOKEN_DOUBLELIT);
        break;
      case 4:
        _localctx = StringLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 84;
        match(TOKEN_STRINGLIT);
        break;
      case 5:
        _localctx = UnaryMathExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 85;
        _localctx.operand = match(TOKEN_MINUS);
        state = 86;
        _localctx.value = expression(8);
        break;
      case 6:
        _localctx = UnaryMathExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 87;
        _localctx.operand = match(TOKEN_PLUS);
        state = 88;
        _localctx.value = expression(7);
        break;
      case 7:
        _localctx = UnaryLogicNegationExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 89;
        _localctx.operand = match(TOKEN_NOT);
        state = 90;
        _localctx.value = expression(6);
        break;
      case 8:
        _localctx = ParenthesysExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 91;
        match(TOKEN_PAREN_OPEN);
        state = 92;
        _localctx.value = expression(0);
        state = 93;
        match(TOKEN_PAREN_CLOSE);
        break;
      case 9:
        _localctx = VarReferenceExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 95;
        match(TOKEN_ID);
        break;
      case 10:
        _localctx = FunctionCallExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 96;
        match(TOKEN_ID);
        state = 97;
        match(TOKEN_PAREN_OPEN);
        state = 103;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 6, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 98;
            expression(0);
            state = 99;
            match(TOKEN_COMMA); 
          }
          state = 105;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 6, context);
        }
        state = 107;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 1102733885440) != 0)) {
          state = 106;
          expression(0);
        }

        state = 109;
        match(TOKEN_PAREN_CLOSE);
        break;
      case 11:
        _localctx = ObjectPropertyReferenceExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 110;
        match(TOKEN_ID);
        state = 111;
        match(TOKEN_DOT);
        state = 112;
        match(TOKEN_ID);
        break;
      case 12:
        _localctx = ObjectMethodCallExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 113;
        match(TOKEN_ID);
        state = 114;
        match(TOKEN_DOT);
        state = 115;
        match(TOKEN_ID);
        state = 116;
        match(TOKEN_PAREN_OPEN);
        state = 122;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 8, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 117;
            expression(0);
            state = 118;
            match(TOKEN_COMMA); 
          }
          state = 124;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 8, context);
        }
        state = 126;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 1102733885440) != 0)) {
          state = 125;
          expression(0);
        }

        state = 128;
        match(TOKEN_PAREN_CLOSE);
        break;
      }
      context!.stop = tokenStream.LT(-1);
      state = 166;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 12, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 164;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 11, context)) {
          case 1:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 131;
            if (!(precpred(context, 19))) {
              throw FailedPredicateException(this, "precpred(context, 19)");
            }
            state = 132;
            _localctx.operand = match(TOKEN_PLUS);
            state = 133;
            _localctx.right = expression(20);
            break;
          case 2:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 134;
            if (!(precpred(context, 18))) {
              throw FailedPredicateException(this, "precpred(context, 18)");
            }
            state = 135;
            _localctx.operand = match(TOKEN_MINUS);
            state = 136;
            _localctx.right = expression(19);
            break;
          case 3:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 137;
            if (!(precpred(context, 17))) {
              throw FailedPredicateException(this, "precpred(context, 17)");
            }
            state = 138;
            _localctx.operand = match(TOKEN_TIMES);
            state = 139;
            _localctx.right = expression(18);
            break;
          case 4:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 140;
            if (!(precpred(context, 16))) {
              throw FailedPredicateException(this, "precpred(context, 16)");
            }
            state = 141;
            _localctx.operand = match(TOKEN_DIVISION);
            state = 142;
            _localctx.right = expression(17);
            break;
          case 5:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 143;
            if (!(precpred(context, 15))) {
              throw FailedPredicateException(this, "precpred(context, 15)");
            }
            state = 144;
            _localctx.operand = match(TOKEN_AND);
            state = 145;
            _localctx.right = expression(16);
            break;
          case 6:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 146;
            if (!(precpred(context, 14))) {
              throw FailedPredicateException(this, "precpred(context, 14)");
            }
            state = 147;
            _localctx.operand = match(TOKEN_OR);
            state = 148;
            _localctx.right = expression(15);
            break;
          case 7:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 149;
            if (!(precpred(context, 13))) {
              throw FailedPredicateException(this, "precpred(context, 13)");
            }
            state = 150;
            _localctx.operand = match(TOKEN_GREATER_THAN);
            state = 151;
            _localctx.right = expression(14);
            break;
          case 8:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 152;
            if (!(precpred(context, 12))) {
              throw FailedPredicateException(this, "precpred(context, 12)");
            }
            state = 153;
            _localctx.operand = match(TOKEN_LOWER_THAN);
            state = 154;
            _localctx.right = expression(13);
            break;
          case 9:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 155;
            if (!(precpred(context, 11))) {
              throw FailedPredicateException(this, "precpred(context, 11)");
            }
            state = 156;
            _localctx.operand = match(TOKEN_GREATER_EQUAL_THAN);
            state = 157;
            _localctx.right = expression(12);
            break;
          case 10:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 158;
            if (!(precpred(context, 10))) {
              throw FailedPredicateException(this, "precpred(context, 10)");
            }
            state = 159;
            _localctx.operand = match(TOKEN_LOWER_EQUAL_THAN);
            state = 160;
            _localctx.right = expression(11);
            break;
          case 11:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 161;
            if (!(precpred(context, 9))) {
              throw FailedPredicateException(this, "precpred(context, 9)");
            }
            state = 162;
            _localctx.operand = match(TOKEN_EQUAL);
            state = 163;
            _localctx.right = expression(10);
            break;
          } 
        }
        state = 168;
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
      state = 169;
      _localctx.returnType = type();
      state = 170;
      _localctx.name = match(TOKEN_ID);
      state = 171;
      match(TOKEN_PAREN_OPEN);
      state = 177;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 13, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 172;
          parameter();
          state = 173;
          match(TOKEN_COMMA); 
        }
        state = 179;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 13, context);
      }
      state = 181;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 1099511631808) != 0)) {
        state = 180;
        parameter();
      }

      state = 183;
      match(TOKEN_PAREN_CLOSE);
      state = 184;
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
      state = 189;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_INT:
      case TOKEN_DOUBLE:
      case TOKEN_STRING:
      case TOKEN_BOOL:
      case TOKEN_VOID:
      case TOKEN_ID:
        state = 186;
        type();
        break;
      case TOKEN_THIS:
        state = 187;
        match(TOKEN_THIS);
        state = 188;
        match(TOKEN_DOT);
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 191;
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
      state = 193;
      match(TOKEN_GRAPH_OPEN);
      state = 197;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 1377611796412) != 0)) {
        state = 194;
        statement();
        state = 199;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 200;
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
      state = 202;
      match(TOKEN_CLASS);
      state = 203;
      _localctx.name = match(TOKEN_ID);
      state = 206;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_EXTENDS) {
        state = 204;
        match(TOKEN_EXTENDS);
        state = 205;
        _localctx.parentName = match(TOKEN_ID);
      }

      state = 208;
      match(TOKEN_GRAPH_OPEN);
      state = 212;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 1099511631752) != 0)) {
        state = 209;
        classStatement();
        state = 214;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 215;
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
      state = 278;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 29, context)) {
      case 1:
        _localctx = ClassVarDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 217;
        type();
        state = 218;
        match(TOKEN_ID);
        state = 221;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_ASSIGN) {
          state = 219;
          match(TOKEN_ASSIGN);
          state = 220;
          expression(0);
        }

        state = 223;
        match(TOKEN_SEMICOLON);
        break;
      case 2:
        _localctx = ClassImmutableVarDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 225;
        match(TOKEN_FINAL);
        state = 227;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 20, context)) {
        case 1:
          state = 226;
          type();
          break;
        }
        state = 229;
        match(TOKEN_ID);
        state = 232;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_ASSIGN) {
          state = 230;
          match(TOKEN_ASSIGN);
          state = 231;
          expression(0);
        }

        state = 234;
        match(TOKEN_SEMICOLON);
        break;
      case 3:
        _localctx = MainClassConstructorDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 235;
        _localctx.className = match(TOKEN_ID);
        state = 236;
        match(TOKEN_PAREN_OPEN);
        state = 242;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 22, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 237;
            parameter();
            state = 238;
            match(TOKEN_COMMA); 
          }
          state = 244;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 22, context);
        }
        state = 246;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 1099511631808) != 0)) {
          state = 245;
          parameter();
        }

        state = 248;
        match(TOKEN_PAREN_CLOSE);
        state = 251;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_GRAPH_OPEN:
          state = 249;
          block();
          break;
        case TOKEN_SEMICOLON:
          state = 250;
          match(TOKEN_SEMICOLON);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case 4:
        _localctx = NamedClassConstructorDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 253;
        _localctx.className = match(TOKEN_ID);
        state = 254;
        match(TOKEN_DOT);
        state = 255;
        _localctx.costructorName = match(TOKEN_ID);
        state = 256;
        match(TOKEN_PAREN_OPEN);
        state = 262;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 25, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 257;
            parameter();
            state = 258;
            match(TOKEN_COMMA); 
          }
          state = 264;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 25, context);
        }
        state = 266;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 1099511631808) != 0)) {
          state = 265;
          parameter();
        }

        state = 268;
        match(TOKEN_PAREN_CLOSE);
        state = 271;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_COLONS) {
          state = 269;
          match(TOKEN_COLONS);
          state = 270;
          thisConstructorCall();
        }

        state = 275;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_GRAPH_OPEN:
          state = 273;
          block();
          break;
        case TOKEN_SEMICOLON:
          state = 274;
          match(TOKEN_SEMICOLON);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case 5:
        _localctx = ClassMethodDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 277;
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

  ThisConstructorCallContext thisConstructorCall() {
    dynamic _localctx = ThisConstructorCallContext(context, state);
    enterRule(_localctx, 18, RULE_thisConstructorCall);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 280;
      match(TOKEN_THIS);
      state = 281;
      match(TOKEN_PAREN_OPEN);
      state = 287;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 30, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 282;
          expression(0);
          state = 283;
          match(TOKEN_COMMA); 
        }
        state = 289;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 30, context);
      }
      state = 294;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 1102733885440) != 0)) {
        state = 290;
        expression(0);
        state = 292;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_COMMA) {
          state = 291;
          match(TOKEN_COMMA);
        }

      }

      state = 296;
      match(TOKEN_PAREN_CLOSE);
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
      4,1,41,299,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,1,0,4,0,22,8,0,11,0,12,0,23,1,0,1,0,1,1,1,
      1,1,1,1,1,3,1,32,8,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,41,8,1,1,1,1,
      1,1,1,1,1,1,1,1,1,1,1,3,1,50,8,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
      1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,71,8,1,1,2,1,2,1,2,1,
      2,1,2,1,2,3,2,79,8,2,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,
      3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,5,3,102,8,3,10,3,12,3,105,9,
      3,1,3,3,3,108,8,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,5,3,
      121,8,3,10,3,12,3,124,9,3,1,3,3,3,127,8,3,1,3,3,3,130,8,3,1,3,1,3,
      1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,
      3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,5,3,165,
      8,3,10,3,12,3,168,9,3,1,4,1,4,1,4,1,4,1,4,1,4,5,4,176,8,4,10,4,12,
      4,179,9,4,1,4,3,4,182,8,4,1,4,1,4,1,4,1,5,1,5,1,5,3,5,190,8,5,1,5,
      1,5,1,6,1,6,5,6,196,8,6,10,6,12,6,199,9,6,1,6,1,6,1,7,1,7,1,7,1,7,
      3,7,207,8,7,1,7,1,7,5,7,211,8,7,10,7,12,7,214,9,7,1,7,1,7,1,8,1,8,
      1,8,1,8,3,8,222,8,8,1,8,1,8,1,8,1,8,3,8,228,8,8,1,8,1,8,1,8,3,8,233,
      8,8,1,8,1,8,1,8,1,8,1,8,1,8,5,8,241,8,8,10,8,12,8,244,9,8,1,8,3,8,
      247,8,8,1,8,1,8,1,8,3,8,252,8,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,5,8,261,
      8,8,10,8,12,8,264,9,8,1,8,3,8,267,8,8,1,8,1,8,1,8,3,8,272,8,8,1,8,
      1,8,3,8,276,8,8,1,8,3,8,279,8,8,1,9,1,9,1,9,1,9,1,9,5,9,286,8,9,10,
      9,12,9,289,9,9,1,9,1,9,3,9,293,8,9,3,9,295,8,9,1,9,1,9,1,9,0,1,6,10,
      0,2,4,6,8,10,12,14,16,18,0,0,354,0,21,1,0,0,0,2,70,1,0,0,0,4,78,1,
      0,0,0,6,129,1,0,0,0,8,169,1,0,0,0,10,189,1,0,0,0,12,193,1,0,0,0,14,
      202,1,0,0,0,16,278,1,0,0,0,18,280,1,0,0,0,20,22,3,2,1,0,21,20,1,0,
      0,0,22,23,1,0,0,0,23,21,1,0,0,0,23,24,1,0,0,0,24,25,1,0,0,0,25,26,
      5,0,0,1,26,1,1,0,0,0,27,32,5,2,0,0,28,29,5,2,0,0,29,32,3,4,2,0,30,
      32,3,4,2,0,31,27,1,0,0,0,31,28,1,0,0,0,31,30,1,0,0,0,32,33,1,0,0,0,
      33,34,5,40,0,0,34,35,5,12,0,0,35,36,3,6,3,0,36,37,5,13,0,0,37,71,1,
      0,0,0,38,40,5,3,0,0,39,41,3,4,2,0,40,39,1,0,0,0,40,41,1,0,0,0,41,42,
      1,0,0,0,42,43,5,40,0,0,43,44,5,12,0,0,44,45,3,6,3,0,45,46,5,13,0,0,
      46,71,1,0,0,0,47,49,5,4,0,0,48,50,3,4,2,0,49,48,1,0,0,0,49,50,1,0,
      0,0,50,51,1,0,0,0,51,52,5,40,0,0,52,53,5,12,0,0,53,54,3,6,3,0,54,55,
      5,13,0,0,55,71,1,0,0,0,56,57,5,40,0,0,57,58,5,12,0,0,58,59,3,6,3,0,
      59,60,5,13,0,0,60,71,1,0,0,0,61,71,3,8,4,0,62,71,3,14,7,0,63,64,3,
      6,3,0,64,65,5,13,0,0,65,71,1,0,0,0,66,67,5,38,0,0,67,68,3,6,3,0,68,
      69,5,13,0,0,69,71,1,0,0,0,70,31,1,0,0,0,70,38,1,0,0,0,70,47,1,0,0,
      0,70,56,1,0,0,0,70,61,1,0,0,0,70,62,1,0,0,0,70,63,1,0,0,0,70,66,1,
      0,0,0,71,3,1,0,0,0,72,79,5,7,0,0,73,79,5,8,0,0,74,79,5,10,0,0,75,79,
      5,9,0,0,76,79,5,11,0,0,77,79,5,40,0,0,78,72,1,0,0,0,78,73,1,0,0,0,
      78,74,1,0,0,0,78,75,1,0,0,0,78,76,1,0,0,0,78,77,1,0,0,0,79,5,1,0,0,
      0,80,81,6,3,-1,0,81,130,5,16,0,0,82,130,5,14,0,0,83,130,5,15,0,0,84,
      130,5,17,0,0,85,86,5,19,0,0,86,130,3,6,3,8,87,88,5,18,0,0,88,130,3,
      6,3,7,89,90,5,30,0,0,90,130,3,6,3,6,91,92,5,31,0,0,92,93,3,6,3,0,93,
      94,5,32,0,0,94,130,1,0,0,0,95,130,5,40,0,0,96,97,5,40,0,0,97,103,5,
      31,0,0,98,99,3,6,3,0,99,100,5,35,0,0,100,102,1,0,0,0,101,98,1,0,0,
      0,102,105,1,0,0,0,103,101,1,0,0,0,103,104,1,0,0,0,104,107,1,0,0,0,
      105,103,1,0,0,0,106,108,3,6,3,0,107,106,1,0,0,0,107,108,1,0,0,0,108,
      109,1,0,0,0,109,130,5,32,0,0,110,111,5,40,0,0,111,112,5,36,0,0,112,
      130,5,40,0,0,113,114,5,40,0,0,114,115,5,36,0,0,115,116,5,40,0,0,116,
      122,5,31,0,0,117,118,3,6,3,0,118,119,5,35,0,0,119,121,1,0,0,0,120,
      117,1,0,0,0,121,124,1,0,0,0,122,120,1,0,0,0,122,123,1,0,0,0,123,126,
      1,0,0,0,124,122,1,0,0,0,125,127,3,6,3,0,126,125,1,0,0,0,126,127,1,
      0,0,0,127,128,1,0,0,0,128,130,5,32,0,0,129,80,1,0,0,0,129,82,1,0,0,
      0,129,83,1,0,0,0,129,84,1,0,0,0,129,85,1,0,0,0,129,87,1,0,0,0,129,
      89,1,0,0,0,129,91,1,0,0,0,129,95,1,0,0,0,129,96,1,0,0,0,129,110,1,
      0,0,0,129,113,1,0,0,0,130,166,1,0,0,0,131,132,10,19,0,0,132,133,5,
      18,0,0,133,165,3,6,3,20,134,135,10,18,0,0,135,136,5,19,0,0,136,165,
      3,6,3,19,137,138,10,17,0,0,138,139,5,21,0,0,139,165,3,6,3,18,140,141,
      10,16,0,0,141,142,5,20,0,0,142,165,3,6,3,17,143,144,10,15,0,0,144,
      145,5,28,0,0,145,165,3,6,3,16,146,147,10,14,0,0,147,148,5,29,0,0,148,
      165,3,6,3,15,149,150,10,13,0,0,150,151,5,25,0,0,151,165,3,6,3,14,152,
      153,10,12,0,0,153,154,5,26,0,0,154,165,3,6,3,13,155,156,10,11,0,0,
      156,157,5,23,0,0,157,165,3,6,3,12,158,159,10,10,0,0,159,160,5,24,0,
      0,160,165,3,6,3,11,161,162,10,9,0,0,162,163,5,27,0,0,163,165,3,6,3,
      10,164,131,1,0,0,0,164,134,1,0,0,0,164,137,1,0,0,0,164,140,1,0,0,0,
      164,143,1,0,0,0,164,146,1,0,0,0,164,149,1,0,0,0,164,152,1,0,0,0,164,
      155,1,0,0,0,164,158,1,0,0,0,164,161,1,0,0,0,165,168,1,0,0,0,166,164,
      1,0,0,0,166,167,1,0,0,0,167,7,1,0,0,0,168,166,1,0,0,0,169,170,3,4,
      2,0,170,171,5,40,0,0,171,177,5,31,0,0,172,173,3,10,5,0,173,174,5,35,
      0,0,174,176,1,0,0,0,175,172,1,0,0,0,176,179,1,0,0,0,177,175,1,0,0,
      0,177,178,1,0,0,0,178,181,1,0,0,0,179,177,1,0,0,0,180,182,3,10,5,0,
      181,180,1,0,0,0,181,182,1,0,0,0,182,183,1,0,0,0,183,184,5,32,0,0,184,
      185,3,12,6,0,185,9,1,0,0,0,186,190,3,4,2,0,187,188,5,6,0,0,188,190,
      5,36,0,0,189,186,1,0,0,0,189,187,1,0,0,0,190,191,1,0,0,0,191,192,5,
      40,0,0,192,11,1,0,0,0,193,197,5,33,0,0,194,196,3,2,1,0,195,194,1,0,
      0,0,196,199,1,0,0,0,197,195,1,0,0,0,197,198,1,0,0,0,198,200,1,0,0,
      0,199,197,1,0,0,0,200,201,5,34,0,0,201,13,1,0,0,0,202,203,5,5,0,0,
      203,206,5,40,0,0,204,205,5,39,0,0,205,207,5,40,0,0,206,204,1,0,0,0,
      206,207,1,0,0,0,207,208,1,0,0,0,208,212,5,33,0,0,209,211,3,16,8,0,
      210,209,1,0,0,0,211,214,1,0,0,0,212,210,1,0,0,0,212,213,1,0,0,0,213,
      215,1,0,0,0,214,212,1,0,0,0,215,216,5,34,0,0,216,15,1,0,0,0,217,218,
      3,4,2,0,218,221,5,40,0,0,219,220,5,12,0,0,220,222,3,6,3,0,221,219,
      1,0,0,0,221,222,1,0,0,0,222,223,1,0,0,0,223,224,5,13,0,0,224,279,1,
      0,0,0,225,227,5,3,0,0,226,228,3,4,2,0,227,226,1,0,0,0,227,228,1,0,
      0,0,228,229,1,0,0,0,229,232,5,40,0,0,230,231,5,12,0,0,231,233,3,6,
      3,0,232,230,1,0,0,0,232,233,1,0,0,0,233,234,1,0,0,0,234,279,5,13,0,
      0,235,236,5,40,0,0,236,242,5,31,0,0,237,238,3,10,5,0,238,239,5,35,
      0,0,239,241,1,0,0,0,240,237,1,0,0,0,241,244,1,0,0,0,242,240,1,0,0,
      0,242,243,1,0,0,0,243,246,1,0,0,0,244,242,1,0,0,0,245,247,3,10,5,0,
      246,245,1,0,0,0,246,247,1,0,0,0,247,248,1,0,0,0,248,251,5,32,0,0,249,
      252,3,12,6,0,250,252,5,13,0,0,251,249,1,0,0,0,251,250,1,0,0,0,252,
      279,1,0,0,0,253,254,5,40,0,0,254,255,5,36,0,0,255,256,5,40,0,0,256,
      262,5,31,0,0,257,258,3,10,5,0,258,259,5,35,0,0,259,261,1,0,0,0,260,
      257,1,0,0,0,261,264,1,0,0,0,262,260,1,0,0,0,262,263,1,0,0,0,263,266,
      1,0,0,0,264,262,1,0,0,0,265,267,3,10,5,0,266,265,1,0,0,0,266,267,1,
      0,0,0,267,268,1,0,0,0,268,271,5,32,0,0,269,270,5,37,0,0,270,272,3,
      18,9,0,271,269,1,0,0,0,271,272,1,0,0,0,272,275,1,0,0,0,273,276,3,12,
      6,0,274,276,5,13,0,0,275,273,1,0,0,0,275,274,1,0,0,0,276,279,1,0,0,
      0,277,279,3,8,4,0,278,217,1,0,0,0,278,225,1,0,0,0,278,235,1,0,0,0,
      278,253,1,0,0,0,278,277,1,0,0,0,279,17,1,0,0,0,280,281,5,6,0,0,281,
      287,5,31,0,0,282,283,3,6,3,0,283,284,5,35,0,0,284,286,1,0,0,0,285,
      282,1,0,0,0,286,289,1,0,0,0,287,285,1,0,0,0,287,288,1,0,0,0,288,294,
      1,0,0,0,289,287,1,0,0,0,290,292,3,6,3,0,291,293,5,35,0,0,292,291,1,
      0,0,0,292,293,1,0,0,0,293,295,1,0,0,0,294,290,1,0,0,0,294,295,1,0,
      0,0,295,296,1,0,0,0,296,297,5,32,0,0,297,19,1,0,0,0,33,23,31,40,49,
      70,78,103,107,122,126,129,164,166,177,181,189,197,206,212,221,227,
      232,242,246,251,262,266,271,275,278,287,292,294
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

class ThisConstructorCallContext extends ParserRuleContext {
  TerminalNode? THIS() => getToken(DartParser.TOKEN_THIS, 0);
  TerminalNode? PAREN_OPEN() => getToken(DartParser.TOKEN_PAREN_OPEN, 0);
  TerminalNode? PAREN_CLOSE() => getToken(DartParser.TOKEN_PAREN_CLOSE, 0);
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  List<TerminalNode> COMMAs() => getTokens(DartParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(DartParser.TOKEN_COMMA, i);
  ThisConstructorCallContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_thisConstructorCall;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterThisConstructorCall(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitThisConstructorCall(this);
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
  TerminalNode? PAREN_OPEN() => getToken(DartParser.TOKEN_PAREN_OPEN, 0);
  TerminalNode? PAREN_CLOSE() => getToken(DartParser.TOKEN_PAREN_CLOSE, 0);
  List<TerminalNode> IDs() => getTokens(DartParser.TOKEN_ID);
  TerminalNode? ID(int i) => getToken(DartParser.TOKEN_ID, i);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  TerminalNode? SEMICOLON() => getToken(DartParser.TOKEN_SEMICOLON, 0);
  List<ParameterContext> parameters() => getRuleContexts<ParameterContext>();
  ParameterContext? parameter(int i) => getRuleContext<ParameterContext>(i);
  List<TerminalNode> COMMAs() => getTokens(DartParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(DartParser.TOKEN_COMMA, i);
  TerminalNode? COLONS() => getToken(DartParser.TOKEN_COLONS, 0);
  ThisConstructorCallContext? thisConstructorCall() => getRuleContext<ThisConstructorCallContext>(0);
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