	int n=0,c=0,l=0;
%%
\n	{++n;++c;}
.	{++c;++l;}
%%
int yywrap()
{
	return 1;
}
int main()
{
	yyin=fopen("list.c","r");
	yylex();
	printf("Lines = %d\nCharacter = %d\nLetter = %d",n,c,l);
}
