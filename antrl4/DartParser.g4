parser grammar DartParser;

options{ tokenVocab=DartLexer; }

/* 

var name = "Simone"; 
final int age = 16;
double height = 1.75; 
const text = "Hello World";

*/

dartFile       : line+;
line           : statement(NEWLINE|EOF);

statement      
    : variableDeclaration #VariableDeclarationStatement 
    | assigment #AssigmentStatement
    ;

type           
    : INT #IntType
    | DOUBLE #DoubleType
    | BOOL #BoolType
    | STRING #StringType
    | ID #CustomType
    ;

variableDeclaration 
    : ( VAR | VAR NEWLINE* type | type ) NEWLINE* ID ASSIGN expression  #VarDeclarationStatement
    | FINAL type? ID ASSIGN expression                                  #FinalDeclarationStatement
    | CONST type? ID ASSIGN expression                                  #ConstDeclarationStatement
    ;

assigment      : ID ASSIGN expression;

expression      
    : BOOLLIT       #BoolLiteralExpression
    | INTLIT        #IntLiteralExpression
    | DOUBLELIT     #DoubleLiteralExpression
    | STRINGLIT     #StringLiteralExpression
    ;

