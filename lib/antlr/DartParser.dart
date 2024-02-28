// Generated from D:/Progetti personali/dart2kotlin/dart2ast_engine/antrl4/DartParser.g4 by ANTLR 4.13.1
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
                   TOKEN_LOWER_THAN = 27, TOKEN_EQUAL = 28, TOKEN_NOT_EQUAL = 29, 
                   TOKEN_AND = 30, TOKEN_OR = 31, TOKEN_NOT = 32, TOKEN_PAREN_OPEN = 33, 
                   TOKEN_PAREN_CLOSE = 34, TOKEN_SQUARE_OPEN = 35, TOKEN_SQUARE_CLOSE = 36, 
                   TOKEN_GRAPH_OPEN = 37, TOKEN_GRAPH_CLOSE = 38, TOKEN_COMMA = 39, 
                   TOKEN_DOT = 40, TOKEN_COLONS = 41, TOKEN_RETURN = 42, 
                   TOKEN_EXTENDS = 43, TOKEN_IF = 44, TOKEN_ELSE = 45, TOKEN_WHILE = 46, 
                   TOKEN_FOR = 47, TOKEN_IN = 48, TOKEN_STDIN = 49, TOKEN_READLINESYNC = 50, 
                   TOKEN_PRINT = 51, TOKEN_ID = 52, TOKEN_UnterminatedStringLiteral = 53;

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
      "'<='", "'>'", "'<'", "'=='", "'!='", "'&&'", "'||'", "'!'", "'('", 
      "')'", "'['", "']'", "'{'", "'}'", "','", "'.'", "':'", "'return'", 
      "'extends'", "'if'", "'else'", "'while'", "'for'", "'in'", "'stdin'", 
      "'readLineSync'", "'print'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, "WS", "VAR", "FINAL", "CONST", "CLASS", "THIS", "INT", "DOUBLE", 
      "STRING", "BOOL", "VOID", "LIST", "ASSIGN", "SEMICOLON", "INTLIT", 
      "DOUBLELIT", "BOOLLIT", "STRINGLIT", "PLUS", "MINUS", "DIVISION", 
      "TIMES", "MODULE", "GREATER_EQUAL_THAN", "LOWER_EQUAL_THAN", "GREATER_THAN", 
      "LOWER_THAN", "EQUAL", "NOT_EQUAL", "AND", "OR", "NOT", "PAREN_OPEN", 
      "PAREN_CLOSE", "SQUARE_OPEN", "SQUARE_CLOSE", "GRAPH_OPEN", "GRAPH_CLOSE", 
      "COMMA", "DOT", "COLONS", "RETURN", "EXTENDS", "IF", "ELSE", "WHILE", 
      "FOR", "IN", "STDIN", "READLINESYNC", "PRINT", "ID", "UnterminatedStringLiteral"
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
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 7551493106278332) != 0));
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
    int _la;
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
      state = 103;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_ASSIGN) {
        state = 101;
        match(TOKEN_ASSIGN);
        state = 102;
        expression(0);
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

  AssignmentContext assignment() {
    dynamic _localctx = AssignmentContext(context, state);
    enterRule(_localctx, 6, RULE_assignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 105;
      match(TOKEN_ID);
      state = 106;
      match(TOKEN_ASSIGN);
      state = 107;
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
      state = 116;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_INT:
        _localctx = IntTypeContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 109;
        match(TOKEN_INT);
        break;
      case TOKEN_DOUBLE:
        _localctx = DoubleTypeContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 110;
        match(TOKEN_DOUBLE);
        break;
      case TOKEN_BOOL:
        _localctx = BoolTypeContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 111;
        match(TOKEN_BOOL);
        break;
      case TOKEN_STRING:
        _localctx = StringTypeContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 112;
        match(TOKEN_STRING);
        break;
      case TOKEN_VOID:
        _localctx = VoidTypeContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 113;
        match(TOKEN_VOID);
        break;
      case TOKEN_LIST:
        _localctx = ListTypeContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 114;
        match(TOKEN_LIST);
        break;
      case TOKEN_ID:
        _localctx = CustomTypeContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 115;
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
      state = 200;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 13, context)) {
      case 1:
        _localctx = BoolLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;

        state = 119;
        match(TOKEN_BOOLLIT);
        break;
      case 2:
        _localctx = IntLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 120;
        match(TOKEN_INTLIT);
        break;
      case 3:
        _localctx = DoubleLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 121;
        match(TOKEN_DOUBLELIT);
        break;
      case 4:
        _localctx = StringLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 122;
        match(TOKEN_STRINGLIT);
        break;
      case 5:
        _localctx = ListLiteralExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 123;
        match(TOKEN_SQUARE_OPEN);
        state = 130;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 7318396641181696) != 0)) {
          state = 124;
          expression(0);
          state = 126;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_COMMA) {
            state = 125;
            match(TOKEN_COMMA);
          }

          state = 132;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 133;
        match(TOKEN_SQUARE_CLOSE);
        break;
      case 6:
        _localctx = UnaryMathExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 134;
        _localctx.operand = match(TOKEN_MINUS);
        state = 135;
        _localctx.value = expression(14);
        break;
      case 7:
        _localctx = UnaryMathExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 136;
        _localctx.operand = match(TOKEN_PLUS);
        state = 137;
        _localctx.value = expression(13);
        break;
      case 8:
        _localctx = UnaryLogicNegationExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 138;
        _localctx.operand = match(TOKEN_NOT);
        state = 139;
        _localctx.value = expression(12);
        break;
      case 9:
        _localctx = PreIncrementExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 140;
        match(TOKEN_PLUS);
        state = 141;
        match(TOKEN_PLUS);
        state = 142;
        match(TOKEN_ID);
        break;
      case 10:
        _localctx = PostIncrementExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 143;
        match(TOKEN_ID);
        state = 144;
        match(TOKEN_PLUS);
        state = 145;
        match(TOKEN_PLUS);
        break;
      case 11:
        _localctx = PreDecrementExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 146;
        match(TOKEN_MINUS);
        state = 147;
        match(TOKEN_MINUS);
        state = 148;
        match(TOKEN_ID);
        break;
      case 12:
        _localctx = PostDecrementExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 149;
        match(TOKEN_ID);
        state = 150;
        match(TOKEN_MINUS);
        state = 151;
        match(TOKEN_MINUS);
        break;
      case 13:
        _localctx = InputExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 152;
        match(TOKEN_STDIN);
        state = 153;
        match(TOKEN_DOT);
        state = 154;
        match(TOKEN_READLINESYNC);
        state = 155;
        match(TOKEN_PAREN_OPEN);
        state = 156;
        match(TOKEN_PAREN_CLOSE);
        break;
      case 14:
        _localctx = OutputExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 157;
        match(TOKEN_PRINT);
        state = 158;
        match(TOKEN_PAREN_OPEN);
        state = 159;
        _localctx.value = expression(0);
        state = 160;
        match(TOKEN_PAREN_CLOSE);
        break;
      case 15:
        _localctx = ParenthesysExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 162;
        match(TOKEN_PAREN_OPEN);
        state = 163;
        _localctx.value = expression(0);
        state = 164;
        match(TOKEN_PAREN_CLOSE);
        break;
      case 16:
        _localctx = VarReferenceExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 166;
        match(TOKEN_ID);
        break;
      case 17:
        _localctx = FunctionCallExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 167;
        match(TOKEN_ID);
        state = 168;
        match(TOKEN_PAREN_OPEN);
        state = 174;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 9, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 169;
            expression(0);
            state = 170;
            match(TOKEN_COMMA); 
          }
          state = 176;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 9, context);
        }
        state = 178;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 7318396641181696) != 0)) {
          state = 177;
          expression(0);
        }

        state = 180;
        match(TOKEN_PAREN_CLOSE);
        break;
      case 18:
        _localctx = ObjectPropertyReferenceExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 181;
        _localctx.objectName = match(TOKEN_ID);
        state = 182;
        match(TOKEN_DOT);
        state = 183;
        _localctx.methodName = match(TOKEN_ID);
        break;
      case 19:
        _localctx = ObjectMethodCallExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 184;
        _localctx.objectName = match(TOKEN_ID);
        state = 185;
        match(TOKEN_DOT);
        state = 186;
        _localctx.methodName = match(TOKEN_ID);
        state = 187;
        match(TOKEN_PAREN_OPEN);
        state = 193;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 11, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 188;
            expression(0);
            state = 189;
            match(TOKEN_COMMA); 
          }
          state = 195;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 11, context);
        }
        state = 197;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 7318396641181696) != 0)) {
          state = 196;
          expression(0);
        }

        state = 199;
        match(TOKEN_PAREN_CLOSE);
        break;
      }
      context!.stop = tokenStream.LT(-1);
      state = 240;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 15, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 238;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 14, context)) {
          case 1:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 202;
            if (!(precpred(context, 26))) {
              throw FailedPredicateException(this, "precpred(context, 26)");
            }
            state = 203;
            _localctx.operand = match(TOKEN_PLUS);
            state = 204;
            _localctx.right = expression(27);
            break;
          case 2:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 205;
            if (!(precpred(context, 25))) {
              throw FailedPredicateException(this, "precpred(context, 25)");
            }
            state = 206;
            _localctx.operand = match(TOKEN_MINUS);
            state = 207;
            _localctx.right = expression(26);
            break;
          case 3:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 208;
            if (!(precpred(context, 24))) {
              throw FailedPredicateException(this, "precpred(context, 24)");
            }
            state = 209;
            _localctx.operand = match(TOKEN_TIMES);
            state = 210;
            _localctx.right = expression(25);
            break;
          case 4:
            _localctx = BinaryMathExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 211;
            if (!(precpred(context, 23))) {
              throw FailedPredicateException(this, "precpred(context, 23)");
            }
            state = 212;
            _localctx.operand = match(TOKEN_DIVISION);
            state = 213;
            _localctx.right = expression(24);
            break;
          case 5:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 214;
            if (!(precpred(context, 22))) {
              throw FailedPredicateException(this, "precpred(context, 22)");
            }
            state = 215;
            _localctx.operand = match(TOKEN_AND);
            state = 216;
            _localctx.right = expression(23);
            break;
          case 6:
            _localctx = BinaryLogicExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 217;
            if (!(precpred(context, 21))) {
              throw FailedPredicateException(this, "precpred(context, 21)");
            }
            state = 218;
            _localctx.operand = match(TOKEN_OR);
            state = 219;
            _localctx.right = expression(22);
            break;
          case 7:
            _localctx = BinaryComparisonExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 220;
            if (!(precpred(context, 20))) {
              throw FailedPredicateException(this, "precpred(context, 20)");
            }
            state = 221;
            _localctx.operand = match(TOKEN_GREATER_THAN);
            state = 222;
            _localctx.right = expression(21);
            break;
          case 8:
            _localctx = BinaryComparisonExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 223;
            if (!(precpred(context, 19))) {
              throw FailedPredicateException(this, "precpred(context, 19)");
            }
            state = 224;
            _localctx.operand = match(TOKEN_LOWER_THAN);
            state = 225;
            _localctx.right = expression(20);
            break;
          case 9:
            _localctx = BinaryComparisonExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 226;
            if (!(precpred(context, 18))) {
              throw FailedPredicateException(this, "precpred(context, 18)");
            }
            state = 227;
            _localctx.operand = match(TOKEN_GREATER_EQUAL_THAN);
            state = 228;
            _localctx.right = expression(19);
            break;
          case 10:
            _localctx = BinaryComparisonExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 229;
            if (!(precpred(context, 17))) {
              throw FailedPredicateException(this, "precpred(context, 17)");
            }
            state = 230;
            _localctx.operand = match(TOKEN_LOWER_EQUAL_THAN);
            state = 231;
            _localctx.right = expression(18);
            break;
          case 11:
            _localctx = BinaryComparisonExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 232;
            if (!(precpred(context, 16))) {
              throw FailedPredicateException(this, "precpred(context, 16)");
            }
            state = 233;
            _localctx.operand = match(TOKEN_EQUAL);
            state = 234;
            _localctx.right = expression(17);
            break;
          case 12:
            _localctx = BinaryComparisonExpressionContext(new ExpressionContext(_parentctx, _parentState));
            _localctx.left = _prevctx;
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 235;
            if (!(precpred(context, 15))) {
              throw FailedPredicateException(this, "precpred(context, 15)");
            }
            state = 236;
            _localctx.operand = match(TOKEN_NOT_EQUAL);
            state = 237;
            _localctx.right = expression(16);
            break;
          } 
        }
        state = 242;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 15, context);
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
      state = 243;
      _localctx.returnType = type();
      state = 244;
      _localctx.name = match(TOKEN_ID);
      state = 245;
      match(TOKEN_PAREN_OPEN);
      state = 251;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 16, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 246;
          parameter();
          state = 247;
          match(TOKEN_COMMA); 
        }
        state = 253;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 16, context);
      }
      state = 255;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 4503599627378624) != 0)) {
        state = 254;
        parameter();
      }

      state = 257;
      match(TOKEN_PAREN_CLOSE);
      state = 258;
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
      state = 263;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_INT:
      case TOKEN_DOUBLE:
      case TOKEN_STRING:
      case TOKEN_BOOL:
      case TOKEN_VOID:
      case TOKEN_LIST:
      case TOKEN_ID:
        state = 260;
        type();
        break;
      case TOKEN_THIS:
        state = 261;
        match(TOKEN_THIS);
        state = 262;
        match(TOKEN_DOT);
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 265;
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
      state = 267;
      match(TOKEN_GRAPH_OPEN);
      state = 271;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 7551493106278332) != 0)) {
        state = 268;
        statement();
        state = 273;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 274;
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
      state = 276;
      match(TOKEN_CLASS);
      state = 277;
      _localctx.name = match(TOKEN_ID);
      state = 280;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_EXTENDS) {
        state = 278;
        match(TOKEN_EXTENDS);
        state = 279;
        _localctx.parentName = match(TOKEN_ID);
      }

      state = 282;
      match(TOKEN_GRAPH_OPEN);
      state = 286;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 4503599627378568) != 0)) {
        state = 283;
        classStatement();
        state = 288;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 289;
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
      state = 352;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 32, context)) {
      case 1:
        _localctx = ClassVarDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 291;
        type();
        state = 292;
        match(TOKEN_ID);
        state = 295;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_ASSIGN) {
          state = 293;
          match(TOKEN_ASSIGN);
          state = 294;
          expression(0);
        }

        state = 297;
        match(TOKEN_SEMICOLON);
        break;
      case 2:
        _localctx = ClassImmutableVarDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 299;
        match(TOKEN_FINAL);
        state = 301;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 23, context)) {
        case 1:
          state = 300;
          type();
          break;
        }
        state = 303;
        match(TOKEN_ID);
        state = 306;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_ASSIGN) {
          state = 304;
          match(TOKEN_ASSIGN);
          state = 305;
          expression(0);
        }

        state = 308;
        match(TOKEN_SEMICOLON);
        break;
      case 3:
        _localctx = MainClassConstructorDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 309;
        _localctx.className = match(TOKEN_ID);
        state = 310;
        match(TOKEN_PAREN_OPEN);
        state = 316;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 25, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 311;
            parameter();
            state = 312;
            match(TOKEN_COMMA); 
          }
          state = 318;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 25, context);
        }
        state = 320;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 4503599627378624) != 0)) {
          state = 319;
          parameter();
        }

        state = 322;
        match(TOKEN_PAREN_CLOSE);
        state = 325;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_GRAPH_OPEN:
          state = 323;
          block();
          break;
        case TOKEN_SEMICOLON:
          state = 324;
          match(TOKEN_SEMICOLON);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case 4:
        _localctx = NamedClassConstructorDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 327;
        _localctx.className = match(TOKEN_ID);
        state = 328;
        match(TOKEN_DOT);
        state = 329;
        _localctx.costructorName = match(TOKEN_ID);
        state = 330;
        match(TOKEN_PAREN_OPEN);
        state = 336;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 28, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 331;
            parameter();
            state = 332;
            match(TOKEN_COMMA); 
          }
          state = 338;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 28, context);
        }
        state = 340;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 4503599627378624) != 0)) {
          state = 339;
          parameter();
        }

        state = 342;
        match(TOKEN_PAREN_CLOSE);
        state = 345;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_COLONS) {
          state = 343;
          match(TOKEN_COLONS);
          state = 344;
          thisConstructorCall();
        }

        state = 349;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_GRAPH_OPEN:
          state = 347;
          block();
          break;
        case TOKEN_SEMICOLON:
          state = 348;
          match(TOKEN_SEMICOLON);
          break;
        default:
          throw NoViableAltException(this);
        }
        break;
      case 5:
        _localctx = ClassMethodDeclarationStatementContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 351;
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
      state = 354;
      match(TOKEN_THIS);
      state = 355;
      match(TOKEN_PAREN_OPEN);
      state = 361;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 33, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 356;
          expression(0);
          state = 357;
          match(TOKEN_COMMA); 
        }
        state = 363;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 33, context);
      }
      state = 368;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 7318396641181696) != 0)) {
        state = 364;
        expression(0);
        state = 366;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_COMMA) {
          state = 365;
          match(TOKEN_COMMA);
        }

      }

      state = 370;
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
      state = 372;
      match(TOKEN_IF);
      state = 373;
      match(TOKEN_PAREN_OPEN);
      state = 374;
      expression(0);
      state = 375;
      match(TOKEN_PAREN_CLOSE);
      state = 376;
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
      state = 378;
      match(TOKEN_ELSE);
      state = 379;
      match(TOKEN_IF);
      state = 380;
      match(TOKEN_PAREN_OPEN);
      state = 381;
      expression(0);
      state = 382;
      match(TOKEN_PAREN_CLOSE);
      state = 383;
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
      state = 385;
      match(TOKEN_ELSE);
      state = 386;
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
      state = 388;
      ifBlock();
      state = 392;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 36, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 389;
          elseIfBlock(); 
        }
        state = 394;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 36, context);
      }
      state = 396;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_ELSE) {
        state = 395;
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
      state = 398;
      match(TOKEN_WHILE);
      state = 399;
      match(TOKEN_PAREN_OPEN);
      state = 400;
      expression(0);
      state = 401;
      match(TOKEN_PAREN_CLOSE);
      state = 402;
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
      state = 407;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 38, context)) {
      case 1:
        _localctx = VarDeclarationForStatementContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 404;
        varDeclaration();
        break;
      case 2:
        _localctx = AssignmentForStatementContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 405;
        assignment();
        break;
      case 3:
        _localctx = ExpressionForStatementContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 406;
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
      state = 411;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_VAR:
        state = 409;
        match(TOKEN_VAR);
        break;
      case TOKEN_INT:
      case TOKEN_DOUBLE:
      case TOKEN_STRING:
      case TOKEN_BOOL:
      case TOKEN_VOID:
      case TOKEN_LIST:
      case TOKEN_ID:
        state = 410;
        type();
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 413;
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
      state = 425;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 40, context)) {
      case 1:
        _localctx = StandardForConditionContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 415;
        _localctx.initStatement = forInitOrIncrementStatement();
        state = 416;
        match(TOKEN_SEMICOLON);
        state = 417;
        expression(0);
        state = 418;
        match(TOKEN_SEMICOLON);
        state = 419;
        _localctx.incrementStatament = forInitOrIncrementStatement();
        break;
      case 2:
        _localctx = ForEachConditionContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 421;
        itemDefinition();
        state = 422;
        match(TOKEN_IN);
        state = 423;
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
      state = 427;
      match(TOKEN_FOR);
      state = 428;
      match(TOKEN_PAREN_OPEN);
      state = 429;
      forCondition();
      state = 430;
      match(TOKEN_PAREN_CLOSE);
      state = 431;
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
      case 0: return precpred(context, 26);
      case 1: return precpred(context, 25);
      case 2: return precpred(context, 24);
      case 3: return precpred(context, 23);
      case 4: return precpred(context, 22);
      case 5: return precpred(context, 21);
      case 6: return precpred(context, 20);
      case 7: return precpred(context, 19);
      case 8: return precpred(context, 18);
      case 9: return precpred(context, 17);
      case 10: return precpred(context, 16);
      case 11: return precpred(context, 15);
    }
    return true;
  }

  static const List<int> _serializedATN = [
      4,1,53,434,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,
      14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,
      1,0,4,0,44,8,0,11,0,12,0,45,1,0,1,0,1,1,1,1,1,1,1,1,1,1,3,1,55,8,1,
      1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,64,8,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
      1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
      1,1,1,1,1,1,1,3,1,93,8,1,1,2,1,2,1,2,1,2,3,2,99,8,2,1,2,1,2,1,2,3,
      2,104,8,2,1,3,1,3,1,3,1,3,1,4,1,4,1,4,1,4,1,4,1,4,1,4,3,4,117,8,4,
      1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,3,5,127,8,5,5,5,129,8,5,10,5,12,5,
      132,9,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,
      5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,
      1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,5,5,173,8,5,10,5,12,5,176,9,5,1,5,
      3,5,179,8,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,5,5,192,8,
      5,10,5,12,5,195,9,5,1,5,3,5,198,8,5,1,5,3,5,201,8,5,1,5,1,5,1,5,1,
      5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,
      1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,5,
      5,239,8,5,10,5,12,5,242,9,5,1,6,1,6,1,6,1,6,1,6,1,6,5,6,250,8,6,10,
      6,12,6,253,9,6,1,6,3,6,256,8,6,1,6,1,6,1,6,1,7,1,7,1,7,3,7,264,8,7,
      1,7,1,7,1,8,1,8,5,8,270,8,8,10,8,12,8,273,9,8,1,8,1,8,1,9,1,9,1,9,
      1,9,3,9,281,8,9,1,9,1,9,5,9,285,8,9,10,9,12,9,288,9,9,1,9,1,9,1,10,
      1,10,1,10,1,10,3,10,296,8,10,1,10,1,10,1,10,1,10,3,10,302,8,10,1,10,
      1,10,1,10,3,10,307,8,10,1,10,1,10,1,10,1,10,1,10,1,10,5,10,315,8,10,
      10,10,12,10,318,9,10,1,10,3,10,321,8,10,1,10,1,10,1,10,3,10,326,8,
      10,1,10,1,10,1,10,1,10,1,10,1,10,1,10,5,10,335,8,10,10,10,12,10,338,
      9,10,1,10,3,10,341,8,10,1,10,1,10,1,10,3,10,346,8,10,1,10,1,10,3,10,
      350,8,10,1,10,3,10,353,8,10,1,11,1,11,1,11,1,11,1,11,5,11,360,8,11,
      10,11,12,11,363,9,11,1,11,1,11,3,11,367,8,11,3,11,369,8,11,1,11,1,
      11,1,12,1,12,1,12,1,12,1,12,1,12,1,13,1,13,1,13,1,13,1,13,1,13,1,13,
      1,14,1,14,1,14,1,15,1,15,5,15,391,8,15,10,15,12,15,394,9,15,1,15,3,
      15,397,8,15,1,16,1,16,1,16,1,16,1,16,1,16,1,17,1,17,1,17,3,17,408,
      8,17,1,18,1,18,3,18,412,8,18,1,18,1,18,1,19,1,19,1,19,1,19,1,19,1,
      19,1,19,1,19,1,19,1,19,3,19,426,8,19,1,20,1,20,1,20,1,20,1,20,1,20,
      1,20,0,1,10,21,0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,
      38,40,0,0,500,0,43,1,0,0,0,2,92,1,0,0,0,4,98,1,0,0,0,6,105,1,0,0,0,
      8,116,1,0,0,0,10,200,1,0,0,0,12,243,1,0,0,0,14,263,1,0,0,0,16,267,
      1,0,0,0,18,276,1,0,0,0,20,352,1,0,0,0,22,354,1,0,0,0,24,372,1,0,0,
      0,26,378,1,0,0,0,28,385,1,0,0,0,30,388,1,0,0,0,32,398,1,0,0,0,34,407,
      1,0,0,0,36,411,1,0,0,0,38,425,1,0,0,0,40,427,1,0,0,0,42,44,3,2,1,0,
      43,42,1,0,0,0,44,45,1,0,0,0,45,43,1,0,0,0,45,46,1,0,0,0,46,47,1,0,
      0,0,47,48,5,0,0,1,48,1,1,0,0,0,49,50,3,4,2,0,50,51,5,14,0,0,51,93,
      1,0,0,0,52,54,5,3,0,0,53,55,3,8,4,0,54,53,1,0,0,0,54,55,1,0,0,0,55,
      56,1,0,0,0,56,57,5,52,0,0,57,58,5,13,0,0,58,59,3,10,5,0,59,60,5,14,
      0,0,60,93,1,0,0,0,61,63,5,4,0,0,62,64,3,8,4,0,63,62,1,0,0,0,63,64,
      1,0,0,0,64,65,1,0,0,0,65,66,5,52,0,0,66,67,5,13,0,0,67,68,3,10,5,0,
      68,69,5,14,0,0,69,93,1,0,0,0,70,71,3,6,3,0,71,72,5,14,0,0,72,93,1,
      0,0,0,73,74,5,52,0,0,74,75,5,40,0,0,75,76,5,52,0,0,76,77,5,13,0,0,
      77,78,3,10,5,0,78,79,5,14,0,0,79,93,1,0,0,0,80,93,3,12,6,0,81,93,3,
      18,9,0,82,83,3,10,5,0,83,84,5,14,0,0,84,93,1,0,0,0,85,86,5,42,0,0,
      86,87,3,10,5,0,87,88,5,14,0,0,88,93,1,0,0,0,89,93,3,30,15,0,90,93,
      3,32,16,0,91,93,3,40,20,0,92,49,1,0,0,0,92,52,1,0,0,0,92,61,1,0,0,
      0,92,70,1,0,0,0,92,73,1,0,0,0,92,80,1,0,0,0,92,81,1,0,0,0,92,82,1,
      0,0,0,92,85,1,0,0,0,92,89,1,0,0,0,92,90,1,0,0,0,92,91,1,0,0,0,93,3,
      1,0,0,0,94,99,5,2,0,0,95,96,5,2,0,0,96,99,3,8,4,0,97,99,3,8,4,0,98,
      94,1,0,0,0,98,95,1,0,0,0,98,97,1,0,0,0,99,100,1,0,0,0,100,103,5,52,
      0,0,101,102,5,13,0,0,102,104,3,10,5,0,103,101,1,0,0,0,103,104,1,0,
      0,0,104,5,1,0,0,0,105,106,5,52,0,0,106,107,5,13,0,0,107,108,3,10,5,
      0,108,7,1,0,0,0,109,117,5,7,0,0,110,117,5,8,0,0,111,117,5,10,0,0,112,
      117,5,9,0,0,113,117,5,11,0,0,114,117,5,12,0,0,115,117,5,52,0,0,116,
      109,1,0,0,0,116,110,1,0,0,0,116,111,1,0,0,0,116,112,1,0,0,0,116,113,
      1,0,0,0,116,114,1,0,0,0,116,115,1,0,0,0,117,9,1,0,0,0,118,119,6,5,
      -1,0,119,201,5,17,0,0,120,201,5,15,0,0,121,201,5,16,0,0,122,201,5,
      18,0,0,123,130,5,35,0,0,124,126,3,10,5,0,125,127,5,39,0,0,126,125,
      1,0,0,0,126,127,1,0,0,0,127,129,1,0,0,0,128,124,1,0,0,0,129,132,1,
      0,0,0,130,128,1,0,0,0,130,131,1,0,0,0,131,133,1,0,0,0,132,130,1,0,
      0,0,133,201,5,36,0,0,134,135,5,20,0,0,135,201,3,10,5,14,136,137,5,
      19,0,0,137,201,3,10,5,13,138,139,5,32,0,0,139,201,3,10,5,12,140,141,
      5,19,0,0,141,142,5,19,0,0,142,201,5,52,0,0,143,144,5,52,0,0,144,145,
      5,19,0,0,145,201,5,19,0,0,146,147,5,20,0,0,147,148,5,20,0,0,148,201,
      5,52,0,0,149,150,5,52,0,0,150,151,5,20,0,0,151,201,5,20,0,0,152,153,
      5,49,0,0,153,154,5,40,0,0,154,155,5,50,0,0,155,156,5,33,0,0,156,201,
      5,34,0,0,157,158,5,51,0,0,158,159,5,33,0,0,159,160,3,10,5,0,160,161,
      5,34,0,0,161,201,1,0,0,0,162,163,5,33,0,0,163,164,3,10,5,0,164,165,
      5,34,0,0,165,201,1,0,0,0,166,201,5,52,0,0,167,168,5,52,0,0,168,174,
      5,33,0,0,169,170,3,10,5,0,170,171,5,39,0,0,171,173,1,0,0,0,172,169,
      1,0,0,0,173,176,1,0,0,0,174,172,1,0,0,0,174,175,1,0,0,0,175,178,1,
      0,0,0,176,174,1,0,0,0,177,179,3,10,5,0,178,177,1,0,0,0,178,179,1,0,
      0,0,179,180,1,0,0,0,180,201,5,34,0,0,181,182,5,52,0,0,182,183,5,40,
      0,0,183,201,5,52,0,0,184,185,5,52,0,0,185,186,5,40,0,0,186,187,5,52,
      0,0,187,193,5,33,0,0,188,189,3,10,5,0,189,190,5,39,0,0,190,192,1,0,
      0,0,191,188,1,0,0,0,192,195,1,0,0,0,193,191,1,0,0,0,193,194,1,0,0,
      0,194,197,1,0,0,0,195,193,1,0,0,0,196,198,3,10,5,0,197,196,1,0,0,0,
      197,198,1,0,0,0,198,199,1,0,0,0,199,201,5,34,0,0,200,118,1,0,0,0,200,
      120,1,0,0,0,200,121,1,0,0,0,200,122,1,0,0,0,200,123,1,0,0,0,200,134,
      1,0,0,0,200,136,1,0,0,0,200,138,1,0,0,0,200,140,1,0,0,0,200,143,1,
      0,0,0,200,146,1,0,0,0,200,149,1,0,0,0,200,152,1,0,0,0,200,157,1,0,
      0,0,200,162,1,0,0,0,200,166,1,0,0,0,200,167,1,0,0,0,200,181,1,0,0,
      0,200,184,1,0,0,0,201,240,1,0,0,0,202,203,10,26,0,0,203,204,5,19,0,
      0,204,239,3,10,5,27,205,206,10,25,0,0,206,207,5,20,0,0,207,239,3,10,
      5,26,208,209,10,24,0,0,209,210,5,22,0,0,210,239,3,10,5,25,211,212,
      10,23,0,0,212,213,5,21,0,0,213,239,3,10,5,24,214,215,10,22,0,0,215,
      216,5,30,0,0,216,239,3,10,5,23,217,218,10,21,0,0,218,219,5,31,0,0,
      219,239,3,10,5,22,220,221,10,20,0,0,221,222,5,26,0,0,222,239,3,10,
      5,21,223,224,10,19,0,0,224,225,5,27,0,0,225,239,3,10,5,20,226,227,
      10,18,0,0,227,228,5,24,0,0,228,239,3,10,5,19,229,230,10,17,0,0,230,
      231,5,25,0,0,231,239,3,10,5,18,232,233,10,16,0,0,233,234,5,28,0,0,
      234,239,3,10,5,17,235,236,10,15,0,0,236,237,5,29,0,0,237,239,3,10,
      5,16,238,202,1,0,0,0,238,205,1,0,0,0,238,208,1,0,0,0,238,211,1,0,0,
      0,238,214,1,0,0,0,238,217,1,0,0,0,238,220,1,0,0,0,238,223,1,0,0,0,
      238,226,1,0,0,0,238,229,1,0,0,0,238,232,1,0,0,0,238,235,1,0,0,0,239,
      242,1,0,0,0,240,238,1,0,0,0,240,241,1,0,0,0,241,11,1,0,0,0,242,240,
      1,0,0,0,243,244,3,8,4,0,244,245,5,52,0,0,245,251,5,33,0,0,246,247,
      3,14,7,0,247,248,5,39,0,0,248,250,1,0,0,0,249,246,1,0,0,0,250,253,
      1,0,0,0,251,249,1,0,0,0,251,252,1,0,0,0,252,255,1,0,0,0,253,251,1,
      0,0,0,254,256,3,14,7,0,255,254,1,0,0,0,255,256,1,0,0,0,256,257,1,0,
      0,0,257,258,5,34,0,0,258,259,3,16,8,0,259,13,1,0,0,0,260,264,3,8,4,
      0,261,262,5,6,0,0,262,264,5,40,0,0,263,260,1,0,0,0,263,261,1,0,0,0,
      264,265,1,0,0,0,265,266,5,52,0,0,266,15,1,0,0,0,267,271,5,37,0,0,268,
      270,3,2,1,0,269,268,1,0,0,0,270,273,1,0,0,0,271,269,1,0,0,0,271,272,
      1,0,0,0,272,274,1,0,0,0,273,271,1,0,0,0,274,275,5,38,0,0,275,17,1,
      0,0,0,276,277,5,5,0,0,277,280,5,52,0,0,278,279,5,43,0,0,279,281,5,
      52,0,0,280,278,1,0,0,0,280,281,1,0,0,0,281,282,1,0,0,0,282,286,5,37,
      0,0,283,285,3,20,10,0,284,283,1,0,0,0,285,288,1,0,0,0,286,284,1,0,
      0,0,286,287,1,0,0,0,287,289,1,0,0,0,288,286,1,0,0,0,289,290,5,38,0,
      0,290,19,1,0,0,0,291,292,3,8,4,0,292,295,5,52,0,0,293,294,5,13,0,0,
      294,296,3,10,5,0,295,293,1,0,0,0,295,296,1,0,0,0,296,297,1,0,0,0,297,
      298,5,14,0,0,298,353,1,0,0,0,299,301,5,3,0,0,300,302,3,8,4,0,301,300,
      1,0,0,0,301,302,1,0,0,0,302,303,1,0,0,0,303,306,5,52,0,0,304,305,5,
      13,0,0,305,307,3,10,5,0,306,304,1,0,0,0,306,307,1,0,0,0,307,308,1,
      0,0,0,308,353,5,14,0,0,309,310,5,52,0,0,310,316,5,33,0,0,311,312,3,
      14,7,0,312,313,5,39,0,0,313,315,1,0,0,0,314,311,1,0,0,0,315,318,1,
      0,0,0,316,314,1,0,0,0,316,317,1,0,0,0,317,320,1,0,0,0,318,316,1,0,
      0,0,319,321,3,14,7,0,320,319,1,0,0,0,320,321,1,0,0,0,321,322,1,0,0,
      0,322,325,5,34,0,0,323,326,3,16,8,0,324,326,5,14,0,0,325,323,1,0,0,
      0,325,324,1,0,0,0,326,353,1,0,0,0,327,328,5,52,0,0,328,329,5,40,0,
      0,329,330,5,52,0,0,330,336,5,33,0,0,331,332,3,14,7,0,332,333,5,39,
      0,0,333,335,1,0,0,0,334,331,1,0,0,0,335,338,1,0,0,0,336,334,1,0,0,
      0,336,337,1,0,0,0,337,340,1,0,0,0,338,336,1,0,0,0,339,341,3,14,7,0,
      340,339,1,0,0,0,340,341,1,0,0,0,341,342,1,0,0,0,342,345,5,34,0,0,343,
      344,5,41,0,0,344,346,3,22,11,0,345,343,1,0,0,0,345,346,1,0,0,0,346,
      349,1,0,0,0,347,350,3,16,8,0,348,350,5,14,0,0,349,347,1,0,0,0,349,
      348,1,0,0,0,350,353,1,0,0,0,351,353,3,12,6,0,352,291,1,0,0,0,352,299,
      1,0,0,0,352,309,1,0,0,0,352,327,1,0,0,0,352,351,1,0,0,0,353,21,1,0,
      0,0,354,355,5,6,0,0,355,361,5,33,0,0,356,357,3,10,5,0,357,358,5,39,
      0,0,358,360,1,0,0,0,359,356,1,0,0,0,360,363,1,0,0,0,361,359,1,0,0,
      0,361,362,1,0,0,0,362,368,1,0,0,0,363,361,1,0,0,0,364,366,3,10,5,0,
      365,367,5,39,0,0,366,365,1,0,0,0,366,367,1,0,0,0,367,369,1,0,0,0,368,
      364,1,0,0,0,368,369,1,0,0,0,369,370,1,0,0,0,370,371,5,34,0,0,371,23,
      1,0,0,0,372,373,5,44,0,0,373,374,5,33,0,0,374,375,3,10,5,0,375,376,
      5,34,0,0,376,377,3,16,8,0,377,25,1,0,0,0,378,379,5,45,0,0,379,380,
      5,44,0,0,380,381,5,33,0,0,381,382,3,10,5,0,382,383,5,34,0,0,383,384,
      3,16,8,0,384,27,1,0,0,0,385,386,5,45,0,0,386,387,3,16,8,0,387,29,1,
      0,0,0,388,392,3,24,12,0,389,391,3,26,13,0,390,389,1,0,0,0,391,394,
      1,0,0,0,392,390,1,0,0,0,392,393,1,0,0,0,393,396,1,0,0,0,394,392,1,
      0,0,0,395,397,3,28,14,0,396,395,1,0,0,0,396,397,1,0,0,0,397,31,1,0,
      0,0,398,399,5,46,0,0,399,400,5,33,0,0,400,401,3,10,5,0,401,402,5,34,
      0,0,402,403,3,16,8,0,403,33,1,0,0,0,404,408,3,4,2,0,405,408,3,6,3,
      0,406,408,3,10,5,0,407,404,1,0,0,0,407,405,1,0,0,0,407,406,1,0,0,0,
      408,35,1,0,0,0,409,412,5,2,0,0,410,412,3,8,4,0,411,409,1,0,0,0,411,
      410,1,0,0,0,412,413,1,0,0,0,413,414,5,52,0,0,414,37,1,0,0,0,415,416,
      3,34,17,0,416,417,5,14,0,0,417,418,3,10,5,0,418,419,5,14,0,0,419,420,
      3,34,17,0,420,426,1,0,0,0,421,422,3,36,18,0,422,423,5,48,0,0,423,424,
      3,10,5,0,424,426,1,0,0,0,425,415,1,0,0,0,425,421,1,0,0,0,426,39,1,
      0,0,0,427,428,5,47,0,0,428,429,5,33,0,0,429,430,3,38,19,0,430,431,
      5,34,0,0,431,432,3,16,8,0,432,41,1,0,0,0,41,45,54,63,92,98,103,116,
      126,130,174,178,193,197,200,238,240,251,255,263,271,280,286,295,301,
      306,316,320,325,336,340,345,349,352,361,366,368,392,396,407,411,425
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
  TerminalNode? VAR() => getToken(DartParser.TOKEN_VAR, 0);
  TypeContext? type() => getRuleContext<TypeContext>(0);
  TerminalNode? ASSIGN() => getToken(DartParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
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
  BinaryLogicExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
}

class UnaryLogicNegationExpressionContext extends ExpressionContext {
  Token? operand;
  ExpressionContext? value;
  TerminalNode? NOT() => getToken(DartParser.TOKEN_NOT, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  UnaryLogicNegationExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
}

class BinaryComparisonExpressionContext extends ExpressionContext {
  ExpressionContext? left;
  Token? operand;
  ExpressionContext? right;
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode? GREATER_THAN() => getToken(DartParser.TOKEN_GREATER_THAN, 0);
  TerminalNode? LOWER_THAN() => getToken(DartParser.TOKEN_LOWER_THAN, 0);
  TerminalNode? GREATER_EQUAL_THAN() => getToken(DartParser.TOKEN_GREATER_EQUAL_THAN, 0);
  TerminalNode? LOWER_EQUAL_THAN() => getToken(DartParser.TOKEN_LOWER_EQUAL_THAN, 0);
  TerminalNode? EQUAL() => getToken(DartParser.TOKEN_EQUAL, 0);
  TerminalNode? NOT_EQUAL() => getToken(DartParser.TOKEN_NOT_EQUAL, 0);
  BinaryComparisonExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
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