// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#include"monga.h"

int yywrap();
void test_file(const char* file_path);

int main(int argc, const char* argv[]) {
	if(argc < 2) {
		fprintf(stderr, "Missing file path\n");
		return 1;
	}

	yyin = fopen(argv[1], "r");

	do {
		int i = yyparse();
		printf("%d\n", i);

		if(i == 0)
			break;
	} while(1==1);
}

int yywrap() {
	return 1;
}

void yyerror(char* s) {
	printf("%s in line %d\n", s, CURRENT_LINE);
	exit(1);
}
