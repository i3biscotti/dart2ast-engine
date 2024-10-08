lexer grammar DartLexer;

WS                          : [ \t\r\n]+ -> skip ;

VAR                         : 'var';
FINAL                       : 'final';
CONST                       : 'const';
CLASS                       : 'class';
THIS                        : 'this';

INT                         : 'int';
DOUBLE                      : 'double';
STRING                      : 'String';
BOOL                        : 'bool';
VOID                        : 'void';
LIST                        : 'List';

ASSIGN                      : '=';
SEMICOLON                   : ';';

INTLIT                      : DecDigitNoZero DecDigit* | DecDigit;
DOUBLELIT                   : (DecDigitNoZero DecDigit* | DecDigit) '.' DecDigits;
BOOLLIT                     : 'true' | 'false';

STRINGLIT                   : UnterminatedStringLiteral '"';

PLUS                        : '+';
MINUS                       : '-';
DIVISION                    : '/';
TIMES                       : '*';
MODULE                      : '%';

GREATER_EQUAL_THAN          : '>=';
LOWER_EQUAL_THAN            : '<=';
GREATER_THAN                : '>';
LOWER_THAN                  : '<';
EQUAL                       : '==';
NOT_EQUAL                   : '!=';

AND                         : '&&';
OR                          : '||';
NOT                         : '!';

PAREN_OPEN                  : '(';
PAREN_CLOSE                 : ')';

SQUARE_OPEN                 : '[';
SQUARE_CLOSE                : ']';

GRAPH_OPEN                  : '{';
GRAPH_CLOSE                 : '}';
COMMA                       : ',';
DOT                         : '.';
COLONS                      : ':';

RETURN                      : 'return';
EXTENDS                     : 'extends';

IF                          : 'if';
ELSE                        : 'else';


WHILE                       : 'while';

FOR                         : 'for';
IN                          : 'in';

// task 6
STDIN                       : 'stdin';
READLINESYNC                : 'readLineSync';
PRINT                       : 'print';

ID                          : [A-Za-z_][A-Za-z_0-9]*;

fragment DecDigit           : '0'..'9';
fragment DecDigitNoZero     : '1'..'9';
fragment DecDigits          : DecDigit+;
UnterminatedStringLiteral   : '"' (~["\\\r\n] | '\\' (. | EOF))* ;
