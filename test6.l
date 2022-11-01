%{
	#include<stdio.h>
	#include<math.h>
	#include "test6.tab.h"
	extern YYSTYPE yylval;
%}

%%
[a-zA-Z][a-zA-Z0-9]*	{return ID;}
"int"	{return INT;}
"float"	{return FLOAT;}
"char"	{return CHAR;}
[,;]	{return *yytext;}
%%

int yywrap()
{
	return 1;
}

int yyerror(char const *s)
{
	fprintf(stderr,"%s\n",s);
}

int main()
{
	printf("Declare any statement : ");
	yyparse();
}