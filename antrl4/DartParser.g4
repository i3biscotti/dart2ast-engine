parser grammar DartParser;

options{ tokenVocab=DartLexer; }

/* 

var name = "Simone"; 
final int age = 16;
double height = 1.75; 
const text = "Hello World";

*/

dartFile       :line+;
line           :statement(NEWLINE|EOF);
statement      :variableDeclaration #VariableDeclarationStatement | assigment #AssigmentStatement;

type           :INT | DOUBLE | BOOL | STRING | ID;

variableDeclaration 
            : (VAR|VAR NEWLINE* type |type) NEWLINE* ID ASSIGN expression  #VarDeclarationStatement
            | FINAL type? ID ASSIGN expression                             #FinalDeclarationStatement
            | CONST type? ID ASSIGN expression                             #ConstDeclarationStatement
            ;

expression      :BOOLLIT | INTLIT | DOUBLELIT | STRINGLIT;
assigment      : ID ASSIGN expression;