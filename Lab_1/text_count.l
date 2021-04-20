%{
#include<stdio.h>
int lines = 0, words = 0, characters = 0, whitespaces = 0;
%}

%%
"exit" { return 0; }
[a-zA-Z0-9]+ { words++, characters += yyleng; }
\n { lines++; }
[ ] { whitespaces++; characters++; }
. { characters++; }
%%

int yywrap(){}

int main(){
	printf("Enter the paragraph\n\n");
	yylex();
	printf("Lines = %d, Words = %d, Whitespaces = %d, Characters = %d\n", lines, words, whitespaces, characters);
}
