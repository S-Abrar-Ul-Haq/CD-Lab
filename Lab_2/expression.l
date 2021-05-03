%{
#include <stdlib.h>
#include "y.tab.h"
extern int yylval;
%}

%%
[a-zA-Z][a-zA-Z0-9]* { return ID; }
[0-9]+ { yylval = atoi(yytext); return NUM; }
\+|-|\*|\/ { return OP; }
\n { return 0; }
%%
