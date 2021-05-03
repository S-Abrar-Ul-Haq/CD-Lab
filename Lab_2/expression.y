%token ID NUM OP

%{
#include <stdio.h>
#include <stdlib.h>
%}

%%
S: S OP S
 | ID
 | NUM
;
%%

int yywrap() {}

int main() {
    printf("Enter the expression: ");
    yyparse();
    printf("Valid\n");
}

int yyerror() {
    printf("Invalid\n");
    exit(0);
}
