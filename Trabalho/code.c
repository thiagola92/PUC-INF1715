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

  define_variable->id = identifier;

  printf("%s = global ", identifier);
  code_variable_type(define_variable->content.n[1]);
  printf(" ");
  code_initial_value(define_variable->content.n[1]);
  printf("\n");
}

void code_variable_type(Node* variable_type) {
  switch(variable_type->tag) {
    case TYPE_BOOLEAN:
    case TYPE_CHARACTER:
    case TYPE_INTEGER:
      printf("i32");
      break;
    case TYPE_FLOAT:
      printf("float");
      break;
    case TYPE_ARRAY:
      code_variable_type(variable_type->type);
      printf("*");
      break;
    default:
      throw_code_error("invalid variable type");
  }
}

void code_initial_value(Node* variable_type) {
  switch(variable_type->tag) {
    case TYPE_BOOLEAN:
    case TYPE_CHARACTER:
    case TYPE_INTEGER:
      printf("0");
      break;
    case TYPE_FLOAT:
      printf("0.000000e+00");
      break;
    case TYPE_ARRAY:
      printf("null");
      break;
    default:
      throw_code_error("invalid initial value");
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
  int* id = initialize_id();

  define_function->id = identifier;

  printf("define ");
  code_variable_type(define_function->content.n[2]);
  printf(" %s(", identifier);
  code_parameters(id, define_function->content.n[1]);
  printf(") {\n");
  define_function->content.n[3]->id = format_string("%%%d", next_id(id));
  code_parameters_declarations(id, define_function->content.n[1]);
  code_block(id, define_function->content.n[3]);
  printf("}\n\n");
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
  int* id = initialize_id();

  define_function->id = identifier;

  printf("define void %s(", identifier);
  code_parameters(id, define_function->content.n[1]);
  printf(") {\n");
  define_function->content.n[2]->id = format_string("%%%d", next_id(id));
  code_parameters_declarations(id, define_function->content.n[1]);
  code_block(id, define_function->content.n[2]);
  printf("  ret void\n");
  printf("}\n\n");
}

void code_define_global_function_3_with_type(Node* define_function) {
  char* name = get_node_name(define_function->content.n[0]);
  char* identifier = format_string("@%s", name);
  int* id = initialize_id();

  define_function->id = identifier;

  printf("define ");
  code_variable_type(define_function->content.n[1]);
  printf(" %s() {\n", identifier);
  define_function->content.n[2]->id = format_string("%%%d", next_id(id));
  code_block(id, define_function->content.n[2]);
  printf("}\n\n");
}

void code_define_global_function_2(Node* define_function) {
  char* name = get_node_name(define_function->content.n[0]);
  char* identifier = format_string("@%s", name);
  int* id = initialize_id();

  define_function->id = format_string("@%s", name);;

  printf("define void %s() {\n", identifier);
  define_function->content.n[1]->id = format_string("%%%d", next_id(id));
  code_block(id, define_function->content.n[1]);
  printf("  ret void\n");
  printf("}\n\n");
}

void code_parameters(int* id, Node* parameters) {
  switch(parameters->tag) {
    case PARAMETER_LIST:
      code_parameter_list(id, parameters);
      break;
    case PARAMETER:
      code_parameter(id, parameters);
      break;
    default:
      throw_code_error("invalid parameter");
  }
}

void code_parameter_list(int* id, Node* parameter_list) {
  for(int i = 0; i < parameter_list->number_of_childs; i++) {
    code_parameter(id, parameter_list->content.n[i]);

    if(i+1 < parameter_list->number_of_childs)
      printf(", ");
  }
}

void code_parameter(int* id, Node* parameter) {
  parameter->id = format_string("%%%d", next_id(id));
  code_variable_type(parameter->content.n[1]);
}

void code_parameters_declarations(int* id, Node* parameters) {
  switch(parameters->tag) {
    case PARAMETER_LIST:
      code_parameter_declaration_list(id, parameters);
      break;
    case PARAMETER:
      code_parameter_declaration(id, parameters);
      break;
    default:
      throw_code_error("invalid parameter declaration");
  }
}

void code_parameter_declaration_list(int* id, Node* parameter_list) {
  for(int i = 0; i < parameter_list->number_of_childs; i++)
    code_parameter_declaration(id, parameter_list->content.n[i]);
}

void code_parameter_declaration(int* id, Node* parameter) {
  char* identifier = format_string("%%%d", next_id(id));

  printf("  %s = alloca ", identifier);
  code_variable_type(parameter->content.n[1]);
  printf("\n");

  printf("  store ");
  code_variable_type(parameter->content.n[1]);
  printf(" %s, ", parameter->id);
  code_variable_type(parameter->content.n[1]);
  printf("* %s\n", identifier);

  parameter->id = identifier;
}

void code_block(int* id, Node* block) {
  switch(block->number_of_childs) {
    case 2:
      code_block_2(id, block);
      break;
    case 1:
      code_block_1(id, block);
      break;
    case 0:
      format_string("");
      break;
    default:
      throw_code_error("invalid block");
  }
}

void code_block_2(int* id, Node* block) {
  code_variables(id, block->content.n[0]);
  code_commands(id, block->content.n[1]);
}

void code_block_1(int* id, Node* block) {
  if(block->content.n[0]->tag == VARIABLE_LIST || block->content.n[0]->tag == DEFINE_VARIABLE)
    return code_variables(id, block->content.n[0]);
  return code_commands(id, block->content.n[0]);
}

void code_variables(int* id, Node* variables) {
  switch(variables->tag) {
    case VARIABLE_LIST:
      code_local_variable_list(id, variables);
      break;
    case DEFINE_VARIABLE:
      code_local_variable(id, variables);
      break;
    default:
      throw_code_error("invalid variable list");
  }
}

void code_local_variable_list(int* id, Node* variable_list) {
  for(int i = 0; i < variable_list->number_of_childs; i++)
    code_local_variable(id, variable_list->content.n[i]);
}

void code_local_variable(int* id, Node* variable) {
  char* identifier = format_string("%%%d", next_id(id));

  printf("  %s = alloca ", identifier);
  code_variable_type(variable->content.n[1]);
  printf("\n");

  variable->id = identifier;
}

void code_commands(int* id, Node* commands) {
  switch(commands->tag) {
    case COMMAND_LIST:
      code_command_list(id, commands);
      break;
    case IF:
    case WHILE:
    case ASSIGNMENT:
    case RETURN:
    case PRINT:
    case FUNCTION_CALL:
      code_command(id, commands);
      break;
    default:
      throw_code_error("invalid commands");
  }
}

void code_command_list(int* id, Node* command_list) {
  for(int i = 0; i < command_list->number_of_childs; i++)
    code_command(id, command_list->content.n[i]);
}

void code_command(int* id, Node* command) {
  switch(command->tag) {
    case IF:
      code_if(id, command);
      break;
    case WHILE:
      code_while(id, command);
      break;
    case ASSIGNMENT:
      code_assignment(id, command);
      break;
    case RETURN:
      code_return(id, command);
      break;
    case PRINT:
      code_print(id, command);
      break;
    case FUNCTION_CALL:
      code_function_call(id, command);
      break;
    default:
      throw_code_error("invalid command");
  }
}

void code_if(int* id, Node* if_command) {
  printf("");
}

void code_while(int* id, Node* while_command) {
  printf("");
}

void code_assignment(int* id, Node* assignment) {
  printf("");
}

void code_return(int* id, Node* return_command) {
  if(return_command->number_of_childs == 0)
    printf("  ret void\n");
  else
    code_return_value(id, return_command);
}

void code_return_value(int* id, Node* return_command) {
  code_expression(id, return_command->content.n[0]);

  printf("  ret ");
  code_variable_type(return_command->definition->type);
  printf(" %s\n", return_command->content.n[0]->id);
}

void code_print(int* id, Node* print) {
  printf("");
}

void code_function_call(int* id, Node* function_call) {
  printf("");
}

void code_expression(int* id, Node* expression) {
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
      code_expression_variable(id, expression);
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
      code_expression_integer(id, expression);
      break;
    case DATA_FLOAT:
      code_expression_float(id, expression);
      break;
    case DATA_STRING:
      code_expression_string(id, expression);
      break;
    default:
      throw_code_error("invalid expression");
  }
}

