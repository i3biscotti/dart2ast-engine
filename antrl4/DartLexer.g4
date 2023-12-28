lexer grammar DartLexer;

/* 

var name = "Simone"; 
final int age = 16;
double height = 1.75; 
const text = "Hello World";

*/

NEWLINE            : '\r\n' | '\r' | '\n' ;
WS                 : [\t ]+ -> skip ;

VAR                : 'var';
FINAL              : 'final';
CONST              : 'const';

INT                : 'int';
DOUBLE             : 'double';
STRING             : 'String';
BOOL               : 'bool';

ASSIGN             : '=';
SEMICOLON          : ';';

fragment DecDigit: '0'..'9';
fragment DecDigitNoZero: '1'..'9';
fragment DecDigits: DecDigit+;

INTLIT             : DecDigitNoZero DecDigit* | DecDigit;
DOUBLELIT          : DecDigit '.' DecDigits;
BOOLLIT            : 'true' | 'false';

STRINGLIT          : UnterminatedStringLiteral '"';
UnterminatedStringLiteral: '"' (~["\\\r\n] | '\\' (. | EOF))* ;

ID                 : [A-Za-z_][A-Za-z_0-9]*;