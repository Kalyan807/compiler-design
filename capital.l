%{
#include <stdio.h>
%}

%%
[A-Z]+[\t\n] { printf("%s is a Capital word\n", yytext); }
.  ;
%%

int main() 
{
    printf("Enter the string:\n");
    yylex();
    return 0; // Added a return statement to indicate successful termination
}

int yywrap()
{
    return 1;
}