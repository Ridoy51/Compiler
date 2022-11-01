%{
	#include<stdio.h>
	#include<math.h>
	#define YYSTYPE int
%}

%start program
%token ID,INT,FLOAT,CHAR

%%
program:
	|program statement
	;
statement: Type ID1 ';'	{printf("Valid Variable Declaretion\n");}

ID1 : ID1 ',' ID
	|ID
	;
Type : INT
	|FLOAT
	|CHAR
	;


%%