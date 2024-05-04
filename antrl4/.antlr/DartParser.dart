// Generated from c://Users//rotun//dart2ast-engine//antrl4//DartParser.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

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
                   TOKEN_FOR = 46, TOKEN_IN = 47, TOKEN_STDIN = 48, TOKEN_READLINESYNC = 49, 
                   TOKEN_PRINT = 50, TOKEN_ID = 51, TOKEN_UnterminatedStringLiteral = 52;

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
      "'if'", "'else'", "'while'", "'for'", "'in'", "'stdin'", "'readLineSync'", 
      "'print'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, "WS", "VAR", "FINAL", "CONST", "CLASS", "THIS", "INT", "DOUBLE", 
      "STRING", "BOOL", "VOID", "LIST", "ASSIGN", "SEMICOLON", "INTLIT", 
      "DOUBLELIT", "BOOLLIT", "STRINGLIT", "PLUS", "MINUS", "DIVISION", 
      "TIMES", "MODULE", "GREATER_EQUAL_THAN", "LOWER_EQUAL_THAN", "GREATER_THAN", 
      "LOWER_THAN", "EQUAL", "AND", "OR", "NOT", "PAREN_OPEN", "PAREN_CLOSE", 
      "SQUARE_OPEN", "SQUARE_CLOSE", "GRAPH_OPEN", "GRAPH_CLOSE", "COMMA", 
      "DOT", "COLONS", "RETURN", "EXTENDS", "IF", "ELSE", "WHILE", "FOR", 
      "IN", "STDIN", "READLINESYNC", "PRINT", "ID", "UnterminatedStringLiteral"
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
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 3775746554175420) != 0));
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
      state = 199;
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
        while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 3659198321623040) != 0)) {
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
        _localctx.value = expression(14);
        break;
      case 7:
        _localctx = UnaryMathExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 135;
        _localctx.operand = match(TOKEN_PLUS);
        state = 136;
        _localctx.value = expression(13);
        break;
      case 8:
        _localctx = UnaryLogicNegationExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 137;
        _localctx.operand = match(TOKEN_NOT);
        state = 138;
        _localctx.value = expression(12);
        break;
      case 9:
        _localctx = PreIncrementExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 139;
        match(TOKEN_PLUS);
        state = 140;
        match(TOKEN_PLUS);
        state = 141;
        match(TOKEN_ID);
        break;
      case 10:
        _localctx = PostIncrementExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 142;
        match(TOKEN_ID);
        state = 143;
        match(TOKEN_PLUS);
        state = 144;
        match(TOKEN_PLUS);
        break;
      case 11:
        _localctx = PreDecrementExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 145;
        match(TOKEN_MINUS);
        state = 146;
        match(TOKEN_MINUS);
        state = 147;
        match(TOKEN_ID);
        break;
      case 12:
        _localctx = PostDecrementExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 148;
        match(TOKEN_ID);
        state = 149;
        match(TOKEN_MINUS);
        state = 150;
        match(TOKEN_MINUS);
        break;
      case 13:
        _localctx = InputExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 151;
        match(TOKEN_STDIN);
        state = 152;
        match(TOKEN_DOT);
        state = 153;
        match(TOKEN_READLINESYNC);
        state = 154;
        match(TOKEN_PAREN_OPEN);
        state = 155;
        match(TOKEN_PAREN_CLOSE);
        break;
      case 14:
        _localctx = OutputExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 156;
        match(TOKEN_PRINT);
        state = 157;
        match(TOKEN_PAREN_OPEN);
        state = 158;
        _localctx.value = expression(0);
        state = 159;
        match(TOKEN_PAREN_CLOSE);
        break;
      case 15:
        _localctx = ParenthesysExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 161;
        match(TOKEN_PAREN_OPEN);
        state = 162;
        _localctx.value = expression(0);
        state = 163;
        match(TOKEN_PAREN_CLOSE);
        break;
      case 16:
        _localctx = VarReferenceExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 165;
        match(TOKEN_ID);
        break;
      case 17:
        _localctx = FunctionCallExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 166;
        match(TOKEN_ID);
        state = 167;
        match(TOKEN_PAREN_OPEN);
        state = 173;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 8, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 168;
            expression(0);
            state = 169;
            match(TOKEN_COMMA); 
          }
          state = 175;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 8, context);
        }
        state = 177;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 3659198321623040) != 0)) {
          state = 176;
          expression(0);
        }

        state = 179;
        match(TOKEN_PAREN_CLOSE);
        break;
      case 18:
        _localctx = ObjectPropertyReferenceExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 180;
        _localctx.objectName = match(TOKEN_ID);
        state = 181;
        match(TOKEN_DOT);
        state = 182;
        _localctx.methodName = match(TOKEN_ID);
        break;
      case 19:
        _localctx = ObjectMethodCallExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 183;
        _localctx.objectName = match(TOKEN_ID);
        state = 184;
        match(TOKEN_DOT);
        state = 185;
        _localctx.methodName = match(TOKEN_ID);
        state = 186;
        match(TOKEN_PAREN_OPEN);
        state = 192;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 10, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 187;
            expression(0);
            state = 188;
            match(TOKEN_COMMA); 
          }
          state = 194;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 10, context);
        }
        state = 196;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 3659198321623040) != 0)) {
          state = 195;
          expression(0);
        }

        state = 198;
        match(TOKEN_PAREN_CLOSE);
        break;
      }
      context!.stop = tokenStream.LT(-1);
      state = 236;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 14, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 234;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 13, context)) {
          case 1:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 201;
            if (!(precpred(context, 25))) {
              throw FailedPredicateException(this, "precpred(context, 25)");
            }
            state = 202;
            _localctx.operand = match(TOKEN_PLUS);
            state = 203;
            _localctx.right = expression(26);
            break;
          case 2:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 204;
            if (!(precpred(context, 24))) {
              throw FailedPredicateException(this, "precpred(context, 24)");
            }
            state = 205;
            _localctx.operand = match(TOKEN_MINUS);
            state = 206;
            _localctx.right = expression(25);
            break;
          case 3:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 207;
            if (!(precpred(context, 23))) {
              throw FailedPredicateException(this, "precpred(context, 23)");
            }
            state = 208;
            _localctx.operand = match(TOKEN_TIMES);
            state = 209;
            _localctx.right = expression(24);
            break;
          case 4:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 210;
            if (!(precpred(context, 22))) {
              throw FailedPredicateException(this, "precpred(context, 22)");
            }
            state = 211;
            _localctx.operand = match(TOKEN_DIVISION);
            state = 212;
            _localctx.right = expression(23);
            break;
          case 5:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 213;
            if (!(precpred(context, 21))) {
              throw FailedPredicateException(this, "precpred(context, 21)");
            }
            state = 214;
            _localctx.operand = match(TOKEN_AND);
            state = 215;
            _localctx.right = expression(22);
            break;
          case 6:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 216;
            if (!(precpred(context, 20))) {
              throw FailedPredicateException(this, "precpred(context, 20)");
            }
            state = 217;
            _localctx.operand = match(TOKEN_OR);
            state = 218;
            _localctx.right = expression(21);
            break;
          case 7:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 219;
            if (!(precpred(context, 19))) {
              throw FailedPredicateException(this, "precpred(context, 19)");
            }
            state = 220;
            _localctx.operand = match(TOKEN_GREATER_THAN);
            state = 221;
            _localctx.right = expression(20);
            break;
          case 8:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 222;
            if (!(precpred(context, 18))) {
              throw FailedPredicateException(this, "precpred(context, 18)");
            }
            state = 223;
            _localctx.operand = match(TOKEN_LOWER_THAN);
            state = 224;
            _localctx.right = expression(19);
            break;
          case 9:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 225;
            if (!(precpred(context, 17))) {
              throw FailedPredicateException(this, "precpred(context, 17)");
            }
            state = 226;
            _localctx.operand = match(TOKEN_GREATER_EQUAL_THAN);
            state = 227;
            _localctx.right = expression(18);
            break;
          case 10:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 228;
            if (!(precpred(context, 16))) {
              throw FailedPredicateException(this, "precpred(context, 16)");
            }
            state = 229;
            _localctx.operand = match(TOKEN_LOWER_EQUAL_THAN);
            state = 230;
            _localctx.right = expression(17);
            break;
          case 11:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 231;
            if (!(precpred(context, 15))) {
              throw FailedPredicateException(this, "precpred(context, 15)");
            }
            state = 232;
            _localctx.operand = match(TOKEN_EQUAL);
            state = 233;
            _localctx.right = expression(16);
            break;
          } 
        }
        state = 238;
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
      state = 239;
      _localctx.returnType = type();
      state = 240;
      _localctx.name = match(TOKEN_ID);
      state = 241;
      match(TOKEN_PAREN_OPEN);
      state = 247;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 15, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 242;
          parameter();
          state = 243;
          match(TOKEN_COMMA); 
        }
        state = 249;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 15, context);
      }
      state = 251;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 2251799813693376) != 0)) {
        state = 250;
        parameter();
      }

      state = 253;
      match(TOKEN_PAREN_CLOSE);
      state = 254;
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
      state = 259;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_INT:
      case TOKEN_DOUBLE:
      case TOKEN_STRING:
      case TOKEN_BOOL:
      case TOKEN_VOID:
      case TOKEN_LIST:
      case TOKEN_ID:
        state = 256;
        type();
        break;
      case TOKEN_THIS:
        state = 257;
        match(TOKEN_THIS);
        state = 258;
        match(TOKEN_DOT);
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 261;
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
      state = 263;
      match(TOKEN_GRAPH_OPEN);
      state = 267;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 3775746554175420) != 0)) {
        state = 264;
        statement();
        state = 269;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 270;
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
      state = 272;
      match(TOKEN_CLASS);
      state = 273;
      _localctx.name = match(TOKEN_ID);
      state = 276;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_EXTENDS) {
        state = 274;
        match(TOKEN_EXTENDS);
        state = 275;
        _localctx.parentName = match(TOKEN_ID);
      }

      state = 278;
      match(TOKEN_GRAPH_OPEN);
      state = 282;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 2251799813693320) != 0)) {
        state = 279;
        classStatement();
        state = 284;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 285;
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
      state = 348;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 31, context)) {
      case 1:
        _localctx = ClassVarDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 287;
        type();
        state = 288;
        match(TOKEN_ID);
        state = 291;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_ASSIGN) {
          state = 289;
          match(TOKEN_ASSIGN);
          state = 290;
          expression(0);
        }

        state = 293;
        match(TOKEN_SEMICOLON);
        break;
      case 2:
        _localctx = ClassImmutableVarDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 295;
        match(TOKEN_FINAL);
        state = 297;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 22, context)) {
        case 1:
          state = 296;
          type();
          break;
        }
        state = 299;
        match(TOKEN_ID);
        state = 302;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_ASSIGN) {
          state = 300;
          match(TOKEN_ASSIGN);
          state = 301;
          expression(0);
        }

        state = 304;
        match(TOKEN_SEMICOLON);
        break;
      case 3:
        _localctx = MainClassConstructorDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 305;
        _localctx.className = match(TOKEN_ID);
        state = 306;
        match(TOKEN_PAREN_OPEN);
        state = 312;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 24, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 307;
            parameter();
            state = 308;
            match(TOKEN_COMMA); 
          }
          state = 314;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 24, context);
        }
        state = 316;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 2251799813693376) != 0)) {
          state = 315;
          parameter();
        }

        state = 318;
        match(TOKEN_PAREN_CLOSE);
        state = 321;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_GRAPH_OPEN:
          state = 319;
          block();
          break;
        case TOKEN_SEMICOLON:
          state = 320;
          match(TOKEN_SEMICOLON);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case 4:
        _localctx = NamedClassConstructorDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 323;
        _localctx.className = match(TOKEN_ID);
        state = 324;
        match(TOKEN_DOT);
        state = 325;
        _localctx.costructorName = match(TOKEN_ID);
        state = 326;
        match(TOKEN_PAREN_OPEN);
        state = 332;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 27, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 327;
            parameter();
            state = 328;
            match(TOKEN_COMMA); 
          }
          state = 334;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 27, context);
        }
        state = 336;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 2251799813693376) != 0)) {
          state = 335;
          parameter();
        }

        state = 338;
        match(TOKEN_PAREN_CLOSE);
        state = 341;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_COLONS) {
          state = 339;
          match(TOKEN_COLONS);
          state = 340;
          thisConstructorCall();
        }

        state = 345;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_GRAPH_OPEN:
          state = 343;
          block();
          break;
        case TOKEN_SEMICOLON:
          state = 344;
          match(TOKEN_SEMICOLON);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case 5:
        _localctx = ClassMethodDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 347;
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
      state = 350;
      match(TOKEN_THIS);
      state = 351;
      match(TOKEN_PAREN_OPEN);
      state = 357;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 32, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 352;
          expression(0);
          state = 353;
          match(TOKEN_COMMA); 
        }
        state = 359;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 32, context);
      }
      state = 364;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 3659198321623040) != 0)) {
        state = 360;
        expression(0);
        state = 362;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_COMMA) {
          state = 361;
          match(TOKEN_COMMA);
        }

      }

      state = 366;
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
      state = 368;
      match(TOKEN_IF);
      state = 369;
      match(TOKEN_PAREN_OPEN);
      state = 370;
      expression(0);
      state = 371;
      match(TOKEN_PAREN_CLOSE);
      state = 372;
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
      state = 374;
      match(TOKEN_ELSE);
      state = 375;
      match(TOKEN_IF);
      state = 376;
      match(TOKEN_PAREN_OPEN);
      state = 377;
      expression(0);
      state = 378;
      match(TOKEN_PAREN_CLOSE);
      state = 379;
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
      state = 381;
      match(TOKEN_ELSE);
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

  IfDefinitionContext ifDefinition() {
    dynamic _localctx = IfDefinitionContext(context, state);
    enterRule(_localctx, 30, RULE_ifDefinition);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 384;
      ifBlock();
      state = 388;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 35, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 385;
          elseIfBlock(); 
        }
        state = 390;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 35, context);
      }
      state = 392;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_ELSE) {
        state = 391;
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
      state = 394;
      match(TOKEN_WHILE);
      state = 395;
      match(TOKEN_PAREN_OPEN);
      state = 396;
      expression(0);
      state = 397;
      match(TOKEN_PAREN_CLOSE);
      state = 398;
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
      state = 403;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 37, context)) {
      case 1:
        _localctx = VarDeclarationForStatementContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 400;
        varDeclaration();
        break;
      case 2:
        _localctx = AssignmentForStatementContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 401;
        assignment();
        break;
      case 3:
        _localctx = ExpressionForStatementContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 402;
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
      state = 407;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_VAR:
        state = 405;
        match(TOKEN_VAR);
        break;
      case TOKEN_INT:
      case TOKEN_DOUBLE:
      case TOKEN_STRING:
      case TOKEN_BOOL:
      case TOKEN_VOID:
      case TOKEN_LIST:
      case TOKEN_ID:
        state = 406;
        type();
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 409;
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

  ForConditionContext forCondition() {
    dynamic _localctx = ForConditionContext(context, state);
    enterRule(_localctx, 38, RULE_forCondition);
    try {
      state = 421;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 39, context)) {
      case 1:
        _localctx = StandardForConditionContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 411;
        _localctx.initStatement = forInitOrIncrementStatement();
        state = 412;
        match(TOKEN_SEMICOLON);
        state = 413;
        expression(0);
        state = 414;
        match(TOKEN_SEMICOLON);
        state = 415;
        _localctx.incrementStatament = forInitOrIncrementStatement();
        break;
      case 2:
        _localctx = ForEachConditionContext(_localctx);
        enterOuterAlt(_localctx, 2);
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
      case 0: return precpred(context, 25);
      case 1: return precpred(context, 24);
      case 2: return precpred(context, 23);
      case 3: return precpred(context, 22);
      case 4: return precpred(context, 21);
      case 5: return precpred(context, 20);
      case 6: return precpred(context, 19);
      case 7: return precpred(context, 18);
      case 8: return precpred(context, 17);
      case 9: return precpred(context, 16);
      case 10: return precpred(context, 15);
    }
    return true;
  }

  static const List<int> _serializedATN = [
      4,1,52,430,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,
      14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,
      1,0,4,0,44,8,0,11,0,12,0,45,1,0,1,0,1,1,1,1,1,1,1,1,1,1,3,1,55,8,1,
      1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,64,8,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
      1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
      1,1,1,1,1,1,1,3,1,93,8,1,1,2,1,2,1,2,1,2,3,2,99,8,2,1,2,1,2,1,2,1,
      2,1,3,1,3,1,3,1,3,1,4,1,4,1,4,1,4,1,4,1,4,1,4,3,4,116,8,4,1,5,1,5,
      1,5,1,5,1,5,1,5,1,5,1,5,3,5,126,8,5,5,5,128,8,5,10,5,12,5,131,9,5,
      1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,
      5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,
      1,5,1,5,1,5,1,5,1,5,1,5,5,5,172,8,5,10,5,12,5,175,9,5,1,5,3,5,178,
      8,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,5,5,191,8,5,10,5,12,
      5,194,9,5,1,5,3,5,197,8,5,1,5,3,5,200,8,5,1,5,1,5,1,5,1,5,1,5,1,5,
      1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,
      5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,5,5,235,8,5,10,5,12,5,238,
      9,5,1,6,1,6,1,6,1,6,1,6,1,6,5,6,246,8,6,10,6,12,6,249,9,6,1,6,3,6,
      252,8,6,1,6,1,6,1,6,1,7,1,7,1,7,3,7,260,8,7,1,7,1,7,1,8,1,8,5,8,266,
      8,8,10,8,12,8,269,9,8,1,8,1,8,1,9,1,9,1,9,1,9,3,9,277,8,9,1,9,1,9,
      5,9,281,8,9,10,9,12,9,284,9,9,1,9,1,9,1,10,1,10,1,10,1,10,3,10,292,
      8,10,1,10,1,10,1,10,1,10,3,10,298,8,10,1,10,1,10,1,10,3,10,303,8,10,
      1,10,1,10,1,10,1,10,1,10,1,10,5,10,311,8,10,10,10,12,10,314,9,10,1,
      10,3,10,317,8,10,1,10,1,10,1,10,3,10,322,8,10,1,10,1,10,1,10,1,10,
      1,10,1,10,1,10,5,10,331,8,10,10,10,12,10,334,9,10,1,10,3,10,337,8,
      10,1,10,1,10,1,10,3,10,342,8,10,1,10,1,10,3,10,346,8,10,1,10,3,10,
      349,8,10,1,11,1,11,1,11,1,11,1,11,5,11,356,8,11,10,11,12,11,359,9,
      11,1,11,1,11,3,11,363,8,11,3,11,365,8,11,1,11,1,11,1,12,1,12,1,12,
      1,12,1,12,1,12,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,14,1,14,1,14,1,
      15,1,15,5,15,387,8,15,10,15,12,15,390,9,15,1,15,3,15,393,8,15,1,16,
      1,16,1,16,1,16,1,16,1,16,1,17,1,17,1,17,3,17,404,8,17,1,18,1,18,3,
      18,408,8,18,1,18,1,18,1,19,1,19,1,19,1,19,1,19,1,19,1,19,1,19,1,19,
      1,19,3,19,422,8,19,1,20,1,20,1,20,1,20,1,20,1,20,1,20,0,1,10,21,0,
      2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,0,0,494,0,
      43,1,0,0,0,2,92,1,0,0,0,4,98,1,0,0,0,6,104,1,0,0,0,8,115,1,0,0,0,10,
      199,1,0,0,0,12,239,1,0,0,0,14,259,1,0,0,0,16,263,1,0,0,0,18,272,1,
      0,0,0,20,348,1,0,0,0,22,350,1,0,0,0,24,368,1,0,0,0,26,374,1,0,0,0,
      28,381,1,0,0,0,30,384,1,0,0,0,32,394,1,0,0,0,34,403,1,0,0,0,36,407,
      1,0,0,0,38,421,1,0,0,0,40,423,1,0,0,0,42,44,3,2,1,0,43,42,1,0,0,0,
      44,45,1,0,0,0,45,43,1,0,0,0,45,46,1,0,0,0,46,47,1,0,0,0,47,48,5,0,
      0,1,48,1,1,0,0,0,49,50,3,4,2,0,50,51,5,14,0,0,51,93,1,0,0,0,52,54,
      5,3,0,0,53,55,3,8,4,0,54,53,1,0,0,0,54,55,1,0,0,0,55,56,1,0,0,0,56,
      57,5,51,0,0,57,58,5,13,0,0,58,59,3,10,5,0,59,60,5,14,0,0,60,93,1,0,
      0,0,61,63,5,4,0,0,62,64,3,8,4,0,63,62,1,0,0,0,63,64,1,0,0,0,64,65,
      1,0,0,0,65,66,5,51,0,0,66,67,5,13,0,0,67,68,3,10,5,0,68,69,5,14,0,
      0,69,93,1,0,0,0,70,71,3,6,3,0,71,72,5,14,0,0,72,93,1,0,0,0,73,74,5,
      51,0,0,74,75,5,39,0,0,75,76,5,51,0,0,76,77,5,13,0,0,77,78,3,10,5,0,
      78,79,5,14,0,0,79,93,1,0,0,0,80,93,3,12,6,0,81,93,3,18,9,0,82,83,3,
      10,5,0,83,84,5,14,0,0,84,93,1,0,0,0,85,86,5,41,0,0,86,87,3,10,5,0,
      87,88,5,14,0,0,88,93,1,0,0,0,89,93,3,30,15,0,90,93,3,32,16,0,91,93,
      3,40,20,0,92,49,1,0,0,0,92,52,1,0,0,0,92,61,1,0,0,0,92,70,1,0,0,0,
      92,73,1,0,0,0,92,80,1,0,0,0,92,81,1,0,0,0,92,82,1,0,0,0,92,85,1,0,
      0,0,92,89,1,0,0,0,92,90,1,0,0,0,92,91,1,0,0,0,93,3,1,0,0,0,94,99,5,
      2,0,0,95,96,5,2,0,0,96,99,3,8,4,0,97,99,3,8,4,0,98,94,1,0,0,0,98,95,
      1,0,0,0,98,97,1,0,0,0,99,100,1,0,0,0,100,101,5,51,0,0,101,102,5,13,
      0,0,102,103,3,10,5,0,103,5,1,0,0,0,104,105,5,51,0,0,105,106,5,13,0,
      0,106,107,3,10,5,0,107,7,1,0,0,0,108,116,5,7,0,0,109,116,5,8,0,0,110,
      116,5,10,0,0,111,116,5,9,0,0,112,116,5,11,0,0,113,116,5,12,0,0,114,
      116,5,51,0,0,115,108,1,0,0,0,115,109,1,0,0,0,115,110,1,0,0,0,115,111,
      1,0,0,0,115,112,1,0,0,0,115,113,1,0,0,0,115,114,1,0,0,0,116,9,1,0,
      0,0,117,118,6,5,-1,0,118,200,5,17,0,0,119,200,5,15,0,0,120,200,5,16,
      0,0,121,200,5,18,0,0,122,129,5,34,0,0,123,125,3,10,5,0,124,126,5,38,
      0,0,125,124,1,0,0,0,125,126,1,0,0,0,126,128,1,0,0,0,127,123,1,0,0,
      0,128,131,1,0,0,0,129,127,1,0,0,0,129,130,1,0,0,0,130,132,1,0,0,0,
      131,129,1,0,0,0,132,200,5,35,0,0,133,134,5,20,0,0,134,200,3,10,5,14,
      135,136,5,19,0,0,136,200,3,10,5,13,137,138,5,31,0,0,138,200,3,10,5,
      12,139,140,5,19,0,0,140,141,5,19,0,0,141,200,5,51,0,0,142,143,5,51,
      0,0,143,144,5,19,0,0,144,200,5,19,0,0,145,146,5,20,0,0,146,147,5,20,
      0,0,147,200,5,51,0,0,148,149,5,51,0,0,149,150,5,20,0,0,150,200,5,20,
      0,0,151,152,5,48,0,0,152,153,5,39,0,0,153,154,5,49,0,0,154,155,5,32,
      0,0,155,200,5,33,0,0,156,157,5,50,0,0,157,158,5,32,0,0,158,159,3,10,
      5,0,159,160,5,33,0,0,160,200,1,0,0,0,161,162,5,32,0,0,162,163,3,10,
      5,0,163,164,5,33,0,0,164,200,1,0,0,0,165,200,5,51,0,0,166,167,5,51,
      0,0,167,173,5,32,0,0,168,169,3,10,5,0,169,170,5,38,0,0,170,172,1,0,
      0,0,171,168,1,0,0,0,172,175,1,0,0,0,173,171,1,0,0,0,173,174,1,0,0,
      0,174,177,1,0,0,0,175,173,1,0,0,0,176,178,3,10,5,0,177,176,1,0,0,0,
      177,178,1,0,0,0,178,179,1,0,0,0,179,200,5,33,0,0,180,181,5,51,0,0,
      181,182,5,39,0,0,182,200,5,51,0,0,183,184,5,51,0,0,184,185,5,39,0,
      0,185,186,5,51,0,0,186,192,5,32,0,0,187,188,3,10,5,0,188,189,5,38,
      0,0,189,191,1,0,0,0,190,187,1,0,0,0,191,194,1,0,0,0,192,190,1,0,0,
      0,192,193,1,0,0,0,193,196,1,0,0,0,194,192,1,0,0,0,195,197,3,10,5,0,
      196,195,1,0,0,0,196,197,1,0,0,0,197,198,1,0,0,0,198,200,5,33,0,0,199,
      117,1,0,0,0,199,119,1,0,0,0,199,120,1,0,0,0,199,121,1,0,0,0,199,122,
      1,0,0,0,199,133,1,0,0,0,199,135,1,0,0,0,199,137,1,0,0,0,199,139,1,
      0,0,0,199,142,1,0,0,0,199,145,1,0,0,0,199,148,1,0,0,0,199,151,1,0,
      0,0,199,156,1,0,0,0,199,161,1,0,0,0,199,165,1,0,0,0,199,166,1,0,0,
      0,199,180,1,0,0,0,199,183,1,0,0,0,200,236,1,0,0,0,201,202,10,25,0,
      0,202,203,5,19,0,0,203,235,3,10,5,26,204,205,10,24,0,0,205,206,5,20,
      0,0,206,235,3,10,5,25,207,208,10,23,0,0,208,209,5,22,0,0,209,235,3,
      10,5,24,210,211,10,22,0,0,211,212,5,21,0,0,212,235,3,10,5,23,213,214,
      10,21,0,0,214,215,5,29,0,0,215,235,3,10,5,22,216,217,10,20,0,0,217,
      218,5,30,0,0,218,235,3,10,5,21,219,220,10,19,0,0,220,221,5,26,0,0,
      221,235,3,10,5,20,222,223,10,18,0,0,223,224,5,27,0,0,224,235,3,10,
      5,19,225,226,10,17,0,0,226,227,5,24,0,0,227,235,3,10,5,18,228,229,
      10,16,0,0,229,230,5,25,0,0,230,235,3,10,5,17,231,232,10,15,0,0,232,
      233,5,28,0,0,233,235,3,10,5,16,234,201,1,0,0,0,234,204,1,0,0,0,234,
      207,1,0,0,0,234,210,1,0,0,0,234,213,1,0,0,0,234,216,1,0,0,0,234,219,
      1,0,0,0,234,222,1,0,0,0,234,225,1,0,0,0,234,228,1,0,0,0,234,231,1,
      0,0,0,235,238,1,0,0,0,236,234,1,0,0,0,236,237,1,0,0,0,237,11,1,0,0,
      0,238,236,1,0,0,0,239,240,3,8,4,0,240,241,5,51,0,0,241,247,5,32,0,
      0,242,243,3,14,7,0,243,244,5,38,0,0,244,246,1,0,0,0,245,242,1,0,0,
      0,246,249,1,0,0,0,247,245,1,0,0,0,247,248,1,0,0,0,248,251,1,0,0,0,
      249,247,1,0,0,0,250,252,3,14,7,0,251,250,1,0,0,0,251,252,1,0,0,0,252,
      253,1,0,0,0,253,254,5,33,0,0,254,255,3,16,8,0,255,13,1,0,0,0,256,260,
      3,8,4,0,257,258,5,6,0,0,258,260,5,39,0,0,259,256,1,0,0,0,259,257,1,
      0,0,0,260,261,1,0,0,0,261,262,5,51,0,0,262,15,1,0,0,0,263,267,5,36,
      0,0,264,266,3,2,1,0,265,264,1,0,0,0,266,269,1,0,0,0,267,265,1,0,0,
      0,267,268,1,0,0,0,268,270,1,0,0,0,269,267,1,0,0,0,270,271,5,37,0,0,
      271,17,1,0,0,0,272,273,5,5,0,0,273,276,5,51,0,0,274,275,5,42,0,0,275,
      277,5,51,0,0,276,274,1,0,0,0,276,277,1,0,0,0,277,278,1,0,0,0,278,282,
      5,36,0,0,279,281,3,20,10,0,280,279,1,0,0,0,281,284,1,0,0,0,282,280,
      1,0,0,0,282,283,1,0,0,0,283,285,1,0,0,0,284,282,1,0,0,0,285,286,5,
      37,0,0,286,19,1,0,0,0,287,288,3,8,4,0,288,291,5,51,0,0,289,290,5,13,
      0,0,290,292,3,10,5,0,291,289,1,0,0,0,291,292,1,0,0,0,292,293,1,0,0,
      0,293,294,5,14,0,0,294,349,1,0,0,0,295,297,5,3,0,0,296,298,3,8,4,0,
      297,296,1,0,0,0,297,298,1,0,0,0,298,299,1,0,0,0,299,302,5,51,0,0,300,
      301,5,13,0,0,301,303,3,10,5,0,302,300,1,0,0,0,302,303,1,0,0,0,303,
      304,1,0,0,0,304,349,5,14,0,0,305,306,5,51,0,0,306,312,5,32,0,0,307,
      308,3,14,7,0,308,309,5,38,0,0,309,311,1,0,0,0,310,307,1,0,0,0,311,
      314,1,0,0,0,312,310,1,0,0,0,312,313,1,0,0,0,313,316,1,0,0,0,314,312,
      1,0,0,0,315,317,3,14,7,0,316,315,1,0,0,0,316,317,1,0,0,0,317,318,1,
      0,0,0,318,321,5,33,0,0,319,322,3,16,8,0,320,322,5,14,0,0,321,319,1,
      0,0,0,321,320,1,0,0,0,322,349,1,0,0,0,323,324,5,51,0,0,324,325,5,39,
      0,0,325,326,5,51,0,0,326,332,5,32,0,0,327,328,3,14,7,0,328,329,5,38,
      0,0,329,331,1,0,0,0,330,327,1,0,0,0,331,334,1,0,0,0,332,330,1,0,0,
      0,332,333,1,0,0,0,333,336,1,0,0,0,334,332,1,0,0,0,335,337,3,14,7,0,
      336,335,1,0,0,0,336,337,1,0,0,0,337,338,1,0,0,0,338,341,5,33,0,0,339,
      340,5,40,0,0,340,342,3,22,11,0,341,339,1,0,0,0,341,342,1,0,0,0,342,
      345,1,0,0,0,343,346,3,16,8,0,344,346,5,14,0,0,345,343,1,0,0,0,345,
      344,1,0,0,0,346,349,1,0,0,0,347,349,3,12,6,0,348,287,1,0,0,0,348,295,
      1,0,0,0,348,305,1,0,0,0,348,323,1,0,0,0,348,347,1,0,0,0,349,21,1,0,
      0,0,350,351,5,6,0,0,351,357,5,32,0,0,352,353,3,10,5,0,353,354,5,38,
      0,0,354,356,1,0,0,0,355,352,1,0,0,0,356,359,1,0,0,0,357,355,1,0,0,
      0,357,358,1,0,0,0,358,364,1,0,0,0,359,357,1,0,0,0,360,362,3,10,5,0,
      361,363,5,38,0,0,362,361,1,0,0,0,362,363,1,0,0,0,363,365,1,0,0,0,364,
      360,1,0,0,0,364,365,1,0,0,0,365,366,1,0,0,0,366,367,5,33,0,0,367,23,
      1,0,0,0,368,369,5,43,0,0,369,370,5,32,0,0,370,371,3,10,5,0,371,372,
      5,33,0,0,372,373,3,16,8,0,373,25,1,0,0,0,374,375,5,44,0,0,375,376,
      5,43,0,0,376,377,5,32,0,0,377,378,3,10,5,0,378,379,5,33,0,0,379,380,
      3,16,8,0,380,27,1,0,0,0,381,382,5,44,0,0,382,383,3,16,8,0,383,29,1,
      0,0,0,384,388,3,24,12,0,385,387,3,26,13,0,386,385,1,0,0,0,387,390,
      1,0,0,0,388,386,1,0,0,0,388,389,1,0,0,0,389,392,1,0,0,0,390,388,1,
      0,0,0,391,393,3,28,14,0,392,391,1,0,0,0,392,393,1,0,0,0,393,31,1,0,
      0,0,394,395,5,45,0,0,395,396,5,32,0,0,396,397,3,10,5,0,397,398,5,33,
      0,0,398,399,3,16,8,0,399,33,1,0,0,0,400,404,3,4,2,0,401,404,3,6,3,
      0,402,404,3,10,5,0,403,400,1,0,0,0,403,401,1,0,0,0,403,402,1,0,0,0,
      404,35,1,0,0,0,405,408,5,2,0,0,406,408,3,8,4,0,407,405,1,0,0,0,407,
      406,1,0,0,0,408,409,1,0,0,0,409,410,5,51,0,0,410,37,1,0,0,0,411,412,
      3,34,17,0,412,413,5,14,0,0,413,414,3,10,5,0,414,415,5,14,0,0,415,416,
      3,34,17,0,416,422,1,0,0,0,417,418,3,36,18,0,418,419,5,47,0,0,419,420,
      3,10,5,0,420,422,1,0,0,0,421,411,1,0,0,0,421,417,1,0,0,0,422,39,1,
      0,0,0,423,424,5,46,0,0,424,425,5,32,0,0,425,426,3,38,19,0,426,427,
      5,33,0,0,427,428,3,16,8,0,428,41,1,0,0,0,40,45,54,63,92,98,115,125,
      129,173,177,192,196,199,234,236,247,251,259,267,276,282,291,297,302,
      312,316,321,332,336,341,345,348,357,362,364,388,392,403,407,421
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
}

