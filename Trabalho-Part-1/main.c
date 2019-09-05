#include"monga.h"

int yywrap();
void test_file(const char* file_path);

int main(int argc, const char* argv[]) {
	printf("Inicializando\n");

	for(int i = 1; i < argc; i++) {
		test_file(argv[i]);
	}
}

void test_file(const char* file_path) {
	yyin = fopen(file_path, "r");
	printf(">> %d", yylex());
}

int yywrap() {
	return 1;
}
