%%
[a-zA-z][a-zA-Z0-9]*	{printf("Valid variable naming");}
.+	{printf("Invalid variable naming");}
%%

int yywrap()
{
	return 1;
}

int main()
{
	printf("Enter any string = ");
	yylex();
	return 0;
}