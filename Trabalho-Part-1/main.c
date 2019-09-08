#include"monga.h"

int yywrap();
void test_file(const char* file_path);

int main(int argc, const char* argv[]) {
	if(argc < 2) {
		fprintf(stderr, "Missing file path\n");
		return 1;
	}

	yyin = fopen(argv[1], "r");
	yylex();
}

int yywrap() {
	return 1;
}
