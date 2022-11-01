%%
[+-]?[0-9]*"."[0-9]+[[*][eE1-9]"^"[+-]?[0-9]*]?	{printf("Valid\n");}
.+	{printf("Invalid\n");}
%%

int yywrap()
{
	return 1;
}

int main()
{
	printf("Enter any number = ");
	yylex();
}