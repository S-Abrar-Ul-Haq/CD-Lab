%{
#include<stdio.h>
int sc = 0, mc = 0;
%}

%%
\/\/ { printf("%s\n", yytext); sc++; }
\/\*[a-zA-Z0-9\n\/ ]*\*\/ { printf("%s\n", yytext); mc++; }
. ;
%%

int yywrap(){}

int main(){
    yyin = fopen("comment.c", "r+");
    yylex();
    printf("Single line comments = %d\nMulti-line comments = %d\n", sc, mc);
    return 0;
}
