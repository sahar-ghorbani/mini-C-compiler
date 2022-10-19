%{
#include <stdio.h>
int yylex();
int yyerror(char *s);

%}

%token ID NUM COMMENT SEMICOL COL OBR CBR INT VOID BOOL OPAR CPAR OAQ CAQ IF ELSE WHILE RETURN BREAK EQUAL LESSEQ GREATEREQ PLUSEQUAL MINUSEQUAL PLUS MINUS AND OR NOT LESS GREATER EQUALEQUAL NOTEQUAL STAR DIVIDE PERCENT TRUE FALSE

%%



program:
	declarationList ;


declarationList:
	declarationList declaration 
	| declaration ;

declaration:
	varDeclaration 
	| funDeclaration
	| COMMENT ;

varDeclaration:
	typeSpecifier varDeclList SEMICOL ;

varDeclList:
	varDeclList COL varDeclId | varDeclId ;

varDeclId:
	ID 	| ID OBR NUM CBR ;

typeSpecifier:
INT | VOID | BOOL ;

funDeclaration:
typeSpecifier ID OPAR params CPAR statement ;

params:
paramList | 	/* empty */ ;

paramList:
paramList SEMICOL paramTypeList | paramTypeList ;

paramTypeList:
typeSpecifier paramIdList ;

paramIdList:
paramIdList COL paramId | paramId ;

paramId:
ID | ID OBR CBR ;

compoundStmt:
OAQ localDeclarations statementList CAQ ;

 
localDeclarations:
localDeclarations varDeclaration | 	/*  empty  */ ;

statementList:
statementList statement |	 /*  empty  */ ;

statement:
expressionStmt | compoundStmt | selectionStmt | iterationStmt | returnStmt | breakStmt ;

expressionStmt:
expression SEMICOL | SEMICOL ;

selectionStmt: 
IF OPAR expression CPAR statement | IF OPAR expression CPAR statement ELSE statement ; 

iterationStmt: 
WHILE OPAR expression CPAR statement ;

returnStmt: 
RETURN SEMICOL | RETURN expression SEMICOL ;

breakStmt:
BREAK SEMICOL ;

expression:
var EQUAL expression | var PLUSEQUAL expression | var MINUSEQUAL expression | simpleExpression ;

var: 
ID | ID OBR expression CBR ;

simpleExpression: 
	simpleExpression OR orExpression | orExpression ;

orExpression:
orExpression AND unaryRelExpression | unaryRelExpression ;

unaryRelExpression:
NOT unaryRelExpression | relExpression ;

relExpression:
addExpression relop addExpression | addExpression ;

relop:
LESSEQ | LESS | GREATER | GREATEREQ | EQUALEQUAL | NOTEQUAL ;

addExpression:
addExpression addop term | term ;

addop:
PLUS | MINUS ;

term:
term mulop unaryExpression | unaryExpression ;

mulop:
STAR | DIVIDE | PERCENT ;

unaryExpression:
MINUS unaryExpression | factor ;

factor:
OPAR expression CPAR | var | call | constant ;

constant:
NUM | TRUE | FALSE ;

call:
ID OPAR args CPAR ;

args:
argList | 	/* empty */ ;

argList:
argList COL expression | expression ;

%%




int main()
{
	
	return yyparse();
		

    
}

int yyerror(char  *s)
{
	printf(" SYNTAX ERROR! \n");
	return 0;
}


int yywrap(){return(1);}