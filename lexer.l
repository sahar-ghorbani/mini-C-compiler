%{
#include <stdio.h>
#include <string.h>
#include "y.tab.h"
extern int yylval;
%}

space		[ ]
tab		[	]

%%

{space}* {}
{tab}* {}
([0-9])+	{return (NUM);}
"//"[^\n]*	{return (COMMENT);}
";"		{return (SEMICOL);}
","		{return (COL);}
"["		{return (OBR);}
"]"		{return (CBR);}
"int"		{return (INT);}
"void"		{return (VOID);}
"bool"		{return (BOOL);}
"("		{return (OPAR);}
")"		{return (CPAR);}
"{"		{return (OAQ);}
"}"		{return (CAQ);}
"if"		{return (IF);}
"else"		{return (ELSE);}
"while"		{return (WHILE);}
"return"	{return (RETURN);}
"break"		{return (BREAK);}
"=="		{return (EQUALEQUAL);}
"="		{return (EQUAL);}
"+="		{return (PLUSEQUAL);}
"-="		{return (MINUSEQUAL);}
"+"		{return (PLUS);}
"-"		{return (MINUS);}
"&"		{return (AND);}
"|"             {return (OR);}
"!="		{return (NOTEQUAL);}
"!"		{return (NOT);}
"<="		{return (LESSEQ);}
"<"		{return (LESS);}
">="		{return (GREATEREQ);}
">"		{return (GREATER);}
"*"		{return (STAR);}
"/"		{return (DIVIDE);}
"%"		{return (PERCENT);}
"true"		{return (TRUE);}
"false"		{return (FALSE);}
[a-zA-Z]([a-zA-Z]|[0-9])*   {return (ID);}

%%