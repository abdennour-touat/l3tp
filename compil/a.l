%{
#include <stdio.h>
#include<string.h>
#include "a.tab.h" 
int ligne=1;
int col=0;
%}
PINT (+|-)?{Entier_nat}
PFLOAT {PINT}"."{Entier_nat}
chiffre	[0-9]
lettre [a-zA-Z]
tiret "-"
IDF {lettre}(({lettre}|{chiffre})*|{tiret})({lettre}|{chiffre})
Entier_nat	0|[1-9]{chiffre}*
aff "<-"
%%
Program {return ins_prog; col= col +yyleng;}

PDEC {return ins_pdec;col=col+yyleng;}
PINST {return ins_pinst;col=col+yyleng;}
Begin {return ins_begin;col=col+yyleng;}
END {return ins_end;col=col+yyleng;}
{Entier_nat} {yylval.num=atoi(yytext);return entier;col=col+yyleng;}
{IDF} {if (yyleng<=12) {yylval.str=strdup(yytext);
                                          
                                           return idf;}
    else printf("erreur lexical: IDF trop long ");col=col+yyleng;}
aff {return aff;col++;}
; {return pvg;col++;}
[ \t] col++;
\n {ligne++;col=0;}
.	{printf("\nErreur lexical la ligne %d et colonne %d",ligne,col);}
%%

int yywrap(void)
{
return 0;
}
