lexer grammar DartLexer;

/* 

var name = "Simone"; 
final int age = 16;
double height = 1.75; 
const text = "Hello World";

*/
// TASK 1

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

ASSIGN                      : '=';
SEMICOLON                   : ';';

fragment DecDigit           : '0'..'9';
fragment DecDigitNoZero     : '1'..'9';
fragment DecDigits          : DecDigit+;

INTLIT                      : DecDigitNoZero DecDigit* | DecDigit;
DOUBLELIT                   : DecDigit '.' DecDigits;
BOOLLIT                     : 'true' | 'false';

STRINGLIT                   : UnterminatedStringLiteral '"';
UnterminatedStringLiteral   : '"' (~["\\\r\n] | '\\' (. | EOF))* ;

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

AND                         : '&&';
OR                          : '||';
NOT                         : '!';

PAREN_OPEN                  : '(';
PAREN_CLOSE                 : ')';

GRAPH_OPEN                  : '{';
GRAPH_CLOSE                 : '}';
COMMA                       : ',';
DOT                         : '.';

ID                          : [A-Za-z_][A-Za-z_0-9]*;
