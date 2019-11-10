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
      code_define_global_list(program);
      break;
    case DEFINE_VARIABLE:
      code_define_global_variable(program);
      break;
    case DEFINE_FUNCTION:
      code_define_global_function(program);
      break;
    default:
      throw_code_error("invalid start");
  }
}

void code_define_global_list(Node* define_list) {
  for(int i = 0; i < define_list->number_of_childs; i++) {
    Node* define = define_list->content.n[i];
    
    switch(define->tag) {
      case DEFINE_VARIABLE:
        code_define_global_variable(define);
        break;
      case DEFINE_FUNCTION:
        code_define_global_function(define);
        break;
      default:
        throw_code_error("invalid global definition");
    }
  }
}

void code_define_global_variable(Node* define_variable) {
  char* name = get_node_name(define_variable->content.n[0]);
  char* identifier = format_string("@%s", name);
  char* type = code_variable_type(define_variable->content.n[1]);
  char* initial_value = code_initial_value(define_variable->content.n[1]);

  define_variable->id = identifier;

  printf("%s = global %s %s\n", identifier, type, initial_value);

  safe_free(type);
}

char* code_variable_type(Node* variable_type) {
  char* type = NULL;

  switch(variable_type->tag) {
    case TYPE_BOOLEAN:
      return format_string("%s", "i1");
      break;
    case TYPE_CHARACTER:
      return format_string("%s", "i8");
      break;
    case TYPE_INTEGER:
      return format_string("%s", "i32");
      break;
    case TYPE_FLOAT:
      return format_string("%s", "float");
      break;
    case TYPE_ARRAY:
      type = code_variable_type(variable_type->type);
      return format_string("%s*", type);
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
      return "0.000000e+00";
      break;
    case TYPE_ARRAY:
      return "null";
      break;
    default:
      throw_code_error("invalid initial value");
      return NULL;
  }
}

void code_define_global_function(Node* define_function) {
  int childs = define_function->number_of_childs;
  
  switch(childs) {
    case 4:
      code_define_global_function_4(define_function);
      break;
    case 3:
      code_define_global_function_3(define_function);
      break;
    case 2:
      code_define_global_function_2(define_function);
      break;
    default:
      throw_code_error("invalid function definition");
  }
}

void code_define_global_function_4(Node* define_function) {
  char* name = get_node_name(define_function->content.n[0]);
  char* identifier = format_string("@%s", name);
  char* parameter_list = NULL;
  char* type = NULL;
  char* block_id = NULL;
  char* parameter_declarations = NULL;
  char* block = NULL;
  int* id = initialize_id();

  define_function->id = identifier;

  parameter_list = code_parameters(id, define_function->content.n[1]);
  type = code_variable_type(define_function->content.n[2]);
  block_id = format_string("%%%d", next_id(id));
  parameter_declarations = code_parameters_declarations(id, define_function->content.n[1]);
  block = code_block(id, define_function->content.n[3]);

  define_function->content.n[3]->id = block_id;

  // every %s should finish with '\n', there is no need to put between them
  printf("define %s %s(%s) {\n%s%s\n}\n", type, identifier, parameter_list, parameter_declarations, block);
}

void code_define_global_function_3(Node* define_function) {
  if(define_function->content.n[1]->tag == PARAMETER || define_function->content.n[1]->tag == PARAMETER_LIST)
    code_define_global_function_3_with_parameters(define_function);
  else
    code_define_global_function_3_with_type(define_function);
}

void code_define_global_function_3_with_parameters(Node* define_function) {
  char* name = get_node_name(define_function->content.n[0]);
  char* identifier = format_string("@%s", name);
  char* parameter_list = NULL;
  char* block_id = NULL;
  char* block = NULL;
  char* parameter_declarations = NULL;
  int* id = initialize_id();

  define_function->id = identifier;

  parameter_list = code_parameters(id, define_function->content.n[1]);
  block_id = format_string("%%%d", next_id(id));
  parameter_declarations = code_parameters_declarations(id, define_function->content.n[1]);
  block = code_block(id, define_function->content.n[2]);

  define_function->content.n[2]->id = block_id;

  // every %s should finish with '\n', there is no need to put between them
  printf("define void %s(%s) {\n%s%s%s}\n", identifier, parameter_list, parameter_declarations, block, "  ret void\n");
}

