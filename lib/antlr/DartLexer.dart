// Generated from d://Progetti personali//dart2kotlin//dart2ast_engine//antrl4//DartLexer.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';


class DartLexer extends Lexer {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.1', RuntimeMetaData.VERSION);

  static final List<DFA> _decisionToDFA = List.generate(
        _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int
    TOKEN_WS = 1, TOKEN_VAR = 2, TOKEN_FINAL = 3, TOKEN_CONST = 4, TOKEN_CLASS = 5, 
    TOKEN_THIS = 6, TOKEN_INT = 7, TOKEN_DOUBLE = 8, TOKEN_STRING = 9, TOKEN_BOOL = 10, 
    TOKEN_VOID = 11, TOKEN_ASSIGN = 12, TOKEN_SEMICOLON = 13, TOKEN_INTLIT = 14, 
    TOKEN_DOUBLELIT = 15, TOKEN_BOOLLIT = 16, TOKEN_STRINGLIT = 17, TOKEN_PLUS = 18, 
    TOKEN_MINUS = 19, TOKEN_DIVISION = 20, TOKEN_TIMES = 21, TOKEN_MODULE = 22, 
    TOKEN_GREATER_EQUAL_THAN = 23, TOKEN_LOWER_EQUAL_THAN = 24, TOKEN_GREATER_THAN = 25, 
    TOKEN_LOWER_THAN = 26, TOKEN_EQUAL = 27, TOKEN_AND = 28, TOKEN_OR = 29, 
    TOKEN_NOT = 30, TOKEN_PAREN_OPEN = 31, TOKEN_PAREN_CLOSE = 32, TOKEN_GRAPH_OPEN = 33, 
    TOKEN_GRAPH_CLOSE = 34, TOKEN_COMMA = 35, TOKEN_DOT = 36, TOKEN_COLONS = 37, 
    TOKEN_RETURN = 38, TOKEN_EXTENDS = 39, TOKEN_ID = 40, TOKEN_UnterminatedStringLiteral = 41;
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
    'WS', 'VAR', 'FINAL', 'CONST', 'CLASS', 'THIS', 'INT', 'DOUBLE', 'STRING', 
    'BOOL', 'VOID', 'ASSIGN', 'SEMICOLON', 'INTLIT', 'DOUBLELIT', 'BOOLLIT', 
    'STRINGLIT', 'PLUS', 'MINUS', 'DIVISION', 'TIMES', 'MODULE', 'GREATER_EQUAL_THAN', 
    'LOWER_EQUAL_THAN', 'GREATER_THAN', 'LOWER_THAN', 'EQUAL', 'AND', 'OR', 
    'NOT', 'PAREN_OPEN', 'PAREN_CLOSE', 'GRAPH_OPEN', 'GRAPH_CLOSE', 'COMMA', 
    'DOT', 'COLONS', 'RETURN', 'EXTENDS', 'ID', 'DecDigit', 'DecDigitNoZero', 
    'DecDigits', 'UnterminatedStringLiteral'
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
      4,0,41,280,6,-1,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,
      6,7,6,2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,
      13,2,14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,
      7,20,2,21,7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,2,
      27,7,27,2,28,7,28,2,29,7,29,2,30,7,30,2,31,7,31,2,32,7,32,2,33,7,33,
      2,34,7,34,2,35,7,35,2,36,7,36,2,37,7,37,2,38,7,38,2,39,7,39,2,40,7,
      40,2,41,7,41,2,42,7,42,2,43,7,43,1,0,4,0,91,8,0,11,0,12,0,92,1,0,1,
      0,1,1,1,1,1,1,1,1,1,2,1,2,1,2,1,2,1,2,1,2,1,3,1,3,1,3,1,3,1,3,1,3,
      1,4,1,4,1,4,1,4,1,4,1,4,1,5,1,5,1,5,1,5,1,5,1,6,1,6,1,6,1,6,1,7,1,
      7,1,7,1,7,1,7,1,7,1,7,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,9,1,9,1,9,1,9,
      1,9,1,10,1,10,1,10,1,10,1,10,1,11,1,11,1,12,1,12,1,13,1,13,5,13,158,
      8,13,10,13,12,13,161,9,13,1,13,3,13,164,8,13,1,14,1,14,5,14,168,8,
      14,10,14,12,14,171,9,14,1,14,3,14,174,8,14,1,14,1,14,1,14,1,15,1,15,
      1,15,1,15,1,15,1,15,1,15,1,15,1,15,3,15,188,8,15,1,16,1,16,1,16,1,
      17,1,17,1,18,1,18,1,19,1,19,1,20,1,20,1,21,1,21,1,22,1,22,1,22,1,23,
      1,23,1,23,1,24,1,24,1,25,1,25,1,26,1,26,1,26,1,27,1,27,1,27,1,28,1,
      28,1,28,1,29,1,29,1,30,1,30,1,31,1,31,1,32,1,32,1,33,1,33,1,34,1,34,
      1,35,1,35,1,36,1,36,1,37,1,37,1,37,1,37,1,37,1,37,1,37,1,38,1,38,1,
      38,1,38,1,38,1,38,1,38,1,38,1,39,1,39,5,39,255,8,39,10,39,12,39,258,
      9,39,1,40,1,40,1,41,1,41,1,42,4,42,265,8,42,11,42,12,42,266,1,43,1,
      43,1,43,1,43,1,43,3,43,274,8,43,5,43,276,8,43,10,43,12,43,279,9,43,
      0,0,44,1,1,3,2,5,3,7,4,9,5,11,6,13,7,15,8,17,9,19,10,21,11,23,12,25,
      13,27,14,29,15,31,16,33,17,35,18,37,19,39,20,41,21,43,22,45,23,47,
      24,49,25,51,26,53,27,55,28,57,29,59,30,61,31,63,32,65,33,67,34,69,
      35,71,36,73,37,75,38,77,39,79,40,81,0,83,0,85,0,87,41,1,0,4,3,0,9,
      10,13,13,32,32,3,0,65,90,95,95,97,122,4,0,48,57,65,90,95,95,97,122,
      4,0,10,10,13,13,34,34,92,92,287,0,1,1,0,0,0,0,3,1,0,0,0,0,5,1,0,0,
      0,0,7,1,0,0,0,0,9,1,0,0,0,0,11,1,0,0,0,0,13,1,0,0,0,0,15,1,0,0,0,0,
      17,1,0,0,0,0,19,1,0,0,0,0,21,1,0,0,0,0,23,1,0,0,0,0,25,1,0,0,0,0,27,
      1,0,0,0,0,29,1,0,0,0,0,31,1,0,0,0,0,33,1,0,0,0,0,35,1,0,0,0,0,37,1,
      0,0,0,0,39,1,0,0,0,0,41,1,0,0,0,0,43,1,0,0,0,0,45,1,0,0,0,0,47,1,0,
      0,0,0,49,1,0,0,0,0,51,1,0,0,0,0,53,1,0,0,0,0,55,1,0,0,0,0,57,1,0,0,
      0,0,59,1,0,0,0,0,61,1,0,0,0,0,63,1,0,0,0,0,65,1,0,0,0,0,67,1,0,0,0,
      0,69,1,0,0,0,0,71,1,0,0,0,0,73,1,0,0,0,0,75,1,0,0,0,0,77,1,0,0,0,0,
      79,1,0,0,0,0,87,1,0,0,0,1,90,1,0,0,0,3,96,1,0,0,0,5,100,1,0,0,0,7,
      106,1,0,0,0,9,112,1,0,0,0,11,118,1,0,0,0,13,123,1,0,0,0,15,127,1,0,
      0,0,17,134,1,0,0,0,19,141,1,0,0,0,21,146,1,0,0,0,23,151,1,0,0,0,25,
      153,1,0,0,0,27,163,1,0,0,0,29,173,1,0,0,0,31,187,1,0,0,0,33,189,1,
      0,0,0,35,192,1,0,0,0,37,194,1,0,0,0,39,196,1,0,0,0,41,198,1,0,0,0,
      43,200,1,0,0,0,45,202,1,0,0,0,47,205,1,0,0,0,49,208,1,0,0,0,51,210,
      1,0,0,0,53,212,1,0,0,0,55,215,1,0,0,0,57,218,1,0,0,0,59,221,1,0,0,
      0,61,223,1,0,0,0,63,225,1,0,0,0,65,227,1,0,0,0,67,229,1,0,0,0,69,231,
      1,0,0,0,71,233,1,0,0,0,73,235,1,0,0,0,75,237,1,0,0,0,77,244,1,0,0,
      0,79,252,1,0,0,0,81,259,1,0,0,0,83,261,1,0,0,0,85,264,1,0,0,0,87,268,
      1,0,0,0,89,91,7,0,0,0,90,89,1,0,0,0,91,92,1,0,0,0,92,90,1,0,0,0,92,
      93,1,0,0,0,93,94,1,0,0,0,94,95,6,0,0,0,95,2,1,0,0,0,96,97,5,118,0,
      0,97,98,5,97,0,0,98,99,5,114,0,0,99,4,1,0,0,0,100,101,5,102,0,0,101,
      102,5,105,0,0,102,103,5,110,0,0,103,104,5,97,0,0,104,105,5,108,0,0,
      105,6,1,0,0,0,106,107,5,99,0,0,107,108,5,111,0,0,108,109,5,110,0,0,
      109,110,5,115,0,0,110,111,5,116,0,0,111,8,1,0,0,0,112,113,5,99,0,0,
      113,114,5,108,0,0,114,115,5,97,0,0,115,116,5,115,0,0,116,117,5,115,
      0,0,117,10,1,0,0,0,118,119,5,116,0,0,119,120,5,104,0,0,120,121,5,105,
      0,0,121,122,5,115,0,0,122,12,1,0,0,0,123,124,5,105,0,0,124,125,5,110,
      0,0,125,126,5,116,0,0,126,14,1,0,0,0,127,128,5,100,0,0,128,129,5,111,
      0,0,129,130,5,117,0,0,130,131,5,98,0,0,131,132,5,108,0,0,132,133,5,
      101,0,0,133,16,1,0,0,0,134,135,5,83,0,0,135,136,5,116,0,0,136,137,
      5,114,0,0,137,138,5,105,0,0,138,139,5,110,0,0,139,140,5,103,0,0,140,
      18,1,0,0,0,141,142,5,98,0,0,142,143,5,111,0,0,143,144,5,111,0,0,144,
      145,5,108,0,0,145,20,1,0,0,0,146,147,5,118,0,0,147,148,5,111,0,0,148,
      149,5,105,0,0,149,150,5,100,0,0,150,22,1,0,0,0,151,152,5,61,0,0,152,
      24,1,0,0,0,153,154,5,59,0,0,154,26,1,0,0,0,155,159,3,83,41,0,156,158,
      3,81,40,0,157,156,1,0,0,0,158,161,1,0,0,0,159,157,1,0,0,0,159,160,
      1,0,0,0,160,164,1,0,0,0,161,159,1,0,0,0,162,164,3,81,40,0,163,155,
      1,0,0,0,163,162,1,0,0,0,164,28,1,0,0,0,165,169,3,83,41,0,166,168,3,
      81,40,0,167,166,1,0,0,0,168,171,1,0,0,0,169,167,1,0,0,0,169,170,1,
      0,0,0,170,174,1,0,0,0,171,169,1,0,0,0,172,174,3,81,40,0,173,165,1,
      0,0,0,173,172,1,0,0,0,174,175,1,0,0,0,175,176,5,46,0,0,176,177,3,85,
      42,0,177,30,1,0,0,0,178,179,5,116,0,0,179,180,5,114,0,0,180,181,5,
      117,0,0,181,188,5,101,0,0,182,183,5,102,0,0,183,184,5,97,0,0,184,185,
      5,108,0,0,185,186,5,115,0,0,186,188,5,101,0,0,187,178,1,0,0,0,187,
      182,1,0,0,0,188,32,1,0,0,0,189,190,3,87,43,0,190,191,5,34,0,0,191,
      34,1,0,0,0,192,193,5,43,0,0,193,36,1,0,0,0,194,195,5,45,0,0,195,38,
      1,0,0,0,196,197,5,47,0,0,197,40,1,0,0,0,198,199,5,42,0,0,199,42,1,
      0,0,0,200,201,5,37,0,0,201,44,1,0,0,0,202,203,5,62,0,0,203,204,5,61,
      0,0,204,46,1,0,0,0,205,206,5,60,0,0,206,207,5,61,0,0,207,48,1,0,0,
      0,208,209,5,62,0,0,209,50,1,0,0,0,210,211,5,60,0,0,211,52,1,0,0,0,
      212,213,5,61,0,0,213,214,5,61,0,0,214,54,1,0,0,0,215,216,5,38,0,0,
      216,217,5,38,0,0,217,56,1,0,0,0,218,219,5,124,0,0,219,220,5,124,0,
      0,220,58,1,0,0,0,221,222,5,33,0,0,222,60,1,0,0,0,223,224,5,40,0,0,
      224,62,1,0,0,0,225,226,5,41,0,0,226,64,1,0,0,0,227,228,5,123,0,0,228,
      66,1,0,0,0,229,230,5,125,0,0,230,68,1,0,0,0,231,232,5,44,0,0,232,70,
      1,0,0,0,233,234,5,46,0,0,234,72,1,0,0,0,235,236,5,58,0,0,236,74,1,
      0,0,0,237,238,5,114,0,0,238,239,5,101,0,0,239,240,5,116,0,0,240,241,
      5,117,0,0,241,242,5,114,0,0,242,243,5,110,0,0,243,76,1,0,0,0,244,245,
      5,101,0,0,245,246,5,120,0,0,246,247,5,116,0,0,247,248,5,101,0,0,248,
      249,5,110,0,0,249,250,5,100,0,0,250,251,5,115,0,0,251,78,1,0,0,0,252,
      256,7,1,0,0,253,255,7,2,0,0,254,253,1,0,0,0,255,258,1,0,0,0,256,254,
      1,0,0,0,256,257,1,0,0,0,257,80,1,0,0,0,258,256,1,0,0,0,259,260,2,48,
      57,0,260,82,1,0,0,0,261,262,2,49,57,0,262,84,1,0,0,0,263,265,3,81,
      40,0,264,263,1,0,0,0,265,266,1,0,0,0,266,264,1,0,0,0,266,267,1,0,0,
      0,267,86,1,0,0,0,268,277,5,34,0,0,269,276,8,3,0,0,270,273,5,92,0,0,
      271,274,9,0,0,0,272,274,5,0,0,1,273,271,1,0,0,0,273,272,1,0,0,0,274,
      276,1,0,0,0,275,269,1,0,0,0,275,270,1,0,0,0,276,279,1,0,0,0,277,275,
      1,0,0,0,277,278,1,0,0,0,278,88,1,0,0,0,279,277,1,0,0,0,12,0,92,159,
      163,169,173,187,256,266,273,275,277,1,6,0,0
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}