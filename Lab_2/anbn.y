%{
#include<stdio.h>
#include<string.h>
#include<stdlib.h>
%}

%%
S:'a'S'b'
 |
 ;
%%

int yywrap(){}

int main(){
printf("Enter string: ");
yyparse();
printf("Valid string\n");
}

int yyerror()
{
printf("Invalid\n");
exit(0);
}
