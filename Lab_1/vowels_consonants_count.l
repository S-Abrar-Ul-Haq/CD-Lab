%{
    #include <stdio.h>
    int vow_count = 0, cons_count = 0;
%}

%%
[aeiouAEIOU] { vow_count++; }
[a-zA-Z] { cons_count++; }
\n { return 0; }
%%

int yywrap() {}

int main() {
    printf("Enter the string: ");
    yylex();
    printf("Number of vowels = %d\nNumber of consonants = %d\n", vow_count, cons_count);
}
