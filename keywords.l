  GNU nano 6.2                        keu.l *                               %{
#include<stdio.h>
%}

Keyword auto|break|const|case|char|continue|do|double|default|else|enum|ext>
letter [a-z A-Z]
digit [0-9]


%%

{Keyword} {printf("%s is a keyword\n",yytext);}
({letter}|{digit})* {printf("%s is not a keyword\n",yytext);}


%%

int yywrap()
{
    return 0;
}

void main()
{
    yylex();
}
