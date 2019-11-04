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
  char* type = code_variable_type(define_variable->content.n[1]);
  char* initial_value = code_initial_value(define_variable->content.n[1]);

  print_with_indentation(0, "@%s = global %s %s", name, type, initial_value);
}

void code_define_function(Node* define_function) {
  int childs = define_function->number_of_childs;

  char* name = code_identifier(define_function->content.n[0]);
  char* params = "";
  char* type = "void";
  char* block = "";
  char* params_declarations = "";
  
  switch(childs) {
    case 4:
      params = code_parameters(define_function->content.n[1]);
      type = code_variable_type(define_function->content.n[2]);
      params_declarations = code_parameters_declarations(define_function->content.n[1]);
      break;
    case 3:
      if(define_function->content.n[1]->tag == PARAMETER || define_function->content.n[1]->tag == PARAMETER_LIST) {
        params = code_parameters(define_function->content.n[1]);
        params_declarations = code_parameters_declarations(define_function->content.n[1]);
      } else {
        type = code_variable_type(define_function->content.n[1]);
      }
      break;
    case 2:
      break;
    default:
      throw_code_error("invalid function definition");
  }

  block = code_block(define_function->content.n[childs - 1]);

  print_with_indentation(0, "define %s @%s(%s) {\n%s%s}\n", type, name, params, params_declarations, block);
}

char* code_identifier(Node* identifier) {
  return (char*)identifier->content.s;
}

char* code_variable_type(Node* variable_type) {
  char* type = NULL;

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
      type = code_variable_type(variable_type->type);
      return concat_strings(type, "*");
      break;
    default:
      throw_code_error("invalid variable type");
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
      throw_code_error("invalid initial value");
      return NULL;
  }
}

char* code_parameters(Node* parameters) {
  switch(parameters->tag) {
    case PARAMETER_LIST:
      return code_parameter_list(parameters);
      break;
    case PARAMETER:
      return code_parameter(parameters);
      break;
    default:
      throw_code_error("invalid parameters");
      return NULL;
  }
}

char* code_parameter_list(Node* parameter_list) {
  char* param_list = "";

  for(int i = 0; i < parameter_list->number_of_childs; i++) {
    char* type = code_parameter(parameter_list->content.n[i]);
    param_list = concat_strings(param_list, type);

    if(i+1 < parameter_list->number_of_childs)
      param_list = concat_strings(param_list, ", ");
  }

  return param_list;
}

char* code_parameter(Node* parameter) {
  return code_variable_type(parameter->content.n[1]);
}

char * code_parameters_declarations(Node* parameters) {
  switch(parameters->tag) {
    case PARAMETER_LIST:
      return code_parameter_declaration_list(parameters);
      break;
    case PARAMETER:
      return code_parameter_declaration(2, parameters);
      break;
    default:
      throw_code_error("invalid parameters");
      return NULL;
  }
}

char* code_parameter_declaration_list(Node* parameter_list) {
  char* param_list = "";
  int counter = parameter_list->number_of_childs + 1;

  for(int i = 0; i < parameter_list->number_of_childs; i++) {
    char* type = code_parameter_declaration(counter++, parameter_list->content.n[i]);
    param_list = concat_strings(param_list, type);
  }

  return param_list;
}

char* code_parameter_declaration(int id, Node* parameter) {
  char* type = code_variable_type(parameter->content.n[1]);
  char* declaration = concat_strings("  %", id_string(id));
  declaration = concat_strings(declaration, " = alloca ");
  declaration = concat_strings(declaration, type);
  declaration = concat_strings(declaration, "\n");
  return declaration;
}

char* code_block(Node* block) {
  return "";
}

char* id_string(int id) {
  char* storage = (char*)safe_malloc(sizeof(char) * 64);

  sprintf(storage, "%d", id);

  return storage;
}

char* concat_strings(char* string_1, char* string_2) {
  char* new_string = (char*)safe_malloc(strlen(string_1) + strlen(string_2));

  new_string = strcpy(new_string, string_1);
  new_string = strcat(new_string, string_2);

  return new_string;
}