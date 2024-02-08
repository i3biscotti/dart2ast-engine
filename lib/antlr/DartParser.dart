// Generated from d://Progetti personali//dart2kotlin//dart2ast_engine//antrl4//DartParser.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'DartParserListener.dart';
import 'DartParserBaseListener.dart';
const int RULE_dartFile = 0, RULE_statement = 1, RULE_varDeclaration = 2, 
          RULE_assignment = 3, RULE_type = 4, RULE_expression = 5, RULE_functionDefinition = 6, 
          RULE_parameter = 7, RULE_block = 8, RULE_classDefinition = 9, 
          RULE_classStatement = 10, RULE_thisConstructorCall = 11, RULE_ifBlock = 12, 
          RULE_elseIfBlock = 13, RULE_elseBlock = 14, RULE_ifDefinition = 15, 
          RULE_whileDefinition = 16, RULE_forInitOrIncrementStatement = 17, 
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
    'dartFile', 'statement', 'varDeclaration', 'assignment', 'type', 'expression', 
    'functionDefinition', 'parameter', 'block', 'classDefinition', 'classStatement', 
    'thisConstructorCall', 'ifBlock', 'elseIfBlock', 'elseBlock', 'ifDefinition', 
    'whileDefinition', 'forInitOrIncrementStatement', 'itemDefinition', 
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
      state = 92;
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
        _localctx = AssignmentStatementContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 70;
        assignment();
        state = 71;
        match(TOKEN_SEMICOLON);
        break;
      case 5:
        _localctx = ObjectPropertyAssignmentStatementContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 73;
        _localctx.objectName = match(TOKEN_ID);
        state = 74;
        match(TOKEN_DOT);
        state = 75;
        _localctx.propertyName = match(TOKEN_ID);
        state = 76;
        match(TOKEN_ASSIGN);
        state = 77;
        expression(0);
        state = 78;
        match(TOKEN_SEMICOLON);
        break;
      case 6:
        _localctx = FunctionDefinitionStatementContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 80;
        functionDefinition();
        break;
      case 7:
        _localctx = ClassDefinitionStatementContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 81;
        classDefinition();
        break;
      case 8:
        _localctx = ExpressionDefinitionStatementContext(_localctx);
        enterOuterAlt(_localctx, 8);
        state = 82;
        expression(0);
        state = 83;
        match(TOKEN_SEMICOLON);
        break;
      case 9:
        _localctx = ReturnStatementContext(_localctx);
        enterOuterAlt(_localctx, 9);
        state = 85;
        match(TOKEN_RETURN);
        state = 86;
        expression(0);
        state = 87;
        match(TOKEN_SEMICOLON);
        break;
      case 10:
        _localctx = IfDefinitionStatementContext(_localctx);
        enterOuterAlt(_localctx, 10);
        state = 89;
        ifDefinition();
        break;
      case 11:
        _localctx = WhileDefinitionStatementContext(_localctx);
        enterOuterAlt(_localctx, 11);
        state = 90;
        whileDefinition();
        break;
      case 12:
        _localctx = ForDefinitionStatementContext(_localctx);
        enterOuterAlt(_localctx, 12);
        state = 91;
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
      state = 98;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 4, context)) {
      case 1:
        state = 94;
        match(TOKEN_VAR);
        break;
      case 2:
        state = 95;
        match(TOKEN_VAR);
        state = 96;
        type();
        break;
      case 3:
        state = 97;
        type();
        break;
      }
      state = 100;
      match(TOKEN_ID);
      state = 101;
      match(TOKEN_ASSIGN);
      state = 102;
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

  AssignmentContext assignment() {
    dynamic _localctx = AssignmentContext(context, state);
    enterRule(_localctx, 6, RULE_assignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 104;
      match(TOKEN_ID);
      state = 105;
      match(TOKEN_ASSIGN);
      state = 106;
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
      state = 115;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_INT:
        _localctx = IntTypeContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 108;
        match(TOKEN_INT);
        break;
      case TOKEN_DOUBLE:
        _localctx = DoubleTypeContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 109;
        match(TOKEN_DOUBLE);
        break;
      case TOKEN_BOOL:
        _localctx = BoolTypeContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 110;
        match(TOKEN_BOOL);
        break;
      case TOKEN_STRING:
        _localctx = StringTypeContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 111;
        match(TOKEN_STRING);
        break;
      case TOKEN_VOID:
        _localctx = VoidTypeContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 112;
        match(TOKEN_VOID);
        break;
      case TOKEN_LIST:
        _localctx = ListTypeContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 113;
        match(TOKEN_LIST);
        break;
      case TOKEN_ID:
        _localctx = CustomTypeContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 114;
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
      state = 183;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 12, context)) {
      case 1:
        _localctx = BoolLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;

        state = 118;
        match(TOKEN_BOOLLIT);
        break;
      case 2:
        _localctx = IntLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 119;
        match(TOKEN_INTLIT);
        break;
      case 3:
        _localctx = DoubleLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 120;
        match(TOKEN_DOUBLELIT);
        break;
      case 4:
        _localctx = StringLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 121;
        match(TOKEN_STRINGLIT);
        break;
      case 5:
        _localctx = ListLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 122;
        match(TOKEN_SQUARE_OPEN);
        state = 129;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 281498601095168) != 0)) {
          state = 123;
          expression(0);
          state = 125;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_COMMA) {
            state = 124;
            match(TOKEN_COMMA);
          }

          state = 131;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 132;
        match(TOKEN_SQUARE_CLOSE);
        break;
      case 6:
        _localctx = UnaryMathExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 133;
        _localctx.operand = match(TOKEN_MINUS);
        state = 134;
        _localctx.value = expression(10);
        break;
      case 7:
        _localctx = UnaryMathExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 135;
        _localctx.operand = match(TOKEN_PLUS);
        state = 136;
        _localctx.value = expression(9);
        break;
      case 8:
        _localctx = UnaryLogicNegationExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 137;
        _localctx.operand = match(TOKEN_NOT);
        state = 138;
        _localctx.value = expression(8);
        break;
      case 9:
        _localctx = IncrementExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 139;
        match(TOKEN_ID);
        state = 140;
        match(TOKEN_PLUS);
        state = 141;
        match(TOKEN_PLUS);
        break;
      case 10:
        _localctx = DecrementExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 142;
        match(TOKEN_ID);
        state = 143;
        match(TOKEN_MINUS);
        state = 144;
        match(TOKEN_MINUS);
        break;
      case 11:
        _localctx = ParenthesysExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 145;
        match(TOKEN_PAREN_OPEN);
        state = 146;
        _localctx.value = expression(0);
        state = 147;
        match(TOKEN_PAREN_CLOSE);
        break;
      case 12:
        _localctx = VarReferenceExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 149;
        match(TOKEN_ID);
        break;
      case 13:
        _localctx = FunctionCallExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 150;
        match(TOKEN_ID);
        state = 151;
        match(TOKEN_PAREN_OPEN);
        state = 157;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 8, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 152;
            expression(0);
            state = 153;
            match(TOKEN_COMMA); 
          }
          state = 159;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 8, context);
        }
        state = 161;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 281498601095168) != 0)) {
          state = 160;
          expression(0);
        }

        state = 163;
        match(TOKEN_PAREN_CLOSE);
        break;
      case 14:
        _localctx = ObjectPropertyReferenceExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 164;
        match(TOKEN_ID);
        state = 165;
        match(TOKEN_DOT);
        state = 166;
        match(TOKEN_ID);
        break;
      case 15:
        _localctx = ObjectMethodCallExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 167;
        _localctx.objectName = match(TOKEN_ID);
        state = 168;
        match(TOKEN_DOT);
        state = 169;
        _localctx.methodName = match(TOKEN_ID);
        state = 170;
        match(TOKEN_PAREN_OPEN);
        state = 176;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 10, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 171;
            expression(0);
            state = 172;
            match(TOKEN_COMMA); 
          }
          state = 178;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 10, context);
        }
        state = 180;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 281498601095168) != 0)) {
          state = 179;
          expression(0);
        }

        state = 182;
        match(TOKEN_PAREN_CLOSE);
        break;
      }
      context!.stop = tokenStream.LT(-1);
      state = 220;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 14, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 218;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 13, context)) {
          case 1:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 185;
            if (!(precpred(context, 21))) {
              throw FailedPredicateException(this, "precpred(context, 21)");
            }
            state = 186;
            _localctx.operand = match(TOKEN_PLUS);
            state = 187;
            _localctx.right = expression(22);
            break;
          case 2:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 188;
            if (!(precpred(context, 20))) {
              throw FailedPredicateException(this, "precpred(context, 20)");
            }
            state = 189;
            _localctx.operand = match(TOKEN_MINUS);
            state = 190;
            _localctx.right = expression(21);
            break;
          case 3:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 191;
            if (!(precpred(context, 19))) {
              throw FailedPredicateException(this, "precpred(context, 19)");
            }
            state = 192;
            _localctx.operand = match(TOKEN_TIMES);
            state = 193;
            _localctx.right = expression(20);
            break;
          case 4:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 194;
            if (!(precpred(context, 18))) {
              throw FailedPredicateException(this, "precpred(context, 18)");
            }
            state = 195;
            _localctx.operand = match(TOKEN_DIVISION);
            state = 196;
            _localctx.right = expression(19);
            break;
          case 5:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 197;
            if (!(precpred(context, 17))) {
              throw FailedPredicateException(this, "precpred(context, 17)");
            }
            state = 198;
            _localctx.operand = match(TOKEN_AND);
            state = 199;
            _localctx.right = expression(18);
            break;
          case 6:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 200;
            if (!(precpred(context, 16))) {
              throw FailedPredicateException(this, "precpred(context, 16)");
            }
            state = 201;
            _localctx.operand = match(TOKEN_OR);
            state = 202;
            _localctx.right = expression(17);
            break;
          case 7:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 203;
            if (!(precpred(context, 15))) {
              throw FailedPredicateException(this, "precpred(context, 15)");
            }
            state = 204;
            _localctx.operand = match(TOKEN_GREATER_THAN);
            state = 205;
            _localctx.right = expression(16);
            break;
          case 8:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 206;
            if (!(precpred(context, 14))) {
              throw FailedPredicateException(this, "precpred(context, 14)");
            }
            state = 207;
            _localctx.operand = match(TOKEN_LOWER_THAN);
            state = 208;
            _localctx.right = expression(15);
            break;
          case 9:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 209;
            if (!(precpred(context, 13))) {
              throw FailedPredicateException(this, "precpred(context, 13)");
            }
            state = 210;
            _localctx.operand = match(TOKEN_GREATER_EQUAL_THAN);
            state = 211;
            _localctx.right = expression(14);
            break;
          case 10:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 212;
            if (!(precpred(context, 12))) {
              throw FailedPredicateException(this, "precpred(context, 12)");
            }
            state = 213;
            _localctx.operand = match(TOKEN_LOWER_EQUAL_THAN);
            state = 214;
            _localctx.right = expression(13);
            break;
          case 11:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 215;
            if (!(precpred(context, 11))) {
              throw FailedPredicateException(this, "precpred(context, 11)");
            }
            state = 216;
            _localctx.operand = match(TOKEN_EQUAL);
            state = 217;
            _localctx.right = expression(12);
            break;
          } 
        }
        state = 222;
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
      state = 223;
      _localctx.returnType = type();
      state = 224;
      _localctx.name = match(TOKEN_ID);
      state = 225;
      match(TOKEN_PAREN_OPEN);
      state = 231;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 15, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 226;
          parameter();
          state = 227;
          match(TOKEN_COMMA); 
        }
        state = 233;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 15, context);
      }
      state = 235;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 281474976718784) != 0)) {
        state = 234;
        parameter();
      }

      state = 237;
      match(TOKEN_PAREN_CLOSE);
      state = 238;
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
      state = 243;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_INT:
      case TOKEN_DOUBLE:
      case TOKEN_STRING:
      case TOKEN_BOOL:
      case TOKEN_VOID:
      case TOKEN_LIST:
      case TOKEN_ID:
        state = 240;
        type();
        break;
      case TOKEN_THIS:
        state = 241;
        match(TOKEN_THIS);
        state = 242;
        match(TOKEN_DOT);
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 245;
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
      state = 247;
      match(TOKEN_GRAPH_OPEN);
      state = 251;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 398046833647548) != 0)) {
        state = 248;
        statement();
        state = 253;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 254;
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
      state = 256;
      match(TOKEN_CLASS);
      state = 257;
      _localctx.name = match(TOKEN_ID);
      state = 260;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_EXTENDS) {
        state = 258;
        match(TOKEN_EXTENDS);
        state = 259;
        _localctx.parentName = match(TOKEN_ID);
      }

      state = 262;
      match(TOKEN_GRAPH_OPEN);
      state = 266;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 281474976718728) != 0)) {
        state = 263;
        classStatement();
        state = 268;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 269;
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
      state = 332;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 31, context)) {
      case 1:
        _localctx = ClassVarDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 271;
        type();
        state = 272;
        match(TOKEN_ID);
        state = 275;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_ASSIGN) {
          state = 273;
          match(TOKEN_ASSIGN);
          state = 274;
          expression(0);
        }

        state = 277;
        match(TOKEN_SEMICOLON);
        break;
      case 2:
        _localctx = ClassImmutableVarDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 279;
        match(TOKEN_FINAL);
        state = 281;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 22, context)) {
        case 1:
          state = 280;
          type();
          break;
        }
        state = 283;
        match(TOKEN_ID);
        state = 286;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_ASSIGN) {
          state = 284;
          match(TOKEN_ASSIGN);
          state = 285;
          expression(0);
        }

        state = 288;
        match(TOKEN_SEMICOLON);
        break;
      case 3:
        _localctx = MainClassConstructorDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 289;
        _localctx.className = match(TOKEN_ID);
        state = 290;
        match(TOKEN_PAREN_OPEN);
        state = 296;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 24, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 291;
            parameter();
            state = 292;
            match(TOKEN_COMMA); 
          }
          state = 298;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 24, context);
        }
        state = 300;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 281474976718784) != 0)) {
          state = 299;
          parameter();
        }

        state = 302;
        match(TOKEN_PAREN_CLOSE);
        state = 305;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_GRAPH_OPEN:
          state = 303;
          block();
          break;
        case TOKEN_SEMICOLON:
          state = 304;
          match(TOKEN_SEMICOLON);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case 4:
        _localctx = NamedClassConstructorDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 307;
        _localctx.className = match(TOKEN_ID);
        state = 308;
        match(TOKEN_DOT);
        state = 309;
        _localctx.costructorName = match(TOKEN_ID);
        state = 310;
        match(TOKEN_PAREN_OPEN);
        state = 316;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 27, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 311;
            parameter();
            state = 312;
            match(TOKEN_COMMA); 
          }
          state = 318;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 27, context);
        }
        state = 320;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 281474976718784) != 0)) {
          state = 319;
          parameter();
        }

        state = 322;
        match(TOKEN_PAREN_CLOSE);
        state = 325;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_COLONS) {
          state = 323;
          match(TOKEN_COLONS);
          state = 324;
          thisConstructorCall();
        }

        state = 329;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_GRAPH_OPEN:
          state = 327;
          block();
          break;
        case TOKEN_SEMICOLON:
          state = 328;
          match(TOKEN_SEMICOLON);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case 5:
        _localctx = ClassMethodDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 331;
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
      state = 334;
      match(TOKEN_THIS);
      state = 335;
      match(TOKEN_PAREN_OPEN);
      state = 341;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 32, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 336;
          expression(0);
          state = 337;
          match(TOKEN_COMMA); 
        }
        state = 343;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 32, context);
      }
      state = 348;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 281498601095168) != 0)) {
        state = 344;
        expression(0);
        state = 346;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_COMMA) {
          state = 345;
          match(TOKEN_COMMA);
        }

      }

      state = 350;
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
    try {
      enterOuterAlt(_localctx, 1);
      state = 352;
      match(TOKEN_IF);
      state = 353;
      match(TOKEN_PAREN_OPEN);
      state = 354;
      expression(0);
      state = 355;
      match(TOKEN_PAREN_CLOSE);
      state = 356;
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

  ElseIfBlockContext elseIfBlock() {
    dynamic _localctx = ElseIfBlockContext(context, state);
    enterRule(_localctx, 26, RULE_elseIfBlock);
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

  ElseBlockContext elseBlock() {
    dynamic _localctx = ElseBlockContext(context, state);
    enterRule(_localctx, 28, RULE_elseBlock);
    try {
      enterOuterAlt(_localctx, 1);
      state = 365;
      match(TOKEN_ELSE);
      state = 366;
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

  IfDefinitionContext ifDefinition() {
    dynamic _localctx = IfDefinitionContext(context, state);
    enterRule(_localctx, 30, RULE_ifDefinition);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 368;
      ifBlock();
      state = 372;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 35, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 369;
          elseIfBlock(); 
        }
        state = 374;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 35, context);
      }
      state = 376;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_ELSE) {
        state = 375;
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
      state = 378;
      match(TOKEN_WHILE);
      state = 379;
      match(TOKEN_PAREN_OPEN);
      state = 380;
      expression(0);
      state = 381;
      match(TOKEN_PAREN_CLOSE);
      state = 382;
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

  ForInitOrIncrementStatementContext forInitOrIncrementStatement() {
    dynamic _localctx = ForInitOrIncrementStatementContext(context, state);
    enterRule(_localctx, 34, RULE_forInitOrIncrementStatement);
    try {
      state = 387;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 37, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 384;
        varDeclaration();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 385;
        assignment();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 386;
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

  ItemDefinitionContext itemDefinition() {
    dynamic _localctx = ItemDefinitionContext(context, state);
    enterRule(_localctx, 36, RULE_itemDefinition);
    try {
      enterOuterAlt(_localctx, 1);
      state = 391;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_VAR:
        state = 389;
        match(TOKEN_VAR);
        break;
      case TOKEN_INT:
      case TOKEN_DOUBLE:
      case TOKEN_STRING:
      case TOKEN_BOOL:
      case TOKEN_VOID:
      case TOKEN_LIST:
      case TOKEN_ID:
        state = 390;
        type();
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 393;
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
      state = 405;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 39, context)) {
      case 1:
        _localctx = StandardForConditionContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 395;
        forInitOrIncrementStatement();
        state = 396;
        match(TOKEN_SEMICOLON);
        state = 397;
        expression(0);
        state = 398;
        match(TOKEN_SEMICOLON);
        state = 399;
        forInitOrIncrementStatement();
        break;
      case 2:
        _localctx = ForEachConditionContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 401;
        itemDefinition();
        state = 402;
        match(TOKEN_IN);
        state = 403;
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
      state = 407;
      match(TOKEN_FOR);
      state = 408;
      match(TOKEN_PAREN_OPEN);
      state = 409;
      forCondition();
      state = 410;
      match(TOKEN_PAREN_CLOSE);
      state = 411;
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
      4,1,49,414,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,
      14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,
      1,0,4,0,44,8,0,11,0,12,0,45,1,0,1,0,1,1,1,1,1,1,1,1,1,1,3,1,55,8,1,
      1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,64,8,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
      1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
      1,1,1,1,1,1,1,3,1,93,8,1,1,2,1,2,1,2,1,2,3,2,99,8,2,1,2,1,2,1,2,1,
      2,1,3,1,3,1,3,1,3,1,4,1,4,1,4,1,4,1,4,1,4,1,4,3,4,116,8,4,1,5,1,5,
      1,5,1,5,1,5,1,5,1,5,1,5,3,5,126,8,5,5,5,128,8,5,10,5,12,5,131,9,5,
      1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,
      5,1,5,1,5,1,5,1,5,1,5,1,5,5,5,156,8,5,10,5,12,5,159,9,5,1,5,3,5,162,
      8,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,5,5,175,8,5,10,5,12,
      5,178,9,5,1,5,3,5,181,8,5,1,5,3,5,184,8,5,1,5,1,5,1,5,1,5,1,5,1,5,
      1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,
      5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,5,5,219,8,5,10,5,12,5,222,
      9,5,1,6,1,6,1,6,1,6,1,6,1,6,5,6,230,8,6,10,6,12,6,233,9,6,1,6,3,6,
      236,8,6,1,6,1,6,1,6,1,7,1,7,1,7,3,7,244,8,7,1,7,1,7,1,8,1,8,5,8,250,
      8,8,10,8,12,8,253,9,8,1,8,1,8,1,9,1,9,1,9,1,9,3,9,261,8,9,1,9,1,9,
      5,9,265,8,9,10,9,12,9,268,9,9,1,9,1,9,1,10,1,10,1,10,1,10,3,10,276,
      8,10,1,10,1,10,1,10,1,10,3,10,282,8,10,1,10,1,10,1,10,3,10,287,8,10,
      1,10,1,10,1,10,1,10,1,10,1,10,5,10,295,8,10,10,10,12,10,298,9,10,1,
      10,3,10,301,8,10,1,10,1,10,1,10,3,10,306,8,10,1,10,1,10,1,10,1,10,
      1,10,1,10,1,10,5,10,315,8,10,10,10,12,10,318,9,10,1,10,3,10,321,8,
      10,1,10,1,10,1,10,3,10,326,8,10,1,10,1,10,3,10,330,8,10,1,10,3,10,
      333,8,10,1,11,1,11,1,11,1,11,1,11,5,11,340,8,11,10,11,12,11,343,9,
      11,1,11,1,11,3,11,347,8,11,3,11,349,8,11,1,11,1,11,1,12,1,12,1,12,
      1,12,1,12,1,12,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,14,1,14,1,14,1,
      15,1,15,5,15,371,8,15,10,15,12,15,374,9,15,1,15,3,15,377,8,15,1,16,
      1,16,1,16,1,16,1,16,1,16,1,17,1,17,1,17,3,17,388,8,17,1,18,1,18,3,
      18,392,8,18,1,18,1,18,1,19,1,19,1,19,1,19,1,19,1,19,1,19,1,19,1,19,
      1,19,3,19,406,8,19,1,20,1,20,1,20,1,20,1,20,1,20,1,20,0,1,10,21,0,
      2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,0,0,474,0,
      43,1,0,0,0,2,92,1,0,0,0,4,98,1,0,0,0,6,104,1,0,0,0,8,115,1,0,0,0,10,
      183,1,0,0,0,12,223,1,0,0,0,14,243,1,0,0,0,16,247,1,0,0,0,18,256,1,
      0,0,0,20,332,1,0,0,0,22,334,1,0,0,0,24,352,1,0,0,0,26,358,1,0,0,0,
      28,365,1,0,0,0,30,368,1,0,0,0,32,378,1,0,0,0,34,387,1,0,0,0,36,391,
      1,0,0,0,38,405,1,0,0,0,40,407,1,0,0,0,42,44,3,2,1,0,43,42,1,0,0,0,
      44,45,1,0,0,0,45,43,1,0,0,0,45,46,1,0,0,0,46,47,1,0,0,0,47,48,5,0,
      0,1,48,1,1,0,0,0,49,50,3,4,2,0,50,51,5,14,0,0,51,93,1,0,0,0,52,54,
      5,3,0,0,53,55,3,8,4,0,54,53,1,0,0,0,54,55,1,0,0,0,55,56,1,0,0,0,56,
      57,5,48,0,0,57,58,5,13,0,0,58,59,3,10,5,0,59,60,5,14,0,0,60,93,1,0,
      0,0,61,63,5,4,0,0,62,64,3,8,4,0,63,62,1,0,0,0,63,64,1,0,0,0,64,65,
      1,0,0,0,65,66,5,48,0,0,66,67,5,13,0,0,67,68,3,10,5,0,68,69,5,14,0,
      0,69,93,1,0,0,0,70,71,3,6,3,0,71,72,5,14,0,0,72,93,1,0,0,0,73,74,5,
      48,0,0,74,75,5,39,0,0,75,76,5,48,0,0,76,77,5,13,0,0,77,78,3,10,5,0,
      78,79,5,14,0,0,79,93,1,0,0,0,80,93,3,12,6,0,81,93,3,18,9,0,82,83,3,
      10,5,0,83,84,5,14,0,0,84,93,1,0,0,0,85,86,5,41,0,0,86,87,3,10,5,0,
      87,88,5,14,0,0,88,93,1,0,0,0,89,93,3,30,15,0,90,93,3,32,16,0,91,93,
      3,40,20,0,92,49,1,0,0,0,92,52,1,0,0,0,92,61,1,0,0,0,92,70,1,0,0,0,
      92,73,1,0,0,0,92,80,1,0,0,0,92,81,1,0,0,0,92,82,1,0,0,0,92,85,1,0,
      0,0,92,89,1,0,0,0,92,90,1,0,0,0,92,91,1,0,0,0,93,3,1,0,0,0,94,99,5,
      2,0,0,95,96,5,2,0,0,96,99,3,8,4,0,97,99,3,8,4,0,98,94,1,0,0,0,98,95,
      1,0,0,0,98,97,1,0,0,0,99,100,1,0,0,0,100,101,5,48,0,0,101,102,5,13,
      0,0,102,103,3,10,5,0,103,5,1,0,0,0,104,105,5,48,0,0,105,106,5,13,0,
      0,106,107,3,10,5,0,107,7,1,0,0,0,108,116,5,7,0,0,109,116,5,8,0,0,110,
      116,5,10,0,0,111,116,5,9,0,0,112,116,5,11,0,0,113,116,5,12,0,0,114,
      116,5,48,0,0,115,108,1,0,0,0,115,109,1,0,0,0,115,110,1,0,0,0,115,111,
      1,0,0,0,115,112,1,0,0,0,115,113,1,0,0,0,115,114,1,0,0,0,116,9,1,0,
      0,0,117,118,6,5,-1,0,118,184,5,17,0,0,119,184,5,15,0,0,120,184,5,16,
      0,0,121,184,5,18,0,0,122,129,5,34,0,0,123,125,3,10,5,0,124,126,5,38,
      0,0,125,124,1,0,0,0,125,126,1,0,0,0,126,128,1,0,0,0,127,123,1,0,0,
      0,128,131,1,0,0,0,129,127,1,0,0,0,129,130,1,0,0,0,130,132,1,0,0,0,
      131,129,1,0,0,0,132,184,5,35,0,0,133,134,5,20,0,0,134,184,3,10,5,10,
      135,136,5,19,0,0,136,184,3,10,5,9,137,138,5,31,0,0,138,184,3,10,5,
      8,139,140,5,48,0,0,140,141,5,19,0,0,141,184,5,19,0,0,142,143,5,48,
      0,0,143,144,5,20,0,0,144,184,5,20,0,0,145,146,5,32,0,0,146,147,3,10,
      5,0,147,148,5,33,0,0,148,184,1,0,0,0,149,184,5,48,0,0,150,151,5,48,
      0,0,151,157,5,32,0,0,152,153,3,10,5,0,153,154,5,38,0,0,154,156,1,0,
      0,0,155,152,1,0,0,0,156,159,1,0,0,0,157,155,1,0,0,0,157,158,1,0,0,
      0,158,161,1,0,0,0,159,157,1,0,0,0,160,162,3,10,5,0,161,160,1,0,0,0,
      161,162,1,0,0,0,162,163,1,0,0,0,163,184,5,33,0,0,164,165,5,48,0,0,
      165,166,5,39,0,0,166,184,5,48,0,0,167,168,5,48,0,0,168,169,5,39,0,
      0,169,170,5,48,0,0,170,176,5,32,0,0,171,172,3,10,5,0,172,173,5,38,
      0,0,173,175,1,0,0,0,174,171,1,0,0,0,175,178,1,0,0,0,176,174,1,0,0,
      0,176,177,1,0,0,0,177,180,1,0,0,0,178,176,1,0,0,0,179,181,3,10,5,0,
      180,179,1,0,0,0,180,181,1,0,0,0,181,182,1,0,0,0,182,184,5,33,0,0,183,
      117,1,0,0,0,183,119,1,0,0,0,183,120,1,0,0,0,183,121,1,0,0,0,183,122,
      1,0,0,0,183,133,1,0,0,0,183,135,1,0,0,0,183,137,1,0,0,0,183,139,1,
      0,0,0,183,142,1,0,0,0,183,145,1,0,0,0,183,149,1,0,0,0,183,150,1,0,
      0,0,183,164,1,0,0,0,183,167,1,0,0,0,184,220,1,0,0,0,185,186,10,21,
      0,0,186,187,5,19,0,0,187,219,3,10,5,22,188,189,10,20,0,0,189,190,5,
      20,0,0,190,219,3,10,5,21,191,192,10,19,0,0,192,193,5,22,0,0,193,219,
      3,10,5,20,194,195,10,18,0,0,195,196,5,21,0,0,196,219,3,10,5,19,197,
      198,10,17,0,0,198,199,5,29,0,0,199,219,3,10,5,18,200,201,10,16,0,0,
      201,202,5,30,0,0,202,219,3,10,5,17,203,204,10,15,0,0,204,205,5,26,
      0,0,205,219,3,10,5,16,206,207,10,14,0,0,207,208,5,27,0,0,208,219,3,
      10,5,15,209,210,10,13,0,0,210,211,5,24,0,0,211,219,3,10,5,14,212,213,
      10,12,0,0,213,214,5,25,0,0,214,219,3,10,5,13,215,216,10,11,0,0,216,
      217,5,28,0,0,217,219,3,10,5,12,218,185,1,0,0,0,218,188,1,0,0,0,218,
      191,1,0,0,0,218,194,1,0,0,0,218,197,1,0,0,0,218,200,1,0,0,0,218,203,
      1,0,0,0,218,206,1,0,0,0,218,209,1,0,0,0,218,212,1,0,0,0,218,215,1,
      0,0,0,219,222,1,0,0,0,220,218,1,0,0,0,220,221,1,0,0,0,221,11,1,0,0,
      0,222,220,1,0,0,0,223,224,3,8,4,0,224,225,5,48,0,0,225,231,5,32,0,
      0,226,227,3,14,7,0,227,228,5,38,0,0,228,230,1,0,0,0,229,226,1,0,0,
      0,230,233,1,0,0,0,231,229,1,0,0,0,231,232,1,0,0,0,232,235,1,0,0,0,
      233,231,1,0,0,0,234,236,3,14,7,0,235,234,1,0,0,0,235,236,1,0,0,0,236,
      237,1,0,0,0,237,238,5,33,0,0,238,239,3,16,8,0,239,13,1,0,0,0,240,244,
      3,8,4,0,241,242,5,6,0,0,242,244,5,39,0,0,243,240,1,0,0,0,243,241,1,
      0,0,0,244,245,1,0,0,0,245,246,5,48,0,0,246,15,1,0,0,0,247,251,5,36,
      0,0,248,250,3,2,1,0,249,248,1,0,0,0,250,253,1,0,0,0,251,249,1,0,0,
      0,251,252,1,0,0,0,252,254,1,0,0,0,253,251,1,0,0,0,254,255,5,37,0,0,
      255,17,1,0,0,0,256,257,5,5,0,0,257,260,5,48,0,0,258,259,5,42,0,0,259,
      261,5,48,0,0,260,258,1,0,0,0,260,261,1,0,0,0,261,262,1,0,0,0,262,266,
      5,36,0,0,263,265,3,20,10,0,264,263,1,0,0,0,265,268,1,0,0,0,266,264,
      1,0,0,0,266,267,1,0,0,0,267,269,1,0,0,0,268,266,1,0,0,0,269,270,5,
      37,0,0,270,19,1,0,0,0,271,272,3,8,4,0,272,275,5,48,0,0,273,274,5,13,
      0,0,274,276,3,10,5,0,275,273,1,0,0,0,275,276,1,0,0,0,276,277,1,0,0,
      0,277,278,5,14,0,0,278,333,1,0,0,0,279,281,5,3,0,0,280,282,3,8,4,0,
      281,280,1,0,0,0,281,282,1,0,0,0,282,283,1,0,0,0,283,286,5,48,0,0,284,
      285,5,13,0,0,285,287,3,10,5,0,286,284,1,0,0,0,286,287,1,0,0,0,287,
      288,1,0,0,0,288,333,5,14,0,0,289,290,5,48,0,0,290,296,5,32,0,0,291,
      292,3,14,7,0,292,293,5,38,0,0,293,295,1,0,0,0,294,291,1,0,0,0,295,
      298,1,0,0,0,296,294,1,0,0,0,296,297,1,0,0,0,297,300,1,0,0,0,298,296,
      1,0,0,0,299,301,3,14,7,0,300,299,1,0,0,0,300,301,1,0,0,0,301,302,1,
      0,0,0,302,305,5,33,0,0,303,306,3,16,8,0,304,306,5,14,0,0,305,303,1,
      0,0,0,305,304,1,0,0,0,306,333,1,0,0,0,307,308,5,48,0,0,308,309,5,39,
      0,0,309,310,5,48,0,0,310,316,5,32,0,0,311,312,3,14,7,0,312,313,5,38,
      0,0,313,315,1,0,0,0,314,311,1,0,0,0,315,318,1,0,0,0,316,314,1,0,0,
      0,316,317,1,0,0,0,317,320,1,0,0,0,318,316,1,0,0,0,319,321,3,14,7,0,
      320,319,1,0,0,0,320,321,1,0,0,0,321,322,1,0,0,0,322,325,5,33,0,0,323,
      324,5,40,0,0,324,326,3,22,11,0,325,323,1,0,0,0,325,326,1,0,0,0,326,
      329,1,0,0,0,327,330,3,16,8,0,328,330,5,14,0,0,329,327,1,0,0,0,329,
      328,1,0,0,0,330,333,1,0,0,0,331,333,3,12,6,0,332,271,1,0,0,0,332,279,
      1,0,0,0,332,289,1,0,0,0,332,307,1,0,0,0,332,331,1,0,0,0,333,21,1,0,
      0,0,334,335,5,6,0,0,335,341,5,32,0,0,336,337,3,10,5,0,337,338,5,38,
      0,0,338,340,1,0,0,0,339,336,1,0,0,0,340,343,1,0,0,0,341,339,1,0,0,
      0,341,342,1,0,0,0,342,348,1,0,0,0,343,341,1,0,0,0,344,346,3,10,5,0,
      345,347,5,38,0,0,346,345,1,0,0,0,346,347,1,0,0,0,347,349,1,0,0,0,348,
      344,1,0,0,0,348,349,1,0,0,0,349,350,1,0,0,0,350,351,5,33,0,0,351,23,
      1,0,0,0,352,353,5,43,0,0,353,354,5,32,0,0,354,355,3,10,5,0,355,356,
      5,33,0,0,356,357,3,16,8,0,357,25,1,0,0,0,358,359,5,44,0,0,359,360,
      5,43,0,0,360,361,5,32,0,0,361,362,3,10,5,0,362,363,5,33,0,0,363,364,
      3,16,8,0,364,27,1,0,0,0,365,366,5,44,0,0,366,367,3,16,8,0,367,29,1,
      0,0,0,368,372,3,24,12,0,369,371,3,26,13,0,370,369,1,0,0,0,371,374,
      1,0,0,0,372,370,1,0,0,0,372,373,1,0,0,0,373,376,1,0,0,0,374,372,1,
      0,0,0,375,377,3,28,14,0,376,375,1,0,0,0,376,377,1,0,0,0,377,31,1,0,
      0,0,378,379,5,45,0,0,379,380,5,32,0,0,380,381,3,10,5,0,381,382,5,33,
      0,0,382,383,3,16,8,0,383,33,1,0,0,0,384,388,3,4,2,0,385,388,3,6,3,
      0,386,388,3,10,5,0,387,384,1,0,0,0,387,385,1,0,0,0,387,386,1,0,0,0,
      388,35,1,0,0,0,389,392,5,2,0,0,390,392,3,8,4,0,391,389,1,0,0,0,391,
      390,1,0,0,0,392,393,1,0,0,0,393,394,5,48,0,0,394,37,1,0,0,0,395,396,
      3,34,17,0,396,397,5,14,0,0,397,398,3,10,5,0,398,399,5,14,0,0,399,400,
      3,34,17,0,400,406,1,0,0,0,401,402,3,36,18,0,402,403,5,47,0,0,403,404,
      3,10,5,0,404,406,1,0,0,0,405,395,1,0,0,0,405,401,1,0,0,0,406,39,1,
      0,0,0,407,408,5,46,0,0,408,409,5,32,0,0,409,410,3,38,19,0,410,411,
      5,33,0,0,411,412,3,16,8,0,412,41,1,0,0,0,40,45,54,63,92,98,115,125,
      129,157,161,176,180,183,218,220,231,235,243,251,260,266,275,281,286,
      296,300,305,316,320,325,329,332,341,346,348,372,376,387,391,405
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

class AssignmentContext extends ParserRuleContext {
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  TerminalNode? ASSIGN() => getToken(DartParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  AssignmentContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_assignment;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterAssignment(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitAssignment(this);
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
  BlockContext? block() => getRuleContext<BlockContext>(0);
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
  BlockContext? block() => getRuleContext<BlockContext>(0);
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
  BlockContext? block() => getRuleContext<BlockContext>(0);
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

class ForInitOrIncrementStatementContext extends ParserRuleContext {
  VarDeclarationContext? varDeclaration() => getRuleContext<VarDeclarationContext>(0);
  AssignmentContext? assignment() => getRuleContext<AssignmentContext>(0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  ForInitOrIncrementStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_forInitOrIncrementStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterForInitOrIncrementStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitForInitOrIncrementStatement(this);
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

class ObjectPropertyAssignmentStatementContext extends StatementContext {
  Token? objectName;
  Token? propertyName;
  TerminalNode? DOT() => getToken(DartParser.TOKEN_DOT, 0);
  TerminalNode? ASSIGN() => getToken(DartParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? SEMICOLON() => getToken(DartParser.TOKEN_SEMICOLON, 0);
  List<TerminalNode> IDs() => getTokens(DartParser.TOKEN_ID);
  TerminalNode? ID(int i) => getToken(DartParser.TOKEN_ID, i);
  ObjectPropertyAssignmentStatementContext(StatementContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterObjectPropertyAssignmentStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitObjectPropertyAssignmentStatement(this);
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

class AssignmentStatementContext extends StatementContext {
  AssignmentContext? assignment() => getRuleContext<AssignmentContext>(0);
  TerminalNode? SEMICOLON() => getToken(DartParser.TOKEN_SEMICOLON, 0);
  AssignmentStatementContext(StatementContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterAssignmentStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitAssignmentStatement(this);
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

class IfDefinitionStatementContext extends StatementContext {
  IfDefinitionContext? ifDefinition() => getRuleContext<IfDefinitionContext>(0);
  IfDefinitionStatementContext(StatementContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterIfDefinitionStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitIfDefinitionStatement(this);
  }
}

class ForDefinitionStatementContext extends StatementContext {
  ForDefinitionContext? forDefinition() => getRuleContext<ForDefinitionContext>(0);
  ForDefinitionStatementContext(StatementContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterForDefinitionStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitForDefinitionStatement(this);
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

class WhileDefinitionStatementContext extends StatementContext {
  WhileDefinitionContext? whileDefinition() => getRuleContext<WhileDefinitionContext>(0);
  WhileDefinitionStatementContext(StatementContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.enterWhileDefinitionStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is DartParserListener) listener.exitWhileDefinitionStatement(this);
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
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  List<TerminalNode> MINUSs() => getTokens(DartParser.TOKEN_MINUS);
  TerminalNode? MINUS(int i) => getToken(DartParser.TOKEN_MINUS, i);
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
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  List<TerminalNode> PLUSs() => getTokens(DartParser.TOKEN_PLUS);
  TerminalNode? PLUS(int i) => getToken(DartParser.TOKEN_PLUS, i);
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
  Token? objectName;
  Token? methodName;
  TerminalNode? DOT() => getToken(DartParser.TOKEN_DOT, 0);
  TerminalNode? PAREN_OPEN() => getToken(DartParser.TOKEN_PAREN_OPEN, 0);
  TerminalNode? PAREN_CLOSE() => getToken(DartParser.TOKEN_PAREN_CLOSE, 0);
  List<TerminalNode> IDs() => getTokens(DartParser.TOKEN_ID);
  TerminalNode? ID(int i) => getToken(DartParser.TOKEN_ID, i);
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
  List<ForInitOrIncrementStatementContext> forInitOrIncrementStatements() => getRuleContexts<ForInitOrIncrementStatementContext>();
  ForInitOrIncrementStatementContext? forInitOrIncrementStatement(int i) => getRuleContext<ForInitOrIncrementStatementContext>(i);
  List<TerminalNode> SEMICOLONs() => getTokens(DartParser.TOKEN_SEMICOLON);
  TerminalNode? SEMICOLON(int i) => getToken(DartParser.TOKEN_SEMICOLON, i);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
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