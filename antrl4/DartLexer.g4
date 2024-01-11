lexer grammar DartLexer;

/* 

var name = "Simone"; 
final int age = 16;
double height = 1.75; 
const text = "Hello World";

*/
// TASK 1

NEWLINE                     : '\r\n' | '\r' | '\n' ;
WS                          : [\t ]+ -> skip ;

VAR                         : 'var';
FINAL                       : 'final';
CONST                       : 'const';

INT                         : 'int';
DOUBLE                      : 'double';
STRING                      : 'String';
BOOL                        : 'bool';

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

ID                          : [A-Za-z_][A-Za-z_0-9]*;

//TASK 2
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

//TASK 7

VOID                        : 'void';
GRAPH_OPEN                  : '{';
GRAPH_CLOSE                 : '}';
COMMA                       : ',';

//TASK 8
CLASS                       : 'class';
THIS                        : 'this';
DOT                         : '.';