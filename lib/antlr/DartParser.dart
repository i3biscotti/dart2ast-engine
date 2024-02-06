// Generated from d://Progetti personali//dart2kotlin//dart2ast_engine//antrl4//DartParser.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'DartParserListener.dart';
import 'DartParserBaseListener.dart';
const int RULE_dartFile = 0, RULE_statement = 1, RULE_varDeclaration = 2, 
          RULE_assigment = 3, RULE_type = 4, RULE_expression = 5, RULE_functionDefinition = 6, 
          RULE_parameter = 7, RULE_block = 8, RULE_classDefinition = 9, 
          RULE_classStatement = 10, RULE_thisConstructorCall = 11, RULE_ifBlock = 12, 
          RULE_elseIfBlock = 13, RULE_elseBlock = 14, RULE_ifDefinition = 15, 
          RULE_whileDefinition = 16, RULE_initializationForExpression = 17, 
          RULE_itemDefinition = 18, RULE_forCondition = 19, RULE_forDefinition = 20;
class DartParser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.1', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int TOKEN_WS = 1, TOKEN_VAR = 2, TOKEN_FINAL = 3, TOKEN_CONST = 4, 
                   TOKEN_CLASS = 5, TOKEN_THIS = 6, TOKEN_INT = 7, TOKEN_DOUBLE = 8, 
                   TOKEN_STRING = 9, TOKEN_BOOL = 10, TOKEN_VOID = 11, TOKEN_LIST = 12, 
                   TOKEN_ASSIGN = 13, TOKEN_SEMICOLON = 14, TOKEN_INTLIT = 15, 
                   TOKEN_DOUBLELIT = 16, TOKEN_BOOLLIT = 17, TOKEN_STRINGLIT = 18, 
                   TOKEN_PLUS = 19, TOKEN_MINUS = 20, TOKEN_DIVISION = 21, 
                   TOKEN_TIMES = 22, TOKEN_MODULE = 23, TOKEN_GREATER_EQUAL_THAN = 24, 
                   TOKEN_LOWER_EQUAL_THAN = 25, TOKEN_GREATER_THAN = 26, 
                   TOKEN_LOWER_THAN = 27, TOKEN_EQUAL = 28, TOKEN_AND = 29, 
                   TOKEN_OR = 30, TOKEN_NOT = 31, TOKEN_PAREN_OPEN = 32, 
                   TOKEN_PAREN_CLOSE = 33, TOKEN_SQUARE_OPEN = 34, TOKEN_SQUARE_CLOSE = 35, 
                   TOKEN_GRAPH_OPEN = 36, TOKEN_GRAPH_CLOSE = 37, TOKEN_COMMA = 38, 
                   TOKEN_DOT = 39, TOKEN_COLONS = 40, TOKEN_RETURN = 41, 
                   TOKEN_EXTENDS = 42, TOKEN_IF = 43, TOKEN_ELSE = 44, TOKEN_WHILE = 45, 
                   TOKEN_FOR = 46, TOKEN_IN = 47, TOKEN_ID = 48, TOKEN_UnterminatedStringLiteral = 49;

  @override
  final List<String> ruleNames = [
    'dartFile', 'statement', 'varDeclaration', 'assigment', 'type', 'expression', 
    'functionDefinition', 'parameter', 'block', 'classDefinition', 'classStatement', 
    'thisConstructorCall', 'ifBlock', 'elseIfBlock', 'elseBlock', 'ifDefinition', 
    'whileDefinition', 'initializationForExpression', 'itemDefinition', 
    'forCondition', 'forDefinition'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, null, "'var'", "'final'", "'const'", "'class'", "'this'", "'int'", 
      "'double'", "'String'", "'bool'", "'void'", "'List'", "'='", "';'", 
      null, null, null, null, "'+'", "'-'", "'/'", "'*'", "'%'", "'>='", 
      "'<='", "'>'", "'<'", "'=='", "'&&'", "'||'", "'!'", "'('", "')'", 
      "'['", "']'", "'{'", "'}'", "','", "'.'", "':'", "'return'", "'extends'", 
      "'if'", "'else'", "'while'", "'for'", "'in'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, "WS", "VAR", "FINAL", "CONST", "CLASS", "THIS", "INT", "DOUBLE", 
      "STRING", "BOOL", "VOID", "LIST", "ASSIGN", "SEMICOLON", "INTLIT", 
      "DOUBLELIT", "BOOLLIT", "STRINGLIT", "PLUS", "MINUS", "DIVISION", 
      "TIMES", "MODULE", "GREATER_EQUAL_THAN", "LOWER_EQUAL_THAN", "GREATER_THAN", 
      "LOWER_THAN", "EQUAL", "AND", "OR", "NOT", "PAREN_OPEN", "PAREN_CLOSE", 
      "SQUARE_OPEN", "SQUARE_CLOSE", "GRAPH_OPEN", "GRAPH_CLOSE", "COMMA", 
      "DOT", "COLONS", "RETURN", "EXTENDS", "IF", "ELSE", "WHILE", "FOR", 
      "IN", "ID", "UnterminatedStringLiteral"
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
      state = 43; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 42;
        statement();
        state = 45; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 398046833647548) != 0));
      state = 47;
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
      state = 85;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 3, context)) {
      case 1:
        _localctx = VarDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 49;
        varDeclaration();
        state = 50;
        match(TOKEN_SEMICOLON);
        break;
      case 2:
        _localctx = FinalDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 52;
        match(TOKEN_FINAL);
        state = 54;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 1, context)) {
        case 1:
          state = 53;
          type();
          break;
        }
        state = 56;
        match(TOKEN_ID);
        state = 57;
        match(TOKEN_ASSIGN);
        state = 58;
        expression(0);
        state = 59;
        match(TOKEN_SEMICOLON);
        break;
      case 3:
        _localctx = ConstDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 61;
        match(TOKEN_CONST);
        state = 63;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 2, context)) {
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
        expression(0);
        state = 68;
        match(TOKEN_SEMICOLON);
        break;
      case 4:
        _localctx = AssigmentStatementContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 70;
        assigment();
        state = 71;
        match(TOKEN_SEMICOLON);
        break;
      case 5:
        _localctx = FunctionDefinitionStatementContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 73;
        functionDefinition();
        break;
      case 6:
        _localctx = ClassDefinitionStatementContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 74;
        classDefinition();
        break;
      case 7:
        _localctx = ExpressionDefinitionStatementContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 75;
        expression(0);
        state = 76;
        match(TOKEN_SEMICOLON);
        break;
      case 8:
        _localctx = ReturnStatementContext(_localctx);
        enterOuterAlt(_localctx, 8);
        state = 78;
        match(TOKEN_RETURN);
        state = 79;
        expression(0);
        state = 80;
        match(TOKEN_SEMICOLON);
        break;
      case 9:
        _localctx = IfStatementContext(_localctx);
        enterOuterAlt(_localctx, 9);
        state = 82;
        ifDefinition();
        break;
      case 10:
        _localctx = WhileStatementContext(_localctx);
        enterOuterAlt(_localctx, 10);
        state = 83;
        whileDefinition();
        break;
      case 11:
        _localctx = ForStatementContext(_localctx);
        enterOuterAlt(_localctx, 11);
        state = 84;
        forDefinition();
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

  VarDeclarationContext varDeclaration() {
    dynamic _localctx = VarDeclarationContext(context, state);
    enterRule(_localctx, 4, RULE_varDeclaration);
    try {
      enterOuterAlt(_localctx, 1);
      state = 91;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 4, context)) {
      case 1:
        state = 87;
        match(TOKEN_VAR);
        break;
      case 2:
        state = 88;
        match(TOKEN_VAR);
        state = 89;
        type();
        break;
      case 3:
        state = 90;
        type();
        break;
      }
      state = 93;
      match(TOKEN_ID);
      state = 94;
      match(TOKEN_ASSIGN);
      state = 95;
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

  AssigmentContext assigment() {
    dynamic _localctx = AssigmentContext(context, state);
    enterRule(_localctx, 6, RULE_assigment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 97;
      match(TOKEN_ID);
      state = 98;
      match(TOKEN_ASSIGN);
      state = 99;
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

  TypeContext type() {
    dynamic _localctx = TypeContext(context, state);
    enterRule(_localctx, 8, RULE_type);
    try {
      state = 108;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_INT:
        _localctx = IntTypeContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 101;
        match(TOKEN_INT);
        break;
      case TOKEN_DOUBLE:
        _localctx = DoubleTypeContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 102;
        match(TOKEN_DOUBLE);
        break;
      case TOKEN_BOOL:
        _localctx = BoolTypeContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 103;
        match(TOKEN_BOOL);
        break;
      case TOKEN_STRING:
        _localctx = StringTypeContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 104;
        match(TOKEN_STRING);
        break;
      case TOKEN_VOID:
        _localctx = VoidTypeContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 105;
        match(TOKEN_VOID);
        break;
      case TOKEN_LIST:
        _localctx = ListTypeContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 106;
        match(TOKEN_LIST);
        break;
      case TOKEN_ID:
        _localctx = CustomTypeContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 107;
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
    var _startState = 10;
    enterRecursionRule(_localctx, 10, RULE_expression, _p);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 176;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 12, context)) {
      case 1:
        _localctx = BoolLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;

        state = 111;
        match(TOKEN_BOOLLIT);
        break;
      case 2:
        _localctx = IntLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 112;
        match(TOKEN_INTLIT);
        break;
      case 3:
        _localctx = DoubleLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 113;
        match(TOKEN_DOUBLELIT);
        break;
      case 4:
        _localctx = StringLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 114;
        match(TOKEN_STRINGLIT);
        break;
      case 5:
        _localctx = ListLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 115;
        match(TOKEN_SQUARE_OPEN);
        state = 122;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 281498601095168) != 0)) {
          state = 116;
          expression(0);
          state = 118;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_COMMA) {
            state = 117;
            match(TOKEN_COMMA);
          }

          state = 124;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 125;
        match(TOKEN_SQUARE_CLOSE);
        break;
      case 6:
        _localctx = UnaryMathExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 126;
        _localctx.operand = match(TOKEN_MINUS);
        state = 127;
        _localctx.value = expression(10);
        break;
      case 7:
        _localctx = UnaryMathExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 128;
        _localctx.operand = match(TOKEN_PLUS);
        state = 129;
        _localctx.value = expression(9);
        break;
      case 8:
        _localctx = UnaryLogicNegationExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 130;
        _localctx.operand = match(TOKEN_NOT);
        state = 131;
        _localctx.value = expression(8);
        break;
      case 9:
        _localctx = IncrementExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 132;
        match(TOKEN_PLUS);
        state = 133;
        match(TOKEN_PLUS);
        state = 134;
        match(TOKEN_ID);
        break;
      case 10:
        _localctx = DecrementExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 135;
        match(TOKEN_MINUS);
        state = 136;
        match(TOKEN_MINUS);
        state = 137;
        match(TOKEN_ID);
        break;
      case 11:
        _localctx = ParenthesysExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 138;
        match(TOKEN_PAREN_OPEN);
        state = 139;
        _localctx.value = expression(0);
        state = 140;
        match(TOKEN_PAREN_CLOSE);
        break;
      case 12:
        _localctx = VarReferenceExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 142;
        match(TOKEN_ID);
        break;
      case 13:
        _localctx = FunctionCallExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 143;
        match(TOKEN_ID);
        state = 144;
        match(TOKEN_PAREN_OPEN);
        state = 150;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 8, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 145;
            expression(0);
            state = 146;
            match(TOKEN_COMMA); 
          }
          state = 152;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 8, context);
        }
        state = 154;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 281498601095168) != 0)) {
          state = 153;
          expression(0);
        }

        state = 156;
        match(TOKEN_PAREN_CLOSE);
        break;
      case 14:
        _localctx = ObjectPropertyReferenceExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 157;
        match(TOKEN_ID);
        state = 158;
        match(TOKEN_DOT);
        state = 159;
        match(TOKEN_ID);
        break;
      case 15:
        _localctx = ObjectMethodCallExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 160;
        match(TOKEN_ID);
        state = 161;
        match(TOKEN_DOT);
        state = 162;
        match(TOKEN_ID);
        state = 163;
        match(TOKEN_PAREN_OPEN);
        state = 169;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 10, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 164;
            expression(0);
            state = 165;
            match(TOKEN_COMMA); 
          }
          state = 171;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 10, context);
        }
        state = 173;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 281498601095168) != 0)) {
          state = 172;
          expression(0);
        }

        state = 175;
        match(TOKEN_PAREN_CLOSE);
        break;
      }
      context!.stop = tokenStream.LT(-1);
      state = 213;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 14, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 211;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 13, context)) {
          case 1:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 178;
            if (!(precpred(context, 21))) {
              throw FailedPredicateException(this, "precpred(context, 21)");
            }
            state = 179;
            _localctx.operand = match(TOKEN_PLUS);
            state = 180;
            _localctx.right = expression(22);
            break;
          case 2:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 181;
            if (!(precpred(context, 20))) {
              throw FailedPredicateException(this, "precpred(context, 20)");
            }
            state = 182;
            _localctx.operand = match(TOKEN_MINUS);
            state = 183;
            _localctx.right = expression(21);
            break;
          case 3:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 184;
            if (!(precpred(context, 19))) {
              throw FailedPredicateException(this, "precpred(context, 19)");
            }
            state = 185;
            _localctx.operand = match(TOKEN_TIMES);
            state = 186;
            _localctx.right = expression(20);
            break;
          case 4:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 187;
            if (!(precpred(context, 18))) {
              throw FailedPredicateException(this, "precpred(context, 18)");
            }
            state = 188;
            _localctx.operand = match(TOKEN_DIVISION);
            state = 189;
            _localctx.right = expression(19);
            break;
          case 5:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 190;
            if (!(precpred(context, 17))) {
              throw FailedPredicateException(this, "precpred(context, 17)");
            }
            state = 191;
            _localctx.operand = match(TOKEN_AND);
            state = 192;
            _localctx.right = expression(18);
            break;
          case 6:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 193;
            if (!(precpred(context, 16))) {
              throw FailedPredicateException(this, "precpred(context, 16)");
            }
            state = 194;
            _localctx.operand = match(TOKEN_OR);
            state = 195;
            _localctx.right = expression(17);
            break;
          case 7:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 196;
            if (!(precpred(context, 15))) {
              throw FailedPredicateException(this, "precpred(context, 15)");
            }
            state = 197;
            _localctx.operand = match(TOKEN_GREATER_THAN);
            state = 198;
            _localctx.right = expression(16);
            break;
          case 8:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 199;
            if (!(precpred(context, 14))) {
              throw FailedPredicateException(this, "precpred(context, 14)");
            }
            state = 200;
            _localctx.operand = match(TOKEN_LOWER_THAN);
            state = 201;
            _localctx.right = expression(15);
            break;
          case 9:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 202;
            if (!(precpred(context, 13))) {
              throw FailedPredicateException(this, "precpred(context, 13)");
            }
            state = 203;
            _localctx.operand = match(TOKEN_GREATER_EQUAL_THAN);
            state = 204;
            _localctx.right = expression(14);
            break;
          case 10:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 205;
            if (!(precpred(context, 12))) {
              throw FailedPredicateException(this, "precpred(context, 12)");
            }
            state = 206;
            _localctx.operand = match(TOKEN_LOWER_EQUAL_THAN);
            state = 207;
            _localctx.right = expression(13);
            break;
          case 11:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 208;
            if (!(precpred(context, 11))) {
              throw FailedPredicateException(this, "precpred(context, 11)");
            }
            state = 209;
            _localctx.operand = match(TOKEN_EQUAL);
            state = 210;
            _localctx.right = expression(12);
            break;
          } 
        }
        state = 215;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 14, context);
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
    enterRule(_localctx, 12, RULE_functionDefinition);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 216;
      _localctx.returnType = type();
      state = 217;
      _localctx.name = match(TOKEN_ID);
      state = 218;
      match(TOKEN_PAREN_OPEN);
      state = 224;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 15, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 219;
          parameter();
          state = 220;
          match(TOKEN_COMMA); 
        }
        state = 226;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 15, context);
      }
      state = 228;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 281474976718784) != 0)) {
        state = 227;
        parameter();
      }

      state = 230;
      match(TOKEN_PAREN_CLOSE);
      state = 231;
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
    enterRule(_localctx, 14, RULE_parameter);
    try {
      enterOuterAlt(_localctx, 1);
      state = 236;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_INT:
      case TOKEN_DOUBLE:
      case TOKEN_STRING:
      case TOKEN_BOOL:
      case TOKEN_VOID:
      case TOKEN_LIST:
      case TOKEN_ID:
        state = 233;
        type();
        break;
      case TOKEN_THIS:
        state = 234;
        match(TOKEN_THIS);
        state = 235;
        match(TOKEN_DOT);
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 238;
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
    enterRule(_localctx, 16, RULE_block);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 240;
      match(TOKEN_GRAPH_OPEN);
      state = 244;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 398046833647548) != 0)) {
        state = 241;
        statement();
        state = 246;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 247;
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
    enterRule(_localctx, 18, RULE_classDefinition);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 249;
      match(TOKEN_CLASS);
      state = 250;
      _localctx.name = match(TOKEN_ID);
      state = 253;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_EXTENDS) {
        state = 251;
        match(TOKEN_EXTENDS);
        state = 252;
        _localctx.parentName = match(TOKEN_ID);
      }

      state = 255;
      match(TOKEN_GRAPH_OPEN);
      state = 259;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 281474976718728) != 0)) {
        state = 256;
        classStatement();
        state = 261;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 262;
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
    enterRule(_localctx, 20, RULE_classStatement);
    int _la;
    try {
      int _alt;
      state = 325;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 31, context)) {
      case 1:
        _localctx = ClassVarDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 264;
        type();
        state = 265;
        match(TOKEN_ID);
        state = 268;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_ASSIGN) {
          state = 266;
          match(TOKEN_ASSIGN);
          state = 267;
          expression(0);
        }

        state = 270;
        match(TOKEN_SEMICOLON);
        break;
      case 2:
        _localctx = ClassImmutableVarDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 272;
        match(TOKEN_FINAL);
        state = 274;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 22, context)) {
        case 1:
          state = 273;
          type();
          break;
        }
        state = 276;
        match(TOKEN_ID);
        state = 279;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_ASSIGN) {
          state = 277;
          match(TOKEN_ASSIGN);
          state = 278;
          expression(0);
        }

        state = 281;
        match(TOKEN_SEMICOLON);
        break;
      case 3:
        _localctx = MainClassConstructorDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 282;
        _localctx.className = match(TOKEN_ID);
        state = 283;
        match(TOKEN_PAREN_OPEN);
        state = 289;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 24, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 284;
            parameter();
            state = 285;
            match(TOKEN_COMMA); 
          }
          state = 291;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 24, context);
        }
        state = 293;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 281474976718784) != 0)) {
          state = 292;
          parameter();
        }

        state = 295;
        match(TOKEN_PAREN_CLOSE);
        state = 298;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_GRAPH_OPEN:
          state = 296;
          block();
          break;
        case TOKEN_SEMICOLON:
          state = 297;
          match(TOKEN_SEMICOLON);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case 4:
        _localctx = NamedClassConstructorDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 300;
        _localctx.className = match(TOKEN_ID);
        state = 301;
        match(TOKEN_DOT);
        state = 302;
        _localctx.costructorName = match(TOKEN_ID);
        state = 303;
        match(TOKEN_PAREN_OPEN);
        state = 309;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 27, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 304;
            parameter();
            state = 305;
            match(TOKEN_COMMA); 
          }
          state = 311;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 27, context);
        }
        state = 313;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 281474976718784) != 0)) {
          state = 312;
          parameter();
        }

        state = 315;
        match(TOKEN_PAREN_CLOSE);
        state = 318;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_COLONS) {
          state = 316;
          match(TOKEN_COLONS);
          state = 317;
          thisConstructorCall();
        }

        state = 322;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_GRAPH_OPEN:
          state = 320;
          block();
          break;
        case TOKEN_SEMICOLON:
          state = 321;
          match(TOKEN_SEMICOLON);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case 5:
        _localctx = ClassMethodDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 324;
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
    enterRule(_localctx, 22, RULE_thisConstructorCall);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 327;
      match(TOKEN_THIS);
      state = 328;
      match(TOKEN_PAREN_OPEN);
      state = 334;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 32, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 329;
          expression(0);
          state = 330;
          match(TOKEN_COMMA); 
        }
        state = 336;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 32, context);
      }
      state = 341;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 281498601095168) != 0)) {
        state = 337;
        expression(0);
        state = 339;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_COMMA) {
          state = 338;
          match(TOKEN_COMMA);
        }

      }

      state = 343;
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

  IfBlockContext ifBlock() {
    dynamic _localctx = IfBlockContext(context, state);
    enterRule(_localctx, 24, RULE_ifBlock);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 345;
      match(TOKEN_IF);
      state = 346;
      match(TOKEN_PAREN_OPEN);
      state = 347;
      expression(0);
      state = 348;
      match(TOKEN_PAREN_CLOSE);
      state = 349;
      match(TOKEN_GRAPH_OPEN);
      state = 353;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 398046833647548) != 0)) {
        state = 350;
        statement();
        state = 355;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 356;
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

  ElseIfBlockContext elseIfBlock() {
    dynamic _localctx = ElseIfBlockContext(context, state);
    enterRule(_localctx, 26, RULE_elseIfBlock);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 358;
      match(TOKEN_ELSE);
      state = 359;
      match(TOKEN_IF);
      state = 360;
      match(TOKEN_PAREN_OPEN);
      state = 361;
      expression(0);
      state = 362;
      match(TOKEN_PAREN_CLOSE);
      state = 363;
      match(TOKEN_GRAPH_OPEN);
      state = 367;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 398046833647548) != 0)) {
        state = 364;
        statement();
        state = 369;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 370;
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

  ElseBlockContext elseBlock() {
    dynamic _localctx = ElseBlockContext(context, state);
    enterRule(_localctx, 28, RULE_elseBlock);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 372;
      match(TOKEN_ELSE);
      state = 373;
      match(TOKEN_GRAPH_OPEN);
      state = 377;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 398046833647548) != 0)) {
        state = 374;
        statement();
        state = 379;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 380;
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

  IfDefinitionContext ifDefinition() {
    dynamic _localctx = IfDefinitionContext(context, state);
    enterRule(_localctx, 30, RULE_ifDefinition);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 382;
      ifBlock();
      state = 386;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 38, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 383;
          elseIfBlock(); 
        }
        state = 388;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 38, context);
      }
      state = 390;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_ELSE) {
        state = 389;
        elseBlock();
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

  WhileDefinitionContext whileDefinition() {
    dynamic _localctx = WhileDefinitionContext(context, state);
    enterRule(_localctx, 32, RULE_whileDefinition);
    try {
      enterOuterAlt(_localctx, 1);
      state = 392;
      match(TOKEN_WHILE);
      state = 393;
      match(TOKEN_PAREN_OPEN);
      state = 394;
      expression(0);
      state = 395;
      match(TOKEN_PAREN_CLOSE);
      state = 396;
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

  InitializationForExpressionContext initializationForExpression() {
    dynamic _localctx = InitializationForExpressionContext(context, state);
    enterRule(_localctx, 34, RULE_initializationForExpression);
    try {
      state = 400;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 40, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 398;
        varDeclaration();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 399;
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

  ItemDefinitionContext itemDefinition() {
    dynamic _localctx = ItemDefinitionContext(context, state);
    enterRule(_localctx, 36, RULE_itemDefinition);
    try {
      enterOuterAlt(_localctx, 1);
      state = 404;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_VAR:
        state = 402;
        match(TOKEN_VAR);
        break;
      case TOKEN_INT:
      case TOKEN_DOUBLE:
      case TOKEN_STRING:
      case TOKEN_BOOL:
      case TOKEN_VOID:
      case TOKEN_LIST:
      case TOKEN_ID:
        state = 403;
        type();
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 406;
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

  ForConditionContext forCondition() {
    dynamic _localctx = ForConditionContext(context, state);
    enterRule(_localctx, 38, RULE_forCondition);
    try {
      state = 421;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 42, context)) {
      case 1:
        _localctx = StandardForConditionContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 408;
        match(TOKEN_PAREN_OPEN);
        state = 409;
        initializationForExpression();
        state = 410;
        match(TOKEN_SEMICOLON);
        state = 411;
        expression(0);
        state = 412;
        match(TOKEN_SEMICOLON);
        state = 413;
        expression(0);
        state = 414;
        match(TOKEN_PAREN_CLOSE);
        break;
      case 2:
        _localctx = ForEachConditionContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 416;
        match(TOKEN_PAREN_OPEN);
        state = 417;
        itemDefinition();
        state = 418;
        match(TOKEN_IN);
        state = 419;
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

  ForDefinitionContext forDefinition() {
    dynamic _localctx = ForDefinitionContext(context, state);
    enterRule(_localctx, 40, RULE_forDefinition);
    try {
      enterOuterAlt(_localctx, 1);
      state = 423;
      match(TOKEN_FOR);
      state = 424;
      match(TOKEN_PAREN_OPEN);
      state = 425;
      forCondition();
      state = 426;
      match(TOKEN_PAREN_CLOSE);
      state = 427;
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
    case 5:
      return _expression_sempred(_localctx as ExpressionContext?, predIndex);
    }
    return true;
  }
  bool _expression_sempred(dynamic _localctx, int predIndex) {
    switch (predIndex) {
      case 0: return precpred(context, 21);
      case 1: return precpred(context, 20);
      case 2: return precpred(context, 19);
      case 3: return precpred(context, 18);
      case 4: return precpred(context, 17);
      case 5: return precpred(context, 16);
      case 6: return precpred(context, 15);
      case 7: return precpred(context, 14);
      case 8: return precpred(context, 13);
      case 9: return precpred(context, 12);
      case 10: return precpred(context, 11);
    }
    return true;
  }

  static const List<int> _serializedATN = [
      4,1,49,430,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,
      14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,
      1,0,4,0,44,8,0,11,0,12,0,45,1,0,1,0,1,1,1,1,1,1,1,1,1,1,3,1,55,8,1,
      1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,64,8,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
      1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,86,8,1,1,2,
      1,2,1,2,1,2,3,2,92,8,2,1,2,1,2,1,2,1,2,1,3,1,3,1,3,1,3,1,4,1,4,1,4,
      1,4,1,4,1,4,1,4,3,4,109,8,4,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,3,5,119,
      8,5,5,5,121,8,5,10,5,12,5,124,9,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,
      1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,5,5,149,
      8,5,10,5,12,5,152,9,5,1,5,3,5,155,8,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,
      1,5,1,5,1,5,1,5,5,5,168,8,5,10,5,12,5,171,9,5,1,5,3,5,174,8,5,1,5,
      3,5,177,8,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,
      5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,
      1,5,1,5,1,5,5,5,212,8,5,10,5,12,5,215,9,5,1,6,1,6,1,6,1,6,1,6,1,6,
      5,6,223,8,6,10,6,12,6,226,9,6,1,6,3,6,229,8,6,1,6,1,6,1,6,1,7,1,7,
      1,7,3,7,237,8,7,1,7,1,7,1,8,1,8,5,8,243,8,8,10,8,12,8,246,9,8,1,8,
      1,8,1,9,1,9,1,9,1,9,3,9,254,8,9,1,9,1,9,5,9,258,8,9,10,9,12,9,261,
      9,9,1,9,1,9,1,10,1,10,1,10,1,10,3,10,269,8,10,1,10,1,10,1,10,1,10,
      3,10,275,8,10,1,10,1,10,1,10,3,10,280,8,10,1,10,1,10,1,10,1,10,1,10,
      1,10,5,10,288,8,10,10,10,12,10,291,9,10,1,10,3,10,294,8,10,1,10,1,
      10,1,10,3,10,299,8,10,1,10,1,10,1,10,1,10,1,10,1,10,1,10,5,10,308,
      8,10,10,10,12,10,311,9,10,1,10,3,10,314,8,10,1,10,1,10,1,10,3,10,319,
      8,10,1,10,1,10,3,10,323,8,10,1,10,3,10,326,8,10,1,11,1,11,1,11,1,11,
      1,11,5,11,333,8,11,10,11,12,11,336,9,11,1,11,1,11,3,11,340,8,11,3,
      11,342,8,11,1,11,1,11,1,12,1,12,1,12,1,12,1,12,1,12,5,12,352,8,12,
      10,12,12,12,355,9,12,1,12,1,12,1,13,1,13,1,13,1,13,1,13,1,13,1,13,
      5,13,366,8,13,10,13,12,13,369,9,13,1,13,1,13,1,14,1,14,1,14,5,14,376,
      8,14,10,14,12,14,379,9,14,1,14,1,14,1,15,1,15,5,15,385,8,15,10,15,
      12,15,388,9,15,1,15,3,15,391,8,15,1,16,1,16,1,16,1,16,1,16,1,16,1,
      17,1,17,3,17,401,8,17,1,18,1,18,3,18,405,8,18,1,18,1,18,1,19,1,19,
      1,19,1,19,1,19,1,19,1,19,1,19,1,19,1,19,1,19,1,19,1,19,3,19,422,8,
      19,1,20,1,20,1,20,1,20,1,20,1,20,1,20,0,1,10,21,0,2,4,6,8,10,12,14,
      16,18,20,22,24,26,28,30,32,34,36,38,40,0,0,491,0,43,1,0,0,0,2,85,1,
      0,0,0,4,91,1,0,0,0,6,97,1,0,0,0,8,108,1,0,0,0,10,176,1,0,0,0,12,216,
      1,0,0,0,14,236,1,0,0,0,16,240,1,0,0,0,18,249,1,0,0,0,20,325,1,0,0,
      0,22,327,1,0,0,0,24,345,1,0,0,0,26,358,1,0,0,0,28,372,1,0,0,0,30,382,
      1,0,0,0,32,392,1,0,0,0,34,400,1,0,0,0,36,404,1,0,0,0,38,421,1,0,0,
      0,40,423,1,0,0,0,42,44,3,2,1,0,43,42,1,0,0,0,44,45,1,0,0,0,45,43,1,
      0,0,0,45,46,1,0,0,0,46,47,1,0,0,0,47,48,5,0,0,1,48,1,1,0,0,0,49,50,
      3,4,2,0,50,51,5,14,0,0,51,86,1,0,0,0,52,54,5,3,0,0,53,55,3,8,4,0,54,
      53,1,0,0,0,54,55,1,0,0,0,55,56,1,0,0,0,56,57,5,48,0,0,57,58,5,13,0,
      0,58,59,3,10,5,0,59,60,5,14,0,0,60,86,1,0,0,0,61,63,5,4,0,0,62,64,
      3,8,4,0,63,62,1,0,0,0,63,64,1,0,0,0,64,65,1,0,0,0,65,66,5,48,0,0,66,
      67,5,13,0,0,67,68,3,10,5,0,68,69,5,14,0,0,69,86,1,0,0,0,70,71,3,6,
      3,0,71,72,5,14,0,0,72,86,1,0,0,0,73,86,3,12,6,0,74,86,3,18,9,0,75,
      76,3,10,5,0,76,77,5,14,0,0,77,86,1,0,0,0,78,79,5,41,0,0,79,80,3,10,
      5,0,80,81,5,14,0,0,81,86,1,0,0,0,82,86,3,30,15,0,83,86,3,32,16,0,84,
      86,3,40,20,0,85,49,1,0,0,0,85,52,1,0,0,0,85,61,1,0,0,0,85,70,1,0,0,
      0,85,73,1,0,0,0,85,74,1,0,0,0,85,75,1,0,0,0,85,78,1,0,0,0,85,82,1,
      0,0,0,85,83,1,0,0,0,85,84,1,0,0,0,86,3,1,0,0,0,87,92,5,2,0,0,88,89,
      5,2,0,0,89,92,3,8,4,0,90,92,3,8,4,0,91,87,1,0,0,0,91,88,1,0,0,0,91,
      90,1,0,0,0,92,93,1,0,0,0,93,94,5,48,0,0,94,95,5,13,0,0,95,96,3,10,
      5,0,96,5,1,0,0,0,97,98,5,48,0,0,98,99,5,13,0,0,99,100,3,10,5,0,100,
      7,1,0,0,0,101,109,5,7,0,0,102,109,5,8,0,0,103,109,5,10,0,0,104,109,
      5,9,0,0,105,109,5,11,0,0,106,109,5,12,0,0,107,109,5,48,0,0,108,101,
      1,0,0,0,108,102,1,0,0,0,108,103,1,0,0,0,108,104,1,0,0,0,108,105,1,
      0,0,0,108,106,1,0,0,0,108,107,1,0,0,0,109,9,1,0,0,0,110,111,6,5,-1,
      0,111,177,5,17,0,0,112,177,5,15,0,0,113,177,5,16,0,0,114,177,5,18,
      0,0,115,122,5,34,0,0,116,118,3,10,5,0,117,119,5,38,0,0,118,117,1,0,
      0,0,118,119,1,0,0,0,119,121,1,0,0,0,120,116,1,0,0,0,121,124,1,0,0,
      0,122,120,1,0,0,0,122,123,1,0,0,0,123,125,1,0,0,0,124,122,1,0,0,0,
      125,177,5,35,0,0,126,127,5,20,0,0,127,177,3,10,5,10,128,129,5,19,0,
      0,129,177,3,10,5,9,130,131,5,31,0,0,131,177,3,10,5,8,132,133,5,19,
      0,0,133,134,5,19,0,0,134,177,5,48,0,0,135,136,5,20,0,0,136,137,5,20,
      0,0,137,177,5,48,0,0,138,139,5,32,0,0,139,140,3,10,5,0,140,141,5,33,
      0,0,141,177,1,0,0,0,142,177,5,48,0,0,143,144,5,48,0,0,144,150,5,32,
      0,0,145,146,3,10,5,0,146,147,5,38,0,0,147,149,1,0,0,0,148,145,1,0,
      0,0,149,152,1,0,0,0,150,148,1,0,0,0,150,151,1,0,0,0,151,154,1,0,0,
      0,152,150,1,0,0,0,153,155,3,10,5,0,154,153,1,0,0,0,154,155,1,0,0,0,
      155,156,1,0,0,0,156,177,5,33,0,0,157,158,5,48,0,0,158,159,5,39,0,0,
      159,177,5,48,0,0,160,161,5,48,0,0,161,162,5,39,0,0,162,163,5,48,0,
      0,163,169,5,32,0,0,164,165,3,10,5,0,165,166,5,38,0,0,166,168,1,0,0,
      0,167,164,1,0,0,0,168,171,1,0,0,0,169,167,1,0,0,0,169,170,1,0,0,0,
      170,173,1,0,0,0,171,169,1,0,0,0,172,174,3,10,5,0,173,172,1,0,0,0,173,
      174,1,0,0,0,174,175,1,0,0,0,175,177,5,33,0,0,176,110,1,0,0,0,176,112,
      1,0,0,0,176,113,1,0,0,0,176,114,1,0,0,0,176,115,1,0,0,0,176,126,1,
      0,0,0,176,128,1,0,0,0,176,130,1,0,0,0,176,132,1,0,0,0,176,135,1,0,
      0,0,176,138,1,0,0,0,176,142,1,0,0,0,176,143,1,0,0,0,176,157,1,0,0,
      0,176,160,1,0,0,0,177,213,1,0,0,0,178,179,10,21,0,0,179,180,5,19,0,
      0,180,212,3,10,5,22,181,182,10,20,0,0,182,183,5,20,0,0,183,212,3,10,
      5,21,184,185,10,19,0,0,185,186,5,22,0,0,186,212,3,10,5,20,187,188,
      10,18,0,0,188,189,5,21,0,0,189,212,3,10,5,19,190,191,10,17,0,0,191,
      192,5,29,0,0,192,212,3,10,5,18,193,194,10,16,0,0,194,195,5,30,0,0,
      195,212,3,10,5,17,196,197,10,15,0,0,197,198,5,26,0,0,198,212,3,10,
      5,16,199,200,10,14,0,0,200,201,5,27,0,0,201,212,3,10,5,15,202,203,
      10,13,0,0,203,204,5,24,0,0,204,212,3,10,5,14,205,206,10,12,0,0,206,
      207,5,25,0,0,207,212,3,10,5,13,208,209,10,11,0,0,209,210,5,28,0,0,
      210,212,3,10,5,12,211,178,1,0,0,0,211,181,1,0,0,0,211,184,1,0,0,0,
      211,187,1,0,0,0,211,190,1,0,0,0,211,193,1,0,0,0,211,196,1,0,0,0,211,
      199,1,0,0,0,211,202,1,0,0,0,211,205,1,0,0,0,211,208,1,0,0,0,212,215,
      1,0,0,0,213,211,1,0,0,0,213,214,1,0,0,0,214,11,1,0,0,0,215,213,1,0,
      0,0,216,217,3,8,4,0,217,218,5,48,0,0,218,224,5,32,0,0,219,220,3,14,
      7,0,220,221,5,38,0,0,221,223,1,0,0,0,222,219,1,0,0,0,223,226,1,0,0,
      0,224,222,1,0,0,0,224,225,1,0,0,0,225,228,1,0,0,0,226,224,1,0,0,0,
      227,229,3,14,7,0,228,227,1,0,0,0,228,229,1,0,0,0,229,230,1,0,0,0,230,
      231,5,33,0,0,231,232,3,16,8,0,232,13,1,0,0,0,233,237,3,8,4,0,234,235,
      5,6,0,0,235,237,5,39,0,0,236,233,1,0,0,0,236,234,1,0,0,0,237,238,1,
      0,0,0,238,239,5,48,0,0,239,15,1,0,0,0,240,244,5,36,0,0,241,243,3,2,
      1,0,242,241,1,0,0,0,243,246,1,0,0,0,244,242,1,0,0,0,244,245,1,0,0,
      0,245,247,1,0,0,0,246,244,1,0,0,0,247,248,5,37,0,0,248,17,1,0,0,0,
      249,250,5,5,0,0,250,253,5,48,0,0,251,252,5,42,0,0,252,254,5,48,0,0,
      253,251,1,0,0,0,253,254,1,0,0,0,254,255,1,0,0,0,255,259,5,36,0,0,256,
      258,3,20,10,0,257,256,1,0,0,0,258,261,1,0,0,0,259,257,1,0,0,0,259,
      260,1,0,0,0,260,262,1,0,0,0,261,259,1,0,0,0,262,263,5,37,0,0,263,19,
      1,0,0,0,264,265,3,8,4,0,265,268,5,48,0,0,266,267,5,13,0,0,267,269,
      3,10,5,0,268,266,1,0,0,0,268,269,1,0,0,0,269,270,1,0,0,0,270,271,5,
      14,0,0,271,326,1,0,0,0,272,274,5,3,0,0,273,275,3,8,4,0,274,273,1,0,
      0,0,274,275,1,0,0,0,275,276,1,0,0,0,276,279,5,48,0,0,277,278,5,13,
      0,0,278,280,3,10,5,0,279,277,1,0,0,0,279,280,1,0,0,0,280,281,1,0,0,
      0,281,326,5,14,0,0,282,283,5,48,0,0,283,289,5,32,0,0,284,285,3,14,
      7,0,285,286,5,38,0,0,286,288,1,0,0,0,287,284,1,0,0,0,288,291,1,0,0,
      0,289,287,1,0,0,0,289,290,1,0,0,0,290,293,1,0,0,0,291,289,1,0,0,0,
      292,294,3,14,7,0,293,292,1,0,0,0,293,294,1,0,0,0,294,295,1,0,0,0,295,
      298,5,33,0,0,296,299,3,16,8,0,297,299,5,14,0,0,298,296,1,0,0,0,298,
      297,1,0,0,0,299,326,1,0,0,0,300,301,5,48,0,0,301,302,5,39,0,0,302,
      303,5,48,0,0,303,309,5,32,0,0,304,305,3,14,7,0,305,306,5,38,0,0,306,
      308,1,0,0,0,307,304,1,0,0,0,308,311,1,0,0,0,309,307,1,0,0,0,309,310,
      1,0,0,0,310,313,1,0,0,0,311,309,1,0,0,0,312,314,3,14,7,0,313,312,1,
      0,0,0,313,314,1,0,0,0,314,315,1,0,0,0,315,318,5,33,0,0,316,317,5,40,
      0,0,317,319,3,22,11,0,318,316,1,0,0,0,318,319,1,0,0,0,319,322,1,0,
      0,0,320,323,3,16,8,0,321,323,5,14,0,0,322,320,1,0,0,0,322,321,1,0,
      0,0,323,326,1,0,0,0,324,326,3,12,6,0,325,264,1,0,0,0,325,272,1,0,0,
      0,325,282,1,0,0,0,325,300,1,0,0,0,325,324,1,0,0,0,326,21,1,0,0,0,327,
      328,5,6,0,0,328,334,5,32,0,0,329,330,3,10,5,0,330,331,5,38,0,0,331,
      333,1,0,0,0,332,329,1,0,0,0,333,336,1,0,0,0,334,332,1,0,0,0,334,335,
      1,0,0,0,335,341,1,0,0,0,336,334,1,0,0,0,337,339,3,10,5,0,338,340,5,
      38,0,0,339,338,1,0,0,0,339,340,1,0,0,0,340,342,1,0,0,0,341,337,1,0,
      0,0,341,342,1,0,0,0,342,343,1,0,0,0,343,344,5,33,0,0,344,23,1,0,0,
      0,345,346,5,43,0,0,346,347,5,32,0,0,347,348,3,10,5,0,348,349,5,33,
      0,0,349,353,5,36,0,0,350,352,3,2,1,0,351,350,1,0,0,0,352,355,1,0,0,
      0,353,351,1,0,0,0,353,354,1,0,0,0,354,356,1,0,0,0,355,353,1,0,0,0,
      356,357,5,37,0,0,357,25,1,0,0,0,358,359,5,44,0,0,359,360,5,43,0,0,
      360,361,5,32,0,0,361,362,3,10,5,0,362,363,5,33,0,0,363,367,5,36,0,
      0,364,366,3,2,1,0,365,364,1,0,0,0,366,369,1,0,0,0,367,365,1,0,0,0,
      367,368,1,0,0,0,368,370,1,0,0,0,369,367,1,0,0,0,370,371,5,37,0,0,371,
      27,1,0,0,0,372,373,5,44,0,0,373,377,5,36,0,0,374,376,3,2,1,0,375,374,
      1,0,0,0,376,379,1,0,0,0,377,375,1,0,0,0,377,378,1,0,0,0,378,380,1,
      0,0,0,379,377,1,0,0,0,380,381,5,37,0,0,381,29,1,0,0,0,382,386,3,24,
      12,0,383,385,3,26,13,0,384,383,1,0,0,0,385,388,1,0,0,0,386,384,1,0,
      0,0,386,387,1,0,0,0,387,390,1,0,0,0,388,386,1,0,0,0,389,391,3,28,14,
      0,390,389,1,0,0,0,390,391,1,0,0,0,391,31,1,0,0,0,392,393,5,45,0,0,
      393,394,5,32,0,0,394,395,3,10,5,0,395,396,5,33,0,0,396,397,3,16,8,
      0,397,33,1,0,0,0,398,401,3,4,2,0,399,401,3,6,3,0,400,398,1,0,0,0,400,
      399,1,0,0,0,401,35,1,0,0,0,402,405,5,2,0,0,403,405,3,8,4,0,404,402,
      1,0,0,0,404,403,1,0,0,0,405,406,1,0,0,0,406,407,5,48,0,0,407,37,1,
      0,0,0,408,409,5,32,0,0,409,410,3,34,17,0,410,411,5,14,0,0,411,412,
      3,10,5,0,412,413,5,14,0,0,413,414,3,10,5,0,414,415,5,33,0,0,415,422,
      1,0,0,0,416,417,5,32,0,0,417,418,3,36,18,0,418,419,5,47,0,0,419,420,
      3,10,5,0,420,422,1,0,0,0,421,408,1,0,0,0,421,416,1,0,0,0,422,39,1,
      0,0,0,423,424,5,46,0,0,424,425,5,32,0,0,425,426,3,38,19,0,426,427,
      5,33,0,0,427,428,3,16,8,0,428,41,1,0,0,0,43,45,54,63,85,91,108,118,
      122,150,154,169,173,176,211,213,224,228,236,244,253,259,268,274,279,
      289,293,298,309,313,318,322,325,334,339,341,353,367,377,386,390,400,
      404,421
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

class VarDeclarationContext extends ParserRuleContext {
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  TerminalNode? ASSIGN() => getToken(DartParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? VAR() => getToken(DartParser.TOKEN_VAR, 0);
  TypeContext? type() => getRuleContext<TypeContext>(0);
  VarDeclarationContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_varDeclaration;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterVarDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitVarDeclaration(this);
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

class IfBlockContext extends ParserRuleContext {
  TerminalNode? IF() => getToken(DartParser.TOKEN_IF, 0);
  TerminalNode? PAREN_OPEN() => getToken(DartParser.TOKEN_PAREN_OPEN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? PAREN_CLOSE() => getToken(DartParser.TOKEN_PAREN_CLOSE, 0);
  TerminalNode? GRAPH_OPEN() => getToken(DartParser.TOKEN_GRAPH_OPEN, 0);
  TerminalNode? GRAPH_CLOSE() => getToken(DartParser.TOKEN_GRAPH_CLOSE, 0);
  List<StatementContext> statements() => getRuleContexts<StatementContext>();
  StatementContext? statement(int i) => getRuleContext<StatementContext>(i);
  IfBlockContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_ifBlock;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterIfBlock(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitIfBlock(this);
  }
}

class ElseIfBlockContext extends ParserRuleContext {
  TerminalNode? ELSE() => getToken(DartParser.TOKEN_ELSE, 0);
  TerminalNode? IF() => getToken(DartParser.TOKEN_IF, 0);
  TerminalNode? PAREN_OPEN() => getToken(DartParser.TOKEN_PAREN_OPEN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? PAREN_CLOSE() => getToken(DartParser.TOKEN_PAREN_CLOSE, 0);
  TerminalNode? GRAPH_OPEN() => getToken(DartParser.TOKEN_GRAPH_OPEN, 0);
  TerminalNode? GRAPH_CLOSE() => getToken(DartParser.TOKEN_GRAPH_CLOSE, 0);
  List<StatementContext> statements() => getRuleContexts<StatementContext>();
  StatementContext? statement(int i) => getRuleContext<StatementContext>(i);
  ElseIfBlockContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_elseIfBlock;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterElseIfBlock(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitElseIfBlock(this);
  }
}

class ElseBlockContext extends ParserRuleContext {
  TerminalNode? ELSE() => getToken(DartParser.TOKEN_ELSE, 0);
  TerminalNode? GRAPH_OPEN() => getToken(DartParser.TOKEN_GRAPH_OPEN, 0);
  TerminalNode? GRAPH_CLOSE() => getToken(DartParser.TOKEN_GRAPH_CLOSE, 0);
  List<StatementContext> statements() => getRuleContexts<StatementContext>();
  StatementContext? statement(int i) => getRuleContext<StatementContext>(i);
  ElseBlockContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_elseBlock;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterElseBlock(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitElseBlock(this);
  }
}

class IfDefinitionContext extends ParserRuleContext {
  IfBlockContext? ifBlock() => getRuleContext<IfBlockContext>(0);
  List<ElseIfBlockContext> elseIfBlocks() => getRuleContexts<ElseIfBlockContext>();
  ElseIfBlockContext? elseIfBlock(int i) => getRuleContext<ElseIfBlockContext>(i);
  ElseBlockContext? elseBlock() => getRuleContext<ElseBlockContext>(0);
  IfDefinitionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_ifDefinition;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterIfDefinition(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitIfDefinition(this);
  }
}

class WhileDefinitionContext extends ParserRuleContext {
  TerminalNode? WHILE() => getToken(DartParser.TOKEN_WHILE, 0);
  TerminalNode? PAREN_OPEN() => getToken(DartParser.TOKEN_PAREN_OPEN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? PAREN_CLOSE() => getToken(DartParser.TOKEN_PAREN_CLOSE, 0);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  WhileDefinitionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_whileDefinition;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterWhileDefinition(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitWhileDefinition(this);
  }
}

class InitializationForExpressionContext extends ParserRuleContext {
  VarDeclarationContext? varDeclaration() => getRuleContext<VarDeclarationContext>(0);
  AssigmentContext? assigment() => getRuleContext<AssigmentContext>(0);
  InitializationForExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_initializationForExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterInitializationForExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitInitializationForExpression(this);
  }
}

class ItemDefinitionContext extends ParserRuleContext {
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  TerminalNode? VAR() => getToken(DartParser.TOKEN_VAR, 0);
  TypeContext? type() => getRuleContext<TypeContext>(0);
  ItemDefinitionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_itemDefinition;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterItemDefinition(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitItemDefinition(this);
  }
}

class ForConditionContext extends ParserRuleContext {
  ForConditionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_forCondition;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class ForDefinitionContext extends ParserRuleContext {
  TerminalNode? FOR() => getToken(DartParser.TOKEN_FOR, 0);
  TerminalNode? PAREN_OPEN() => getToken(DartParser.TOKEN_PAREN_OPEN, 0);
  ForConditionContext? forCondition() => getRuleContext<ForConditionContext>(0);
  TerminalNode? PAREN_CLOSE() => getToken(DartParser.TOKEN_PAREN_CLOSE, 0);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  ForDefinitionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_forDefinition;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterForDefinition(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitForDefinition(this);
  }
}

class VarDeclarationStatementContext extends StatementContext {
  VarDeclarationContext? varDeclaration() => getRuleContext<VarDeclarationContext>(0);
  TerminalNode? SEMICOLON() => getToken(DartParser.TOKEN_SEMICOLON, 0);
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

class IfStatementContext extends StatementContext {
  IfDefinitionContext? ifDefinition() => getRuleContext<IfDefinitionContext>(0);
  IfStatementContext(StatementContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterIfStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitIfStatement(this);
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

class WhileStatementContext extends StatementContext {
  WhileDefinitionContext? whileDefinition() => getRuleContext<WhileDefinitionContext>(0);
  WhileStatementContext(StatementContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterWhileStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitWhileStatement(this);
  }
}

class ForStatementContext extends StatementContext {
  ForDefinitionContext? forDefinition() => getRuleContext<ForDefinitionContext>(0);
  ForStatementContext(StatementContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterForStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitForStatement(this);
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
  AssigmentContext? assigment() => getRuleContext<AssigmentContext>(0);
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

class ListTypeContext extends TypeContext {
  TerminalNode? LIST() => getToken(DartParser.TOKEN_LIST, 0);
  ListTypeContext(TypeContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterListType(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitListType(this);
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

class DecrementExpressionContext extends ExpressionContext {
  List<TerminalNode> MINUSs() => getTokens(DartParser.TOKEN_MINUS);
  TerminalNode? MINUS(int i) => getToken(DartParser.TOKEN_MINUS, i);
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  DecrementExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterDecrementExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitDecrementExpression(this);
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

class ListLiteralExpressionContext extends ExpressionContext {
  TerminalNode? SQUARE_OPEN() => getToken(DartParser.TOKEN_SQUARE_OPEN, 0);
  TerminalNode? SQUARE_CLOSE() => getToken(DartParser.TOKEN_SQUARE_CLOSE, 0);
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  List<TerminalNode> COMMAs() => getTokens(DartParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(DartParser.TOKEN_COMMA, i);
  ListLiteralExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterListLiteralExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitListLiteralExpression(this);
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

class IncrementExpressionContext extends ExpressionContext {
  List<TerminalNode> PLUSs() => getTokens(DartParser.TOKEN_PLUS);
  TerminalNode? PLUS(int i) => getToken(DartParser.TOKEN_PLUS, i);
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  IncrementExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterIncrementExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitIncrementExpression(this);
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
}class StandardForConditionContext extends ForConditionContext {
  TerminalNode? PAREN_OPEN() => getToken(DartParser.TOKEN_PAREN_OPEN, 0);
  InitializationForExpressionContext? initializationForExpression() => getRuleContext<InitializationForExpressionContext>(0);
  List<TerminalNode> SEMICOLONs() => getTokens(DartParser.TOKEN_SEMICOLON);
  TerminalNode? SEMICOLON(int i) => getToken(DartParser.TOKEN_SEMICOLON, i);
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode? PAREN_CLOSE() => getToken(DartParser.TOKEN_PAREN_CLOSE, 0);
  StandardForConditionContext(ForConditionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterStandardForCondition(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitStandardForCondition(this);
  }
}

class ForEachConditionContext extends ForConditionContext {
  TerminalNode? PAREN_OPEN() => getToken(DartParser.TOKEN_PAREN_OPEN, 0);
  ItemDefinitionContext? itemDefinition() => getRuleContext<ItemDefinitionContext>(0);
  TerminalNode? IN() => getToken(DartParser.TOKEN_IN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  ForEachConditionContext(ForConditionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterForEachCondition(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitForEachCondition(this);
  }
}