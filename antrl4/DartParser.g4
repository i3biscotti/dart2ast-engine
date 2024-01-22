parser grammar DartParser;

options{ tokenVocab=DartLexer; }

/* 

var name = "Simone"; 
final int age = 16;
double height = 1.75; 
const text = "Hello World";

*/
dartFile: statement+ EOF;
    
statement  
    : ( VAR | VAR  type | type ) ID ASSIGN expression SEMICOLON                     #VarDeclarationStatement
    | FINAL type? ID ASSIGN expression SEMICOLON                                    #FinalDeclarationStatement
    | CONST type? ID ASSIGN expression SEMICOLON                                    #ConstDeclarationStatement
    | ID ASSIGN expression SEMICOLON                                                #AssigmentStatement
    | functionDefinition                                                            #FunctionDefinitionStatement
    | classDefinition                                                               #ClassDefinitionStatement
    ;

type           
    : INT       #IntType
    | DOUBLE    #DoubleType
    | BOOL      #BoolType
    | STRING    #StringType
    | VOID      #VoidType
    | name=ID   #CustomType
    ;

expression      
    : BOOLLIT                                                                   #BoolLiteralExpression
    | INTLIT                                                                    #IntLiteralExpression
    | DOUBLELIT                                                                 #DoubleLiteralExpression
    | STRINGLIT                                                                 #StringLiteralExpression
    | left=expression  openand=PLUS                 right=expression            #BinaryMathExpression
    | left=expression  openand=MINUS                right=expression            #BinaryMathExpression
    | left=expression  openand=TIMES                right=expression            #BinaryMathExpression
    | left=expression  openand=DIVISION             right=expression            #BinaryMathExpression
    | left=expression  openand=AND                  right=expression            #BinaryLogicExpression
    | left=expression  openand=OR                   right=expression            #BinaryLogicExpression
    | left=expression  openand=GREATER_THAN         right=expression            #BinaryLogicExpression
    | left=expression  openand=LOWER_THAN           right=expression            #BinaryLogicExpression
    | left=expression  openand=GREATER_EQUAL_THAN   right=expression            #BinaryLogicExpression
    | left=expression  openand=LOWER_EQUAL_THAN     right=expression            #BinaryLogicExpression
    | left=expression  openand=EQUAL                right=expression            #BinaryLogicExpression
    |                  operand=MINUS                value=expression            #UnaryMathExpression
    |                  operand=PLUS                 value=expression            #UnaryMathExpression
    |                  operand=NOT                  value=expression            #UnaryLogicNegationExpression
    | PAREN_OPEN       value=expression             PAREN_OPEN                  #ParenthesysExpression
    | ID                                                                        #VarReferenceExpression
    | ID PAREN_OPEN (expression COMMA)* expression? PAREN_CLOSE                 #FunctionCallExpression
    | ID DOT ID                                                                 #ObjectPropertyReferenceExpression
    | ID DOT ID PAREN_OPEN (expression COMMA)* expression? PAREN_CLOSE          #ObjectMethodCallExpression
    ;

functionDefinition
    : returnType=type name=ID PAREN_OPEN (parameter COMMA)* parameter? PAREN_CLOSE  block;  

parameter: (type | (THIS DOT))  ID;

block: GRAPH_OPEN statement* GRAPH_CLOSE ;

classDefinition : CLASS name=ID GRAPH_OPEN classStatement* GRAPH_CLOSE ;

classStatement
    : type ID ASSIGN expression SEMICOLON                                                                    #ClassVarDeclarationStatement         
    | FINAL type? ID ASSIGN expression SEMICOLON                                                             #ClassImmutableVarDeclarationStatement                     
    | className=ID (DOT costructorName=ID)? PAREN_OPEN (parameter COMMA)* parameter? PAREN_CLOSE (block | SEMICOLON)   #ClassConstructorDeclarationStatement
    | functionDefinition                                                                                     #ClassMethodDeclarationStatement                    
    ;
    
