%{
#include<stdio.h>
int prints = 0, scans = 0;
%}

%%
"printf" { prints++; fprintf(yyout, "writef"); }
"scanf" { scans++; fprintf(yyout, "readf"); }
. { fprintf(yyout, "%s", yytext); }
\n { fprintf(yyout, "\n"); }
%%

int yywrap(){}

int main(){
yyin = fopen("inp.c", "r+");
yyout = fopen("out.c", "w+");
yylex();
printf("The number of printfs are %d\nThe number of scanfs are %d\n", prints, scans);
}
