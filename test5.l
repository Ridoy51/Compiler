	int v=0;
V	[aeiouAEIOU]
%%
V	{++v;printf("%s",yytext);}
%%
int yywrap()
{
	return 1;
}

int main()
{
	yyin = fopen("list.c","r");
	yylex();
	printf("The number of vawel is = %d",v);
}