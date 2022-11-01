%%
.+	{printf("%s\n",yytext);}
%%

int yywrap()
{
	return 1;
}

int main()
{
	yyin=fopen("list.c","r");
	yylex();
}