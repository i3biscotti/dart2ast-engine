parser grammar DartParser;

options{ tokenVocab=DartLexer; }

/* 

var name = "Simone"; 
final int age = 16;
double height = 1.75; 
const text = "Hello World";

*/

dartFile       : line+;
line           : statement SEMICOLON (NEWLINE|EOF);

statement      
    : ( VAR | VAR NEWLINE* type | type ) NEWLINE* ID ASSIGN expression  #VarDeclarationStatement
    | FINAL type? ID ASSIGN expression                                  #FinalDeclarationStatement
    | CONST type? ID ASSIGN expression                                  #ConstDeclarationStatment
    | ID ASSIGN expression                                              #AssigmentStatement
    ;

type           
    : INT #IntType
    | DOUBLE #DoubleType
    | BOOL #BoolType
    | STRING #StringType
    | ID #CustomType
    ;

expression      
    : BOOLLIT                                                                           #BoolLiteralExpression
    | INTLIT                                                                            #IntLiteralExpression
    | DOUBLELIT                                                                         #DoubleLiteralExpression
    | STRINGLIT                                                                         #StringLiteralExpression
    | left=expression NEWLINE* openand=PLUS NEWLINE* right=expression                   #BinaryMathExpression
    | left=expression NEWLINE* openand=MINUS NEWLINE* right=expression                  #BinaryMathExpression
    | left=expression NEWLINE* openand=TIMES NEWLINE* right=expression                  #BinaryMathExpression
    | left=expression NEWLINE* openand=DIVISION NEWLINE* right=expression               #BinaryMathExpression
    | left=expression NEWLINE* openand=AND NEWLINE* right=expression                    #BinaryLogicExpression
    | left=expression NEWLINE* openand=OR NEWLINE* right=expression                     #BinaryLogicExpression
    | left=expression NEWLINE* openand=GREATER_THAN NEWLINE* right=expression           #BinaryLogicExpression
    | left=expression NEWLINE* openand=LOWER_THAN NEWLINE* right=expression             #BinaryLogicExpression
    | left=expression NEWLINE* openand=GREATER_EQUAL_THAN NEWLINE* right=expression     #BinaryLogicExpression
    | left=expression NEWLINE* openand=LOWER_EQUAL_THAN NEWLINE* right=expression       #BinaryLogicExpression
    | left=expression NEWLINE* openand=EQUAL NEWLINE* right=expression                  #BinaryLogicExpression
    | operand=MINUS NEWLINE* value=expression                                           #UnaryMathExpression
    | operand=PLUS NEWLINE* value=expression                                            #UnaryMathExpression
    | operand=NOT NEWLINE* value=expression                                             #UnaryLogicNegationExpression
    | PAREN_OPEN NEWLINE* value=expression NEWLINE* PAREN_OPEN                          #ParenthesysExpression
    | ID                                                                                #VarReferenceExpression
    ;

