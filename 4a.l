%{
#include<stdio.h>
#include"parser.tab.h"

%}

%%

[0-9]+ { yylval = atoi(yytext); return NUM; }
[+\-\*/] { return yytext[0]; }
[\t] {/* Ignore white spaces */}
\n   {return 0;}
. { ; }
\n { return 0; }

%%

int yywrap(){
return 1;
}


