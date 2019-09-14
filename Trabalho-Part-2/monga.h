// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#include<stdio.h>
#include<stdlib.h>
#include"monga.tab.h"

extern int CURRENT_LINE;

extern int yylex();
extern int yyparse();
extern void yyerror(char* s);
extern FILE* yyin;
