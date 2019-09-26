// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#include<stdio.h>
#include<stdlib.h>
#include<string.h>

#include"test.h"

int yywrap();

int main(int argc, const char* argv[]) {
	if(argc != 3) {
		fprintf(stderr, "Parameters: [file path] [test]\n");
		fprintf(stderr, "Test options: lexical syntax\n");
		return -1;
	}
	
	if(strcmp(argv[2],"lexical") == 0)
		return test_lexical(argv[1]);
	else if(strcmp(argv[2],"syntax") == 0)
		return test_syntax(argv[1]);

	return -1;
}

int yywrap() {
	return 1;
}

void yyerror(char* s) {
	printf("%s in line %d\n", s, CURRENT_LINE);
	exit(1);
}
