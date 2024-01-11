// Generated from d://Progetti personali//dart2kotlin//dart2ast_engine//antrl4//DartLexer.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';


class DartLexer extends Lexer {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.1', RuntimeMetaData.VERSION);

  static final List<DFA> _decisionToDFA = List.generate(
        _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int
    TOKEN_NEWLINE = 1, TOKEN_WS = 2, TOKEN_VAR = 3, TOKEN_FINAL = 4, TOKEN_CONST = 5, 
    TOKEN_INT = 6, TOKEN_DOUBLE = 7, TOKEN_STRING = 8, TOKEN_BOOL = 9, TOKEN_ASSIGN = 10, 
    TOKEN_SEMICOLON = 11, TOKEN_INTLIT = 12, TOKEN_DOUBLELIT = 13, TOKEN_BOOLLIT = 14, 
    TOKEN_STRINGLIT = 15, TOKEN_UnterminatedStringLiteral = 16, TOKEN_ID = 17, 
    TOKEN_PLUS = 18, TOKEN_MINUS = 19, TOKEN_DIVISION = 20, TOKEN_TIMES = 21, 
    TOKEN_MODULE = 22, TOKEN_GREATER_EQUAL_THAN = 23, TOKEN_LOWER_EQUAL_THAN = 24, 
    TOKEN_GREATER_THAN = 25, TOKEN_LOWER_THAN = 26, TOKEN_EQUAL = 27, TOKEN_AND = 28, 
    TOKEN_OR = 29, TOKEN_NOT = 30, TOKEN_PAREN_OPEN = 31, TOKEN_PAREN_CLOSE = 32, 
    TOKEN_VOID = 33, TOKEN_GRAPH_OPEN = 34, TOKEN_GRAPH_CLOSE = 35, TOKEN_COMMA = 36, 
    TOKEN_CLASS = 37, TOKEN_THIS = 38, TOKEN_DOT = 39;
  @override
  final List<String> channelNames = [
    'DEFAULT_TOKEN_CHANNEL', 'HIDDEN'
  ];

  @override
  final List<String> modeNames = [
    'DEFAULT_MODE'
  ];

  @override
  final List<String> ruleNames = [
    'NEWLINE', 'WS', 'VAR', 'FINAL', 'CONST', 'INT', 'DOUBLE', 'STRING', 
    'BOOL', 'ASSIGN', 'SEMICOLON', 'DecDigit', 'DecDigitNoZero', 'DecDigits', 
    'INTLIT', 'DOUBLELIT', 'BOOLLIT', 'STRINGLIT', 'UnterminatedStringLiteral', 
    'ID', 'PLUS', 'MINUS', 'DIVISION', 'TIMES', 'MODULE', 'GREATER_EQUAL_THAN', 
    'LOWER_EQUAL_THAN', 'GREATER_THAN', 'LOWER_THAN', 'EQUAL', 'AND', 'OR', 
    'NOT', 'PAREN_OPEN', 'PAREN_CLOSE', 'VOID', 'GRAPH_OPEN', 'GRAPH_CLOSE', 
    'COMMA', 'CLASS', 'THIS', 'DOT'
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


  DartLexer(CharStream input) : super(input) {
    interpreter = LexerATNSimulator(_ATN, _decisionToDFA, _sharedContextCache, recog: this);
  }

  @override
  List<int> get serializedATN => _serializedATN;

  @override
  String get grammarFileName => 'DartLexer.g4';

  @override
  ATN getATN() { return _ATN; }

  static const List<int> _serializedATN = [
      4,0,39,255,6,-1,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,
      6,7,6,2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,
      13,2,14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,
      7,20,2,21,7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,2,
      27,7,27,2,28,7,28,2,29,7,29,2,30,7,30,2,31,7,31,2,32,7,32,2,33,7,33,
      2,34,7,34,2,35,7,35,2,36,7,36,2,37,7,37,2,38,7,38,2,39,7,39,2,40,7,
      40,2,41,7,41,1,0,1,0,1,0,3,0,89,8,0,1,1,4,1,92,8,1,11,1,12,1,93,1,
      1,1,1,1,2,1,2,1,2,1,2,1,3,1,3,1,3,1,3,1,3,1,3,1,4,1,4,1,4,1,4,1,4,
      1,4,1,5,1,5,1,5,1,5,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,7,1,7,1,7,1,7,1,
      7,1,7,1,7,1,8,1,8,1,8,1,8,1,8,1,9,1,9,1,10,1,10,1,11,1,11,1,12,1,12,
      1,13,4,13,146,8,13,11,13,12,13,147,1,14,1,14,5,14,152,8,14,10,14,12,
      14,155,9,14,1,14,3,14,158,8,14,1,15,1,15,1,15,1,15,1,16,1,16,1,16,
      1,16,1,16,1,16,1,16,1,16,1,16,3,16,173,8,16,1,17,1,17,1,17,1,18,1,
      18,1,18,1,18,1,18,3,18,183,8,18,5,18,185,8,18,10,18,12,18,188,9,18,
      1,19,1,19,5,19,192,8,19,10,19,12,19,195,9,19,1,20,1,20,1,21,1,21,1,
      22,1,22,1,23,1,23,1,24,1,24,1,25,1,25,1,25,1,26,1,26,1,26,1,27,1,27,
      1,28,1,28,1,29,1,29,1,29,1,30,1,30,1,30,1,31,1,31,1,31,1,32,1,32,1,
      33,1,33,1,34,1,34,1,35,1,35,1,35,1,35,1,35,1,36,1,36,1,37,1,37,1,38,
      1,38,1,39,1,39,1,39,1,39,1,39,1,39,1,40,1,40,1,40,1,40,1,40,1,41,1,
      41,0,0,42,1,1,3,2,5,3,7,4,9,5,11,6,13,7,15,8,17,9,19,10,21,11,23,0,
      25,0,27,0,29,12,31,13,33,14,35,15,37,16,39,17,41,18,43,19,45,20,47,
      21,49,22,51,23,53,24,55,25,57,26,59,27,61,28,63,29,65,30,67,31,69,
      32,71,33,73,34,75,35,77,36,79,37,81,38,83,39,1,0,5,2,0,10,10,13,13,
      2,0,9,9,32,32,4,0,10,10,13,13,34,34,92,92,3,0,65,90,95,95,97,122,4,
      0,48,57,65,90,95,95,97,122,261,0,1,1,0,0,0,0,3,1,0,0,0,0,5,1,0,0,0,
      0,7,1,0,0,0,0,9,1,0,0,0,0,11,1,0,0,0,0,13,1,0,0,0,0,15,1,0,0,0,0,17,
      1,0,0,0,0,19,1,0,0,0,0,21,1,0,0,0,0,29,1,0,0,0,0,31,1,0,0,0,0,33,1,
      0,0,0,0,35,1,0,0,0,0,37,1,0,0,0,0,39,1,0,0,0,0,41,1,0,0,0,0,43,1,0,
      0,0,0,45,1,0,0,0,0,47,1,0,0,0,0,49,1,0,0,0,0,51,1,0,0,0,0,53,1,0,0,
      0,0,55,1,0,0,0,0,57,1,0,0,0,0,59,1,0,0,0,0,61,1,0,0,0,0,63,1,0,0,0,
      0,65,1,0,0,0,0,67,1,0,0,0,0,69,1,0,0,0,0,71,1,0,0,0,0,73,1,0,0,0,0,
      75,1,0,0,0,0,77,1,0,0,0,0,79,1,0,0,0,0,81,1,0,0,0,0,83,1,0,0,0,1,88,
      1,0,0,0,3,91,1,0,0,0,5,97,1,0,0,0,7,101,1,0,0,0,9,107,1,0,0,0,11,113,
      1,0,0,0,13,117,1,0,0,0,15,124,1,0,0,0,17,131,1,0,0,0,19,136,1,0,0,
      0,21,138,1,0,0,0,23,140,1,0,0,0,25,142,1,0,0,0,27,145,1,0,0,0,29,157,
      1,0,0,0,31,159,1,0,0,0,33,172,1,0,0,0,35,174,1,0,0,0,37,177,1,0,0,
      0,39,189,1,0,0,0,41,196,1,0,0,0,43,198,1,0,0,0,45,200,1,0,0,0,47,202,
      1,0,0,0,49,204,1,0,0,0,51,206,1,0,0,0,53,209,1,0,0,0,55,212,1,0,0,
      0,57,214,1,0,0,0,59,216,1,0,0,0,61,219,1,0,0,0,63,222,1,0,0,0,65,225,
      1,0,0,0,67,227,1,0,0,0,69,229,1,0,0,0,71,231,1,0,0,0,73,236,1,0,0,
      0,75,238,1,0,0,0,77,240,1,0,0,0,79,242,1,0,0,0,81,248,1,0,0,0,83,253,
      1,0,0,0,85,86,5,13,0,0,86,89,5,10,0,0,87,89,7,0,0,0,88,85,1,0,0,0,
      88,87,1,0,0,0,89,2,1,0,0,0,90,92,7,1,0,0,91,90,1,0,0,0,92,93,1,0,0,
      0,93,91,1,0,0,0,93,94,1,0,0,0,94,95,1,0,0,0,95,96,6,1,0,0,96,4,1,0,
      0,0,97,98,5,118,0,0,98,99,5,97,0,0,99,100,5,114,0,0,100,6,1,0,0,0,
      101,102,5,102,0,0,102,103,5,105,0,0,103,104,5,110,0,0,104,105,5,97,
      0,0,105,106,5,108,0,0,106,8,1,0,0,0,107,108,5,99,0,0,108,109,5,111,
      0,0,109,110,5,110,0,0,110,111,5,115,0,0,111,112,5,116,0,0,112,10,1,
      0,0,0,113,114,5,105,0,0,114,115,5,110,0,0,115,116,5,116,0,0,116,12,
      1,0,0,0,117,118,5,100,0,0,118,119,5,111,0,0,119,120,5,117,0,0,120,
      121,5,98,0,0,121,122,5,108,0,0,122,123,5,101,0,0,123,14,1,0,0,0,124,
      125,5,83,0,0,125,126,5,116,0,0,126,127,5,114,0,0,127,128,5,105,0,0,
      128,129,5,110,0,0,129,130,5,103,0,0,130,16,1,0,0,0,131,132,5,98,0,
      0,132,133,5,111,0,0,133,134,5,111,0,0,134,135,5,108,0,0,135,18,1,0,
      0,0,136,137,5,61,0,0,137,20,1,0,0,0,138,139,5,59,0,0,139,22,1,0,0,
      0,140,141,2,48,57,0,141,24,1,0,0,0,142,143,2,49,57,0,143,26,1,0,0,
      0,144,146,3,23,11,0,145,144,1,0,0,0,146,147,1,0,0,0,147,145,1,0,0,
      0,147,148,1,0,0,0,148,28,1,0,0,0,149,153,3,25,12,0,150,152,3,23,11,
      0,151,150,1,0,0,0,152,155,1,0,0,0,153,151,1,0,0,0,153,154,1,0,0,0,
      154,158,1,0,0,0,155,153,1,0,0,0,156,158,3,23,11,0,157,149,1,0,0,0,
      157,156,1,0,0,0,158,30,1,0,0,0,159,160,3,23,11,0,160,161,5,46,0,0,
      161,162,3,27,13,0,162,32,1,0,0,0,163,164,5,116,0,0,164,165,5,114,0,
      0,165,166,5,117,0,0,166,173,5,101,0,0,167,168,5,102,0,0,168,169,5,
      97,0,0,169,170,5,108,0,0,170,171,5,115,0,0,171,173,5,101,0,0,172,163,
      1,0,0,0,172,167,1,0,0,0,173,34,1,0,0,0,174,175,3,37,18,0,175,176,5,
      34,0,0,176,36,1,0,0,0,177,186,5,34,0,0,178,185,8,2,0,0,179,182,5,92,
      0,0,180,183,9,0,0,0,181,183,5,0,0,1,182,180,1,0,0,0,182,181,1,0,0,
      0,183,185,1,0,0,0,184,178,1,0,0,0,184,179,1,0,0,0,185,188,1,0,0,0,
      186,184,1,0,0,0,186,187,1,0,0,0,187,38,1,0,0,0,188,186,1,0,0,0,189,
      193,7,3,0,0,190,192,7,4,0,0,191,190,1,0,0,0,192,195,1,0,0,0,193,191,
      1,0,0,0,193,194,1,0,0,0,194,40,1,0,0,0,195,193,1,0,0,0,196,197,5,43,
      0,0,197,42,1,0,0,0,198,199,5,45,0,0,199,44,1,0,0,0,200,201,5,47,0,
      0,201,46,1,0,0,0,202,203,5,42,0,0,203,48,1,0,0,0,204,205,5,37,0,0,
      205,50,1,0,0,0,206,207,5,62,0,0,207,208,5,61,0,0,208,52,1,0,0,0,209,
      210,5,60,0,0,210,211,5,61,0,0,211,54,1,0,0,0,212,213,5,62,0,0,213,
      56,1,0,0,0,214,215,5,60,0,0,215,58,1,0,0,0,216,217,5,61,0,0,217,218,
      5,61,0,0,218,60,1,0,0,0,219,220,5,38,0,0,220,221,5,38,0,0,221,62,1,
      0,0,0,222,223,5,124,0,0,223,224,5,124,0,0,224,64,1,0,0,0,225,226,5,
      33,0,0,226,66,1,0,0,0,227,228,5,40,0,0,228,68,1,0,0,0,229,230,5,41,
      0,0,230,70,1,0,0,0,231,232,5,118,0,0,232,233,5,111,0,0,233,234,5,105,
      0,0,234,235,5,100,0,0,235,72,1,0,0,0,236,237,5,123,0,0,237,74,1,0,
      0,0,238,239,5,125,0,0,239,76,1,0,0,0,240,241,5,44,0,0,241,78,1,0,0,
      0,242,243,5,99,0,0,243,244,5,108,0,0,244,245,5,97,0,0,245,246,5,115,
      0,0,246,247,5,115,0,0,247,80,1,0,0,0,248,249,5,116,0,0,249,250,5,104,
      0,0,250,251,5,105,0,0,251,252,5,115,0,0,252,82,1,0,0,0,253,254,5,46,
      0,0,254,84,1,0,0,0,11,0,88,93,147,153,157,172,182,184,186,193,1,6,
      0,0
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}