class AssignmentContext extends ParserRuleContext {
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  TerminalNode? ASSIGN() => getToken(DartParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  AssignmentContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_assignment;
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
}

class ParameterContext extends ParserRuleContext {
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  TypeContext? type() => getRuleContext<TypeContext>(0);
  TerminalNode? THIS() => getToken(DartParser.TOKEN_THIS, 0);
  TerminalNode? DOT() => getToken(DartParser.TOKEN_DOT, 0);
  ParameterContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_parameter;
}

class BlockContext extends ParserRuleContext {
  TerminalNode? GRAPH_OPEN() => getToken(DartParser.TOKEN_GRAPH_OPEN, 0);
  TerminalNode? GRAPH_CLOSE() => getToken(DartParser.TOKEN_GRAPH_CLOSE, 0);
  List<StatementContext> statements() => getRuleContexts<StatementContext>();
  StatementContext? statement(int i) => getRuleContext<StatementContext>(i);
  BlockContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_block;
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
}

class ElseBlockContext extends ParserRuleContext {
  TerminalNode? ELSE() => getToken(DartParser.TOKEN_ELSE, 0);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  ElseBlockContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_elseBlock;
}

class IfDefinitionContext extends ParserRuleContext {
  IfBlockContext? ifBlock() => getRuleContext<IfBlockContext>(0);
  List<ElseIfBlockContext> elseIfBlocks() => getRuleContexts<ElseIfBlockContext>();
  ElseIfBlockContext? elseIfBlock(int i) => getRuleContext<ElseIfBlockContext>(i);
  ElseBlockContext? elseBlock() => getRuleContext<ElseBlockContext>(0);
  IfDefinitionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_ifDefinition;
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
}

class ForInitOrIncrementStatementContext extends ParserRuleContext {
  ForInitOrIncrementStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_forInitOrIncrementStatement;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class ItemDefinitionContext extends ParserRuleContext {
  Token? name;
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  TerminalNode? VAR() => getToken(DartParser.TOKEN_VAR, 0);
  TypeContext? type() => getRuleContext<TypeContext>(0);
  ItemDefinitionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_itemDefinition;
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
}

class VarDeclarationStatementContext extends StatementContext {
  VarDeclarationContext? varDeclaration() => getRuleContext<VarDeclarationContext>(0);
  TerminalNode? SEMICOLON() => getToken(DartParser.TOKEN_SEMICOLON, 0);
  VarDeclarationStatementContext(StatementContext ctx) { copyFrom(ctx); }
}

class FunctionDefinitionStatementContext extends StatementContext {
  FunctionDefinitionContext? functionDefinition() => getRuleContext<FunctionDefinitionContext>(0);
  FunctionDefinitionStatementContext(StatementContext ctx) { copyFrom(ctx); }
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
}

class ConstDeclarationStatementContext extends StatementContext {
  TerminalNode? CONST() => getToken(DartParser.TOKEN_CONST, 0);
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  TerminalNode? ASSIGN() => getToken(DartParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? SEMICOLON() => getToken(DartParser.TOKEN_SEMICOLON, 0);
  TypeContext? type() => getRuleContext<TypeContext>(0);
  ConstDeclarationStatementContext(StatementContext ctx) { copyFrom(ctx); }
}

class AssignmentStatementContext extends StatementContext {
  AssignmentContext? assignment() => getRuleContext<AssignmentContext>(0);
  TerminalNode? SEMICOLON() => getToken(DartParser.TOKEN_SEMICOLON, 0);
  AssignmentStatementContext(StatementContext ctx) { copyFrom(ctx); }
}

class ExpressionDefinitionStatementContext extends StatementContext {
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? SEMICOLON() => getToken(DartParser.TOKEN_SEMICOLON, 0);
  ExpressionDefinitionStatementContext(StatementContext ctx) { copyFrom(ctx); }
}

class IfDefinitionStatementContext extends StatementContext {
  IfDefinitionContext? ifDefinition() => getRuleContext<IfDefinitionContext>(0);
  IfDefinitionStatementContext(StatementContext ctx) { copyFrom(ctx); }
}

class ForDefinitionStatementContext extends StatementContext {
  ForDefinitionContext? forDefinition() => getRuleContext<ForDefinitionContext>(0);
  ForDefinitionStatementContext(StatementContext ctx) { copyFrom(ctx); }
}

class ReturnStatementContext extends StatementContext {
  TerminalNode? RETURN() => getToken(DartParser.TOKEN_RETURN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? SEMICOLON() => getToken(DartParser.TOKEN_SEMICOLON, 0);
  ReturnStatementContext(StatementContext ctx) { copyFrom(ctx); }
}

class WhileDefinitionStatementContext extends StatementContext {
  WhileDefinitionContext? whileDefinition() => getRuleContext<WhileDefinitionContext>(0);
  WhileDefinitionStatementContext(StatementContext ctx) { copyFrom(ctx); }
}

class FinalDeclarationStatementContext extends StatementContext {
  TerminalNode? FINAL() => getToken(DartParser.TOKEN_FINAL, 0);
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  TerminalNode? ASSIGN() => getToken(DartParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? SEMICOLON() => getToken(DartParser.TOKEN_SEMICOLON, 0);
  TypeContext? type() => getRuleContext<TypeContext>(0);
  FinalDeclarationStatementContext(StatementContext ctx) { copyFrom(ctx); }
}

class ClassDefinitionStatementContext extends StatementContext {
  ClassDefinitionContext? classDefinition() => getRuleContext<ClassDefinitionContext>(0);
  ClassDefinitionStatementContext(StatementContext ctx) { copyFrom(ctx); }
}class VoidTypeContext extends TypeContext {
  TerminalNode? VOID() => getToken(DartParser.TOKEN_VOID, 0);
  VoidTypeContext(TypeContext ctx) { copyFrom(ctx); }
}

class CustomTypeContext extends TypeContext {
  Token? name;
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

class ListTypeContext extends TypeContext {
  TerminalNode? LIST() => getToken(DartParser.TOKEN_LIST, 0);
  ListTypeContext(TypeContext ctx) { copyFrom(ctx); }
}

class IntTypeContext extends TypeContext {
  TerminalNode? INT() => getToken(DartParser.TOKEN_INT, 0);
  IntTypeContext(TypeContext ctx) { copyFrom(ctx); }
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
}

class PostIncrementExpressionContext extends ExpressionContext {
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  List<TerminalNode> PLUSs() => getTokens(DartParser.TOKEN_PLUS);
  TerminalNode? PLUS(int i) => getToken(DartParser.TOKEN_PLUS, i);
  PostIncrementExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
}

class DoubleLiteralExpressionContext extends ExpressionContext {
  TerminalNode? DOUBLELIT() => getToken(DartParser.TOKEN_DOUBLELIT, 0);
  DoubleLiteralExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
}

class ObjectPropertyReferenceExpressionContext extends ExpressionContext {
  Token? objectName;
  Token? methodName;
  TerminalNode? DOT() => getToken(DartParser.TOKEN_DOT, 0);
  List<TerminalNode> IDs() => getTokens(DartParser.TOKEN_ID);
  TerminalNode? ID(int i) => getToken(DartParser.TOKEN_ID, i);
  ObjectPropertyReferenceExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
}

class PreDecrementExpressionContext extends ExpressionContext {
  List<TerminalNode> MINUSs() => getTokens(DartParser.TOKEN_MINUS);
  TerminalNode? MINUS(int i) => getToken(DartParser.TOKEN_MINUS, i);
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  PreDecrementExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
}

class PreIncrementExpressionContext extends ExpressionContext {
  List<TerminalNode> PLUSs() => getTokens(DartParser.TOKEN_PLUS);
  TerminalNode? PLUS(int i) => getToken(DartParser.TOKEN_PLUS, i);
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  PreIncrementExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
}

class StringLiteralExpressionContext extends ExpressionContext {
  TerminalNode? STRINGLIT() => getToken(DartParser.TOKEN_STRINGLIT, 0);
  StringLiteralExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
}

class OutputExpressionContext extends ExpressionContext {
  ExpressionContext? value;
  TerminalNode? PRINT() => getToken(DartParser.TOKEN_PRINT, 0);
  TerminalNode? PAREN_OPEN() => getToken(DartParser.TOKEN_PAREN_OPEN, 0);
  TerminalNode? PAREN_CLOSE() => getToken(DartParser.TOKEN_PAREN_CLOSE, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  OutputExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
}

class ListLiteralExpressionContext extends ExpressionContext {
  TerminalNode? SQUARE_OPEN() => getToken(DartParser.TOKEN_SQUARE_OPEN, 0);
  TerminalNode? SQUARE_CLOSE() => getToken(DartParser.TOKEN_SQUARE_CLOSE, 0);
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  List<TerminalNode> COMMAs() => getTokens(DartParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(DartParser.TOKEN_COMMA, i);
  ListLiteralExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
}

class InputExpressionContext extends ExpressionContext {
  TerminalNode? STDIN() => getToken(DartParser.TOKEN_STDIN, 0);
  TerminalNode? DOT() => getToken(DartParser.TOKEN_DOT, 0);
  TerminalNode? READLINESYNC() => getToken(DartParser.TOKEN_READLINESYNC, 0);
  TerminalNode? PAREN_OPEN() => getToken(DartParser.TOKEN_PAREN_OPEN, 0);
  TerminalNode? PAREN_CLOSE() => getToken(DartParser.TOKEN_PAREN_CLOSE, 0);
  InputExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
}

class IntLiteralExpressionContext extends ExpressionContext {
  TerminalNode? INTLIT() => getToken(DartParser.TOKEN_INTLIT, 0);
  IntLiteralExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
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
}

class VarReferenceExpressionContext extends ExpressionContext {
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  VarReferenceExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
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
}

class UnaryLogicNegationExpressionContext extends ExpressionContext {
  Token? operand;
  ExpressionContext? value;
  TerminalNode? NOT() => getToken(DartParser.TOKEN_NOT, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  UnaryLogicNegationExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
}

class UnaryMathExpressionContext extends ExpressionContext {
  Token? operand;
  ExpressionContext? value;
  TerminalNode? MINUS() => getToken(DartParser.TOKEN_MINUS, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? PLUS() => getToken(DartParser.TOKEN_PLUS, 0);
  UnaryMathExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
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
}

class BoolLiteralExpressionContext extends ExpressionContext {
  TerminalNode? BOOLLIT() => getToken(DartParser.TOKEN_BOOLLIT, 0);
  BoolLiteralExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
}

class PostDecrementExpressionContext extends ExpressionContext {
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  List<TerminalNode> MINUSs() => getTokens(DartParser.TOKEN_MINUS);
  TerminalNode? MINUS(int i) => getToken(DartParser.TOKEN_MINUS, i);
  PostDecrementExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
}

class ParenthesysExpressionContext extends ExpressionContext {
  ExpressionContext? value;
  TerminalNode? PAREN_OPEN() => getToken(DartParser.TOKEN_PAREN_OPEN, 0);
  TerminalNode? PAREN_CLOSE() => getToken(DartParser.TOKEN_PAREN_CLOSE, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  ParenthesysExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
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
}

class ClassMethodDeclarationStatementContext extends ClassStatementContext {
  FunctionDefinitionContext? functionDefinition() => getRuleContext<FunctionDefinitionContext>(0);
  ClassMethodDeclarationStatementContext(ClassStatementContext ctx) { copyFrom(ctx); }
}

class ClassVarDeclarationStatementContext extends ClassStatementContext {
  TypeContext? type() => getRuleContext<TypeContext>(0);
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  TerminalNode? SEMICOLON() => getToken(DartParser.TOKEN_SEMICOLON, 0);
  TerminalNode? ASSIGN() => getToken(DartParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  ClassVarDeclarationStatementContext(ClassStatementContext ctx) { copyFrom(ctx); }
}

class ClassImmutableVarDeclarationStatementContext extends ClassStatementContext {
  TerminalNode? FINAL() => getToken(DartParser.TOKEN_FINAL, 0);
  TerminalNode? ID() => getToken(DartParser.TOKEN_ID, 0);
  TerminalNode? SEMICOLON() => getToken(DartParser.TOKEN_SEMICOLON, 0);
  TypeContext? type() => getRuleContext<TypeContext>(0);
  TerminalNode? ASSIGN() => getToken(DartParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  ClassImmutableVarDeclarationStatementContext(ClassStatementContext ctx) { copyFrom(ctx); }
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
}class VarDeclarationForStatementContext extends ForInitOrIncrementStatementContext {
  VarDeclarationContext? varDeclaration() => getRuleContext<VarDeclarationContext>(0);
  VarDeclarationForStatementContext(ForInitOrIncrementStatementContext ctx) { copyFrom(ctx); }
}

class ExpressionForStatementContext extends ForInitOrIncrementStatementContext {
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  ExpressionForStatementContext(ForInitOrIncrementStatementContext ctx) { copyFrom(ctx); }
}

class AssignmentForStatementContext extends ForInitOrIncrementStatementContext {
  AssignmentContext? assignment() => getRuleContext<AssignmentContext>(0);
  AssignmentForStatementContext(ForInitOrIncrementStatementContext ctx) { copyFrom(ctx); }
}class StandardForConditionContext extends ForConditionContext {
  ForInitOrIncrementStatementContext? initStatement;
  ForInitOrIncrementStatementContext? incrementStatament;
  List<TerminalNode> SEMICOLONs() => getTokens(DartParser.TOKEN_SEMICOLON);
  TerminalNode? SEMICOLON(int i) => getToken(DartParser.TOKEN_SEMICOLON, i);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  List<ForInitOrIncrementStatementContext> forInitOrIncrementStatements() => getRuleContexts<ForInitOrIncrementStatementContext>();
  ForInitOrIncrementStatementContext? forInitOrIncrementStatement(int i) => getRuleContext<ForInitOrIncrementStatementContext>(i);
  StandardForConditionContext(ForConditionContext ctx) { copyFrom(ctx); }
}

class ForEachConditionContext extends ForConditionContext {
  ItemDefinitionContext? itemDefinition() => getRuleContext<ItemDefinitionContext>(0);
  TerminalNode? IN() => getToken(DartParser.TOKEN_IN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  ForEachConditionContext(ForConditionContext ctx) { copyFrom(ctx); }
}