// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#include"type.h"

void throw_type_error(const char* error) {
  printf("type error: %s\n", error);
  exit(3);
}

void type_program(Node* program) {
  switch(program->tag) {
    case EMPTY:
      break;
    case DEFINE_LIST:
      type_define_list(program);
      break;
    default:
      throw_type_error("failt to start typing program");
  }
}


