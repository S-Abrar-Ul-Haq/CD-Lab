%{
    
    int pos_num = 0;
    int neg_num = 0;
    int pos_frac = 0;
    int neg_frac = 0;
%}
  

DIGIT [0-9]
%%
  
\+?{DIGIT}+ { pos_num++; }
-{DIGIT}+ { neg_num++; }
  
(\+?{DIGIT}*\.{DIGIT}+)|(\+?{DIGIT}*\/\+?{DIGIT}+)|(-{DIGIT}*\/-{DIGIT}+) { pos_frac++; }
(-{DIGIT}*\.{DIGIT}+)|(-{DIGIT}*\/\+?{DIGIT}+)|(\+?{DIGIT}*\/-{DIGIT}+) { neg_frac++; }
. ;
\n return 0;
   
%%
  
int yywrap(){}

int main()
{
    yylex();
    printf("\nPositive integers: %d", pos_num);
    printf("\nNegative integers: %d", neg_num);
    printf("\nPositive fractions: %d", pos_frac);
    printf("\nNegative fractions: %d\n", neg_frac);
    return 0;
}
