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
    : varDeclaration SEMICOLON                                                      #VarDeclarationStatement
    | FINAL type? ID ASSIGN expression SEMICOLON                                    #FinalDeclarationStatement
    | CONST type? ID ASSIGN expression SEMICOLON                                    #ConstDeclarationStatement
    | assigment SEMICOLON                                                           #AssigmentStatement
    | functionDefinition                                                            #FunctionDefinitionStatement
    | classDefinition                                                               #ClassDefinitionStatement
    | expression SEMICOLON                                                          #ExpressionDefinitionStatement
    | RETURN expression SEMICOLON                                                   #ReturnStatement
    | ifDefinition                                                                  #IfStatement
    | whileDefinition                                                               #WhileStatement
    | forDefinition                                                                 #ForStatement
    ;

varDeclaration
    : ( VAR | VAR  type | type ) ID ASSIGN expression;
assigment
    : ID ASSIGN expression;



type           
    : INT       #IntType
    | DOUBLE    #DoubleType
    | BOOL      #BoolType
    | STRING    #StringType
    | VOID      #VoidType
    | LIST      #ListType
    | name=ID   #CustomType
    ;

expression      
    : BOOLLIT                                                                   #BoolLiteralExpression
    | INTLIT                                                                    #IntLiteralExpression
    | DOUBLELIT                                                                 #DoubleLiteralExpression
    | STRINGLIT                                                                 #StringLiteralExpression
    | SQUARE_OPEN (expression COMMA?)* SQUARE_CLOSE                             #ListLiteralExpression 
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
    | PLUS PLUS ID                                                              #IncrementExpression
    | MINUS MINUS ID                                                            #DecrementExpression
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

classDefinition : CLASS name=ID (EXTENDS parentName=ID)? GRAPH_OPEN classStatement* GRAPH_CLOSE ;

classStatement
    : type ID (ASSIGN expression)? SEMICOLON                                                                                #ClassVarDeclarationStatement         
    | FINAL type? ID (ASSIGN expression)? SEMICOLON                                                                         #ClassImmutableVarDeclarationStatement                     
    | className=ID PAREN_OPEN (parameter COMMA)* parameter? PAREN_CLOSE (block | SEMICOLON)                                 #MainClassConstructorDeclarationStatement
    | className=ID DOT costructorName=ID PAREN_OPEN (parameter COMMA)* parameter? PAREN_CLOSE (COLONS thisConstructorCall)? (block | SEMICOLON)   #NamedClassConstructorDeclarationStatement
    | functionDefinition                                                                                                    #ClassMethodDeclarationStatement                    
    ;
    
thisConstructorCall: THIS PAREN_OPEN (expression COMMA)* (expression COMMA?)? PAREN_CLOSE;// task 3

ifBlock
    : IF PAREN_OPEN expression PAREN_CLOSE GRAPH_OPEN statement* GRAPH_CLOSE;
 
elseIfBlock
    : ELSE IF PAREN_OPEN expression PAREN_CLOSE GRAPH_OPEN statement* GRAPH_CLOSE;
 
elseBlock
    : ELSE GRAPH_OPEN statement* GRAPH_CLOSE;
 
ifDefinition
    : ifBlock elseIfBlock* elseBlock?;

// task 4
whileDefinition
    : WHILE PAREN_OPEN expression PAREN_CLOSE block;


// task 5

initializationForExpression           //extends Expression
    : varDeclaration | assigment;

itemDefinition                        //extends Node
    : (VAR | type) ID;

forCondition
    : PAREN_OPEN initializationForExpression SEMICOLON expression SEMICOLON expression PAREN_CLOSE          #StandardForCondition
    | PAREN_OPEN itemDefinition IN expression                                                               #ForEachCondition
    ;

forDefinition
    : FOR PAREN_OPEN forCondition PAREN_CLOSE block;

/* 
for(int i = 0; i < 3; i++){  }
final list = [1,2,3,4,5];
for(int i in list){  }
*/