void code_expression_variable(int* id, Node* variable) {
  char* identifier = format_string("%%%d", next_id(id));

  printf("  %s = load ", identifier);
  code_variable_type(variable->definition->content.n[1]);
  printf(", ");
  code_variable_type(variable->definition->content.n[1]);
  printf("* %s\n", variable->definition->id);

  variable->id = identifier;
}

void code_expression_integer(int* id, Node* integer) {
  char* alloca_id = format_string("%%%d", next_id(id));
  char* store_id = format_string("%%%d", next_id(id));

  printf("  %s = alloca i32\n", alloca_id);
  printf("  store i32 %d, i32* %s\n", integer->content.i, alloca_id);
  printf("  %s = load i32, i32* %s\n", store_id, alloca_id);

  integer->id = store_id;
}

void code_expression_float(int* id, Node* float_exp) {
  char* alloca_id = format_string("%%%d", next_id(id));
  char* store_id = format_string("%%%d", next_id(id));

  printf("  %s = alloca float\n", alloca_id);
  printf("  store float %f, float* %s\n", float_exp->content.f, alloca_id);
  printf("  %s = load float, float* %s\n", store_id, alloca_id);

  float_exp->id = store_id;
}

void code_expression_string(int* id, Node* string) {
  char* identifier = format_string("%%%d", next_id(id));
  char* identifier_char = NULL;
  int length = strlen(string->content.s) + 1;

  printf("  %s = alloca [%d x i32]\n", identifier, length);

  for(int i = 0; i < length; i++) {
    identifier_char = format_string("%%%d", next_id(id));
    int character = (int)string->content.s[i];

    printf("  %s = getelementptr inbounds [%d x i32], [%d x i32]* %s, i64 0, i64 %d\n", identifier_char, length, length, identifier, i);
    printf("  store i32 %d, i32* %s\n", character, identifier_char);
  }

  identifier_char = format_string("%%%d", next_id(id));
  printf("  %s = getelementptr inbounds [%d x i32], [%d x i32]* %s, i32 0, i32 0\n", identifier_char, length, length, identifier);

  string->id = identifier_char;
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