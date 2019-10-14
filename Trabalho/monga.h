// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#ifndef _MONGA_
#define _MONGA_

#include<stdio.h>
#include"binding.h"
#include"node.h"
#include"monga.tab.h"

extern int CURRENT_LINE;

extern int yylex();
extern int yyparse();
extern void yyerror(char* s);
extern FILE* yyin;

#endif