void code_define_global_function_3_with_type(Node* define_function) {
  char* name = get_node_name(define_function->content.n[0]);
  char* identifier = format_string("@%s", name);
  char* type = NULL;
  char* block_id = NULL;
  char* block = NULL;
  int* id = initialize_id();

  define_function->id = identifier;

  type = code_variable_type(define_function->content.n[1]);
  block_id = format_string("%%%d", next_id(id));
  block = code_block(id, define_function->content.n[2]);

  define_function->content.n[2]->id = block_id;

  printf("define %s %s() {\n%s\n}\n\n", type, identifier, block);
}

void code_define_global_function_2(Node* define_function) {
  char* name = get_node_name(define_function->content.n[0]);
  char* identifier = format_string("@%s", name);
  char* block_id = NULL;
  char* block = NULL;

  int* id = initialize_id();

  define_function->id = identifier;

  block_id = format_string("%%d", next_id(id));
  block = code_block(id, define_function->content.n[1]);

  define_function->content.n[1]->id = block_id;

  // every %s should finish with '\n', there is no need to put between them
  printf("define void %s() {\n%s%s}\n", identifier, block, "  ret void\n");
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
      throw_code_error("invalid parameter");
      return NULL;
  }
}

char* code_parameter_list(int* id, Node* parameter_list) {
  char* list = format_string("");

  for(int i = 0; i < parameter_list->number_of_childs; i++) {
    char* type = code_parameter(id, parameter_list->content.n[i]);
    char* new_list = NULL;

    if(i+1 < parameter_list->number_of_childs)
      new_list = format_string("%s%s, ", list, type);
    else
      new_list = format_string("%s%s", list, type);

    safe_free(list);
    safe_free(type);

    list = new_list;
  }

  return list;
}

char* code_parameter(int* id, Node* parameter) {
  parameter->id = format_string("%%%d", next_id(id));
  return code_variable_type(parameter->content.n[1]);
}

char* code_parameters_declarations(int* id, Node* parameters) {
  switch(parameters->tag) {
    case PARAMETER_LIST:
      return code_parameter_declaration_list(id, parameters);
      break;
    case PARAMETER:
      return code_parameter_declaration(id, parameters);
      break;
    default:
      throw_code_error("invalid parameter declaration");
      return NULL;
  }
}

char* code_parameter_declaration_list(int* id, Node* parameter_list) {
  char* list = format_string("");

  for(int i = 0; i < parameter_list->number_of_childs; i++) {
    char* declaration = code_parameter_declaration(id, parameter_list->content.n[i]);
    char* new_list = format_string("%s%s", list, declaration);

    safe_free(list);

    list = new_list;
  }

  return list;
}

char* code_parameter_declaration(int* id, Node* parameter) {
  char* identifier = format_string("%%%d", next_id(id));
  char* type = code_variable_type(parameter->content.n[1]);
  char* declaration = format_string("  %s = alloca %s\n  store %s %s, %s* %s\n", identifier, type, type, parameter->id, type, identifier);

  parameter->id = identifier;

  safe_free(type);

  return declaration;
}

char* code_block(int* id, Node* block) {
  switch(block->number_of_childs) {
    case 2:
      return code_block_2(id, block);
      break;
    case 1:
      return code_block_1(id, block);
      break;
    case 0:
      return format_string("");
      break;
    default:
      throw_code_error("invalid block");
      return NULL;
  }
}

char* code_block_2(int* id, Node* block) {
  char* variable_list = code_variables(id, block->content.n[0]);
  char* command_list = code_commands(id, block->content.n[1]);
  char* block_content = format_string("%s%s", variable_list, command_list);

  safe_free(variable_list);
  safe_free(command_list);

  return block_content;
}

char* code_block_1(int* id, Node* block) {
  if(block->content.n[0]->tag == VARIABLE_LIST || block->content.n[0]->tag == DEFINE_VARIABLE)
    return code_variables(id, block->content.n[0]);
  return code_commands(id, block->content.n[0]);
}

char* code_variables(int* id, Node* variables) {
  switch(variables->tag) {
    case VARIABLE_LIST:
      return code_local_variable_list(id, variables);
      break;
    case DEFINE_VARIABLE:
      return code_local_variable(id, variables);
      break;
    default:
      throw_code_error("invalid variable list");
      return NULL;
  }
}

char* code_local_variable_list(int* id, Node* variable_list) {
  char* list = format_string("");

  for(int i = 0; i < variable_list->number_of_childs; i++) {
    char* variable = code_local_variable(id, variable_list->content.n[i]);
    char* new_list = format_string("%s%s", list, variable);

    safe_free(list);

    list = new_list;
  }

  return list;
}

char* code_local_variable(int* id, Node* variable) {
  char* identifier = format_string("%%%d", next_id(id));
  char* type = code_variable_type(variable->content.n[1]);
  char* local_variable = format_string("  %s = alloca %s\n", identifier, type);

  variable->id = identifier;

  safe_free(type);

  return local_variable;
}

char* code_commands(int* id, Node* commands) {
  switch(commands->tag) {
    case COMMAND_LIST:
      return code_command_list(id, commands);
      break;
    case IF:
    case WHILE:
    case ASSIGNMENT:
    case RETURN:
    case PRINT:
    case FUNCTION_CALL:
      return code_command(id, commands);
      break;
    default:
      throw_code_error("invalid commands");
      return NULL;
  }
}

char* code_command_list(int* id, Node* command_list) {
  char* list = format_string("");

  for(int i = 0; i < command_list->number_of_childs; i++) {
    char* command = code_command(id, command_list->content.n[i]);
    char* new_list = format_string("%s%s", list, command);

    safe_free(list);

    list = new_list;
  }

  return list;
}

char* code_command(int* id, Node* command) {
  switch(command->tag) {
    case IF:
      return code_if(id, command);
      break;
    case WHILE:
      return code_while(id, command);
      break;
    case ASSIGNMENT:
      return code_assignment(id, command);
      break;
    case RETURN:
      return code_return(id, command);
      break;
    case PRINT:
      return code_print(id, command);
      break;
    case FUNCTION_CALL:
      return code_function_call(id, command);
      break;
    default:
      throw_code_error("invalid command");
      return NULL;
  }
}

char* code_if(int* id, Node* if_command) {
  return format_string("");
}

char* code_while(int* id, Node* while_command) {
  return format_string("");
}

char* code_assignment(int* id, Node* assignment) {
  return format_string("");
}

char* code_return(int* id, Node* return_command) {
  if(return_command->number_of_childs == 0)
    return format_string("  ret void\n");
  return code_return_value(id, return_command);
}

char* code_return_value(int* id, Node* return_command) {
  char* type = code_variable_type(return_command->definition->type);
  char* expression = code_expression(id, return_command->content.n[0]);
  char* return_code = format_string("  ret %s %s", type, expression);

  safe_free(type);
  safe_free(expression);

  return return_code;
}

char* code_print(int* id, Node* print) {
  return format_string("");
}

char* code_function_call(int* id, Node* function_call) {
  return format_string("");
}

char* code_expression(int* id, Node* expression) {
  switch(expression->tag) {
    case EXPRESSION_OR:
      break;
    case EXPRESSION_AND:
      break;
    case EXPRESSION_EQUAL:
      break;
    case EXPRESSION_NOT_EQUAL:
      break;
    case EXPRESSION_GREATER:
      break;
    case EXPRESSION_GREATER_EQUAL:
      break;
    case EXPRESSION_LESS:
      break;
    case EXPRESSION_LESS_EQUAL:
      break;
    case EXPRESSION_SUB:
      break;
    case EXPRESSION_ADD:
      break;
    case EXPRESSION_DIV:
      break;
    case EXPRESSION_MULT:
      break;
    case EXPRESSION_CAST:
      break;
    case EXPRESSION_NEGATIVE:
      break;
    case EXPRESSION_NOT:
      break;
    case ARRAY_POSITION:
      break;
    case VARIABLE:
      return format_string("%s", expression->definition->id);
      break;
    case FUNCTION_CALL:
      break;
    case NEW_ARRAY:
      break;
    case TYPE_ARRAY:
      break;
    case TYPE_BOOLEAN:
      break;
    case TYPE_CHARACTER:
      break;
    case TYPE_INTEGER:
      break;
    case TYPE_FLOAT:
      break;
    case DATA_BOOLEAN:
    case DATA_CHARACTER:
    case DATA_INTEGER:
      return format_string("%d", expression->content.i);
      break;
    case DATA_FLOAT:
      return format_string("%f", expression->content.f);
      break;
    case DATA_STRING:
      break;
    default:
      throw_code_error("invalid expression");
      return NULL;
  }
  return format_string("");
}

/************************* UTILITY *************************/

char* get_node_name(Node* node) {
  return (char*)node->content.s;
}

int* initialize_id() {
  int* id = (int*)safe_malloc(sizeof(int));
  *id = -1;

  return id;
}

int next_id(int* id) {
  (*id)++;
  return *id;
}