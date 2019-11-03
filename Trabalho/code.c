#include"code.h"

void throw_code_error(const char* error) {
  printf("code error: %s\n", error);
  exit(4);
}

void start_coding(Node* program) {
  switch(program->tag) {
    case EMPTY:
      break;
    case DEFINE_LIST:
      code_define_list(program);
      break;
    case DEFINE_VARIABLE:
      code_define_variable(program);
      break;
    case DEFINE_FUNCTION:
      code_define_function(program);
      break;
    default:
      throw_code_error("invalid start");
  }
}

void code_define_list(Node* define_list) {
  for(int i = 0; i < define_list->number_of_childs; i++) {
    Node* define = define_list->content.n[i];
    
    switch(define->tag) {
      case DEFINE_VARIABLE:
        code_define_variable(define);
        break;
      case DEFINE_FUNCTION:
        code_define_function(define);
        break;
      default:
        throw_code_error("invalid definition");
    }
  }
}

void code_define_variable(Node* define_variable) {
  char* name = code_identifier(define_variable->content.n[0]);
  char* variable_type = code_variable_type(define_variable->content.n[1]);
  char* initial_value = code_initial_value(define_variable->content.n[1]);

  print_with_indentation(0, "@%s = global %s %s", name, variable_type, initial_value);
}

void code_define_function(Node* define_function) {
  int childs = define_function->number_of_childs;
  
  switch(childs) {
    case 4:
      break;
    case 3:
      break;
    case 2:
      break;
    default:
      throw_code_error("invalid definition");
  }

  code_block(define_function->content.n[childs - 1]);
}

char* code_identifier(Node* identifier) {
  return (char*)identifier->content.s;
}

char* code_variable_type(Node* variable_type) {
  char* t1 = NULL;
  char* t2 = NULL;

  switch(variable_type->tag) {
    case TYPE_BOOLEAN:
      return "i1";
      break;
    case TYPE_CHARACTER:
      return "i8";
      break;
    case TYPE_INTEGER:
      return "i32";
      break;
    case TYPE_FLOAT:
      return "float*";
      break;
    case TYPE_ARRAY:
      t1 = code_variable_type(variable_type->type);
      t2 = (char*)safe_malloc(strlen(t1) + 1);
      t2 = strcpy(t2, t1);
      t2 = strcat(t2, "*");
      return t2;
      break;
    default:
      throw_code_error("invalid variable type [1]");
      return NULL;
  }
}

char* code_initial_value(Node* variable_type) {
  switch(variable_type->tag) {
    case TYPE_BOOLEAN:
      return "false";
      break;
    case TYPE_CHARACTER:
      return "0";
      break;
    case TYPE_INTEGER:
      return "0";
      break;
    case TYPE_FLOAT:
      return "0.0";
      break;
    case TYPE_ARRAY:
      return "null";
      break;
    default:
      throw_code_error("invalid variable type [2]");
      return NULL;
  }
}

void code_block(Node* block) {
  
}