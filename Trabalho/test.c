// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#include"test.h"

int test_syntax(const char* path) {
	yyin = fopen(path, "r");
	yyparse();

	return 0;
}

int test_lexical(const char* path) {
	yyin = fopen(path, "r");

	do {
		int token = yylex();
		
		if(token == 0)
			break;
		else if(token == 258 || token == 259 || token == 261)
			printf("%d\t%d\n", token, yylval.i);
		else if(token == 260)
			printf("%d\t%c\n", token, yylval.c);
		else if(token == 262)
			printf("%d\t%f\n", token, yylval.f);
		else if(token == 263 || token == 264)
			printf("%d\t%s\n", token, yylval.s);
		else
			printf("%d\n", token);

	} while(1==1);

	return 0;
}
