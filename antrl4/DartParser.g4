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
    | expression SEMICOLON                                                          #ExpressionDefinitionStatement
    | RETURN expression SEMICOLON                                                   #ReturnStatement
    | ifDefinition                                                                  #IfStatement  
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
    | left=expression  operand=PLUS                 right=expression            #BinaryMathExpression
    | left=expression  operand=MINUS                right=expression            #BinaryMathExpression
    | left=expression  operand=TIMES                right=expression            #BinaryMathExpression
    | left=expression  operand=DIVISION             right=expression            #BinaryMathExpression
    | left=expression  operand=AND                  right=expression            #BinaryLogicExpression
    | left=expression  operand=OR                   right=expression            #BinaryLogicExpression
    | left=expression  operand=GREATER_THAN         right=expression            #BinaryLogicExpression
    | left=expression  operand=LOWER_THAN           right=expression            #BinaryLogicExpression
    | left=expression  operand=GREATER_EQUAL_THAN   right=expression            #BinaryLogicExpression
    | left=expression  operand=LOWER_EQUAL_THAN     right=expression            #BinaryLogicExpression
    | left=expression  operand=EQUAL                right=expression            #BinaryLogicExpression
    |                  operand=MINUS                value=expression            #UnaryMathExpression
    |                  operand=PLUS                 value=expression            #UnaryMathExpression
    |                  operand=NOT                  value=expression            #UnaryLogicNegationExpression
    | PAREN_OPEN       value=expression             PAREN_CLOSE                 #ParenthesysExpression
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
    
// task 3
ifBlock
    : IF PAREN_OPEN expression PAREN_CLOSE GRAPH_OPEN statement* GRAPH_CLOSE;
 
elseIfBlock
    : ELSE IF PAREN_OPEN expression PAREN_CLOSE GRAPH_OPEN statement* GRAPH_CLOSE;
 
elseBlock
    : ELSE GRAPH_OPEN statement* GRAPH_CLOSE;
 
ifDefinition
    : ifBlock elseIfBlock* elseBlock?;
