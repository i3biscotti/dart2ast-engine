parser grammar DartParser;

options{ tokenVocab=DartLexer; }

/* 

var name = "Simone"; 
final int age = 16;
double height = 1.75; 
const text = "Hello World";

*/

dartFile       : line+;
line           : statement (NEWLINE|EOF);

statement      
    : ( VAR | VAR NEWLINE* type | type ) NEWLINE* ID ASSIGN expression SEMICOLON    #VarDeclarationStatement
    | FINAL type? ID ASSIGN expression SEMICOLON                                    #FinalDeclarationStatement
    | CONST type? ID ASSIGN expression SEMICOLON                                    #ConstDeclarationStatment
    | ID ASSIGN expression SEMICOLON                                                #AssigmentStatement
    | functionDefinition                                                            #FunctionDefinitionStatement
    | constructorDefinition                                                         #ConstructorDefinitionStatement
    | classDefinition                                                               #ClassDefinitionStatement
    ;

type           
    : INT       #IntType
    | DOUBLE    #DoubleType
    | BOOL      #BoolType
    | STRING    #StringType
    | ID        #CustomType
    | VOID      #VoidType
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

functionDefinition
    : returnType=type name=ID PAREN_OPEN  (parameter NEWLINE* COMMA)* NEWLINE* parameter? PAREN_CLOSE NEWLINE* block;  

parameter: type NEWLINE* ID;

constructorDefinition
    : name=ID NEWLINE* PAREN_OPEN NEWLINE*
        (constructorParameter NEWLINE* COMMA NEWLINE*)* constructorParameter? NEWLINE*
    PAREN_CLOSE NEWLINE* (block | SEMICOLON) ;

constructorParameter: THIS NEWLINE* DOT NEWLINE* name=ID;

block: 
    GRAPH_OPEN NEWLINE* 
        (statement NEWLINE* SEMICOLON)* 
    NEWLINE* GRAPH_CLOSE;

classDefinition
    : CLASS name=ID NEWLINE* GRAPH_OPEN NEWLINE* block;

