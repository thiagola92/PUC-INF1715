// Nome: Thiago Lages de Alencar
// Matricula: 1721629

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
  char* identifier = code_identifier(define_variable->content.n[0]);
  char* type = code_variable_type(define_variable->content.n[1]);
  char* initial_value = code_initial_value(define_variable->content.n[1]);

  define_variable->id = concat_strings("@", identifier);

  print_with_indentation(0, "@%s = global %s %s", identifier, type, initial_value);
}

void code_define_function(Node* define_function) {
  int childs = define_function->number_of_childs;

  char* identifier = code_identifier(define_function->content.n[0]);
  char* params = "";
  char* type = "void";
  char* block = "";
  char* params_declarations = "";
  int* id = initialize_id();

  define_function->id = concat_strings("@", identifier);
  
  switch(childs) {
    case 4:
      params = code_parameters(id, define_function->content.n[1]);
      define_function->content.n[3]->id = id_string(id);
      type = code_variable_type(define_function->content.n[2]);
      params_declarations = code_parameters_declarations(id, define_function->content.n[1]);
      break;
    case 3:
      if(define_function->content.n[1]->tag == PARAMETER || define_function->content.n[1]->tag == PARAMETER_LIST) {
        params = code_parameters(id, define_function->content.n[1]);
        define_function->content.n[2]->id = id_string(id);
        params_declarations = code_parameters_declarations(id, define_function->content.n[1]);
      } else {
        type = code_variable_type(define_function->content.n[1]);
      }
      break;
    case 2:
      define_function->content.n[1]->id = id_string(id);
      break;
    default:
      throw_code_error("invalid function definition");
  }

  block = code_block(id, define_function->content.n[childs - 1]);

  print_with_indentation(0, "define %s @%s(%s) {\n%s%s}\n", type, identifier, params, params_declarations, block);
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

char* code_parameters(int* id, Node* parameters) {
  switch(parameters->tag) {
    case PARAMETER_LIST:
      return code_parameter_list(id, parameters);
      break;
    case PARAMETER:
      return code_parameter(id, parameters);
      break;
    default:
      throw_code_error("invalid parameters");
      return NULL;
  }
}

char* code_parameter_list(int* id, Node* parameter_list) {
  char* param_list = "";

  for(int i = 0; i < parameter_list->number_of_childs; i++) {
    char* type = code_parameter(id, parameter_list->content.n[i]);
    param_list = concat_strings(param_list, type);

    if(i+1 < parameter_list->number_of_childs)
      param_list = concat_strings(param_list, ", ");
  }

  return param_list;
}

char* code_parameter(int* id, Node* parameter) {
  char* identifier = id_string(id);
  parameter->id = concat_strings("%", identifier);
  return code_variable_type(parameter->content.n[1]);
}

char * code_parameters_declarations(int* id, Node* parameters) {
  switch(parameters->tag) {
    case PARAMETER_LIST:
      return code_parameter_declaration_list(id, parameters);
      break;
    case PARAMETER:
      return code_parameter_declaration(id, parameters);
      break;
    default:
      throw_code_error("invalid parameters declaration");
      return NULL;
  }
}

char* code_parameter_declaration_list(int* id, Node* parameter_list) {
  char* param_list = "";

  for(int i = 0; i < parameter_list->number_of_childs; i++) {
    char* param = code_parameter_declaration(id, parameter_list->content.n[i]);
    param_list = concat_strings(param_list, param);
  }

  return param_list;
}

char* code_parameter_declaration(int* id, Node* parameter) {
  char* identifier = id_string(id);
  char* type = code_variable_type(parameter->content.n[1]);
  char* declaration = "";
  char* store = "";

  declaration = concat_strings("  %", identifier);
  declaration = concat_strings(declaration, " = alloca ");
  declaration = concat_strings(declaration, type);
  declaration = concat_strings(declaration, "\n");

  store = concat_strings("  store ", type);
  store = concat_strings(store, " ");
  store = concat_strings(store, parameter->id);
  store = concat_strings(store, ", ");

  parameter->id = concat_strings("%", identifier);
  
  store = concat_strings(store, type);
  store = concat_strings(store, "* ");
  store = concat_strings(store, parameter->id);
  store = concat_strings(store, "\n");

  return concat_strings(declaration, store);
}

char* code_block(int* id, Node* block) {
  char* variables_local = "";
  char* block_content = "";

  for(int i = 0; i < block->number_of_childs; i++) {
    switch(block->content.n[i]->tag) {
      case VARIABLE_LIST:
        variables_local = code_variable_list_local(id, block->content.n[i]);
        break;
      case DEFINE_VARIABLE:
        variables_local = code_define_variable_local(id, block->content.n[i]);
        break;
      case COMMAND_LIST:
        // TODO
        break;
      case IF:
      case WHILE:
      case ASSIGNMENT:
      case RETURN:
      case PRINT:
      case FUNCTION_CALL:
        // TODO
        break;
      default:
        throw_code_error("invalid block");
        return NULL;
    }
  }

  block_content = concat_strings(block_content, variables_local);

  return block_content;
}

char* code_variable_list_local(int* id, Node* variable_list) {
  char* var_list = "";

  for(int i = 0; i < variable_list->number_of_childs; i++) {
    char* var = code_define_variable_local(id, variable_list->content.n[i]);
    var_list = concat_strings(var_list, var);
  }

  return var_list;
}

char* code_define_variable_local(int* id, Node* define_variable) {
  char* identifier = id_string(id);
  char* type = code_variable_type(define_variable->content.n[1]);
  char* var = concat_strings("  %", identifier);
  var = concat_strings(var, " = alloca ");
  var = concat_strings(var, type);
  var = concat_strings(var, "\n");

  define_variable->id = concat_strings("%", identifier);

  return var;
}

// char* code_parameter_storages(int* id, Node* parameters) {
//   switch(parameters->tag) {
//     case PARAMETER_LIST:
//       // return code_parameter_storage_list(id, parameters);
//       break;
//     case PARAMETER:
//       // return code_parameter_storage(id, parameters);
//       break;
//     default:
//       throw_code_error("invalid parameters store");
//       return NULL;
//   }
// }

int* initialize_id() {
  int* id = (int*)safe_malloc(sizeof(int));
  *id = 0;

  return id;
}

char* id_string(int* id) {
  char* str = (char*)safe_malloc(sizeof(char) * 64);

  sprintf(str, "%d", *id);
  (*id)++;

  return str;
}

char* concat_strings(char* string_1, char* string_2) {
  char* new_string;
  int length = strlen(string_1) + strlen(string_2) + 1;

  if(length == 0)
    return "";

  new_string = (char*)safe_malloc(length);

  new_string = strcpy(new_string, string_1);
  new_string = strcat(new_string, string_2);

  return new_string;
}