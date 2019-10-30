// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#include<stdlib.h>
#include<string.h>
#include"test.h"

int yywrap();

int main(int argc, const char* argv[]) {
  if(argc != 2) {
    fprintf(stderr, "Parameters: [file path]\n");
    return -1;
  }
  
  test(argv[1]);

  return 0;
}

int yywrap() {
  return 1;
}
