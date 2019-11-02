// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#include"type.h"

# define true 1
# define false 0

void throw_type_error(const char* error) {
  printf("type error: %s\n", error);
  exit(3);
}

void throw_type_error_if(Node* node, TAG tag, const char* error) {
  if(node == NULL)
    throw_type_error(error);
    
  if(node->tag == tag)
    throw_type_error(error);
}

void throw_type_error_if_not(Node* node, TAG tag, const char* error) {
  if(node == NULL)
    throw_type_error(error);
    
  if(node->tag != tag)
    throw_type_error(error);
}

void start_typing(Node* program) {
  switch(program->tag) {
    case EMPTY:
      break;
    case DEFINE_LIST:
      type_define_list(program);
      break;
    case DEFINE_VARIABLE:
      type_define_variable(program);
      break;
    case DEFINE_FUNCTION:
      type_define_function(program);
      break;
    default:
      throw_type_error("invalid start");
  }
}

void type_define_list(Node* define_list) {
  for(int i = 0; i < define_list->number_of_childs; i++) {
    Node* define = define_list->content.n[i];
    
    switch(define->tag) {
      case DEFINE_VARIABLE:
        type_define_variable(define);
        break;
      case DEFINE_FUNCTION:
        type_define_function(define);
        break;
      default:
        throw_type_error("invalid definition");
    }
  }
}

void type_define_variable(Node* define_variable) {
  type_variable_type(define_variable->content.n[1]);
  define_variable->type = define_variable->content.n[1];
}

void type_variable_type(Node* variable_type) {
  switch(variable_type->tag) {
    case TYPE_ARRAY:
      type_variable_type(variable_type->content.n[0]);
      variable_type->type = variable_type->content.n[0];
      break;
    case TYPE_BOOLEAN:
    case TYPE_CHARACTER:
    case TYPE_INTEGER:
    case TYPE_FLOAT:
      variable_type->type = variable_type;
      break;
    default:
      throw_type_error("invalid variable type");
  }
}

void type_define_function(Node* define_function) {
  int number_of_childs = define_function->number_of_childs;
  
  Node* block = define_function->content.n[number_of_childs - 1];
  
  switch(number_of_childs) {
    case 4:
      type_parameters(define_function->content.n[1]);
      type_variable_type(define_function->content.n[2]);
      define_function->type = define_function->content.n[2]->type;
      break;
    case 3:
      type_define_function_three_childs(define_function);
    case 2:
      break;
    default:
      throw_type_error("invalid number of childs from function definition");
  }
  
  type_block(block);
}

void type_define_function_three_childs(Node* define_function) {
  switch(define_function->content.n[1]->tag) {
    case PARAMETER_LIST:
    case PARAMETER:
      type_parameters(define_function->content.n[1]);
      break;
    case TYPE_ARRAY:
    case TYPE_BOOLEAN:
    case TYPE_CHARACTER:
    case TYPE_INTEGER:
    case TYPE_FLOAT:
      type_variable_type(define_function->content.n[1]);
      define_function->type = define_function->content.n[1]->type;
      break;
    default:
      throw_type_error("invalid child from function definition");
  }
}

void type_parameters(Node* parameters) {
  switch(parameters->tag) {
    case PARAMETER_LIST:
      type_parameter_list(parameters);
      break;
    case PARAMETER:
      type_parameter(parameters);
      break;
    default:
      throw_type_error("invalid parameters");
  }
}

void type_parameter_list(Node* parameter_list) {
  for(int i = 0; i < parameter_list->number_of_childs; i++)
    type_parameter(parameter_list->content.n[i]);
}

void type_parameter(Node* parameter) {
  type_variable_type(parameter->content.n[1]);
  parameter->type = parameter->content.n[1];
}

void type_block(Node* block) {
  for(int i = 0; i < block->number_of_childs; i++) {
    switch(block->content.n[i]->tag) {
      case VARIABLE_LIST:
        type_variable_list(block->content.n[i]);
        break;
      case DEFINE_VARIABLE:
        type_define_variable(block->content.n[i]);
        break;
      case COMMAND_LIST:
        type_command_list(block->content.n[i]);
        break;
      case IF:
      case WHILE:
      case ASSIGNMENT:
      case RETURN:
      case PRINT:
      case FUNCTION_CALL:
        type_command(block->content.n[i]);
        break;
      default:
        throw_type_error("invalid block");
    }
  }
}

void type_variable_list(Node* variable_list) {
  for(int i = 0; i < variable_list->number_of_childs; i++)
    type_define_variable(variable_list->content.n[i]);
}

void type_command_list(Node* command_list) {
  for(int i = 0; i < command_list->number_of_childs; i++)
    type_command(command_list->content.n[i]);
}

void type_command(Node* command) {
  switch(command->tag) {
    case IF:
      type_if(command);
      break;
    case WHILE:
      type_while(command);
      break;
    case ASSIGNMENT:
      type_assignment(command);
      break;
    case RETURN:
      break;
    case PRINT:
      break;
    case FUNCTION_CALL:
      break;
    default:
      throw_type_error("invalid command");
  }
}

void type_if(Node* command_if) {
  Node* condition = command_if->content.n[0];
  Node* then = command_if->content.n[1];
  Node* command_else = NULL;

  type_expression(condition);
  type_block(then);

  if(command_if->number_of_childs == 3) {
    command_else = command_if->content.n[2];
    type_block(command_else);
  }
  
  throw_type_error_if_not(command_if->content.n[0]->type, TYPE_BOOLEAN, "invalid condition not boolean from command if");
}

void type_while(Node* command_while) {
  Node* condition = command_while->content.n[0];
  Node* loop = command_while->content.n[1];

  type_expression(condition);
  type_block(loop);
  
  throw_type_error_if_not(condition->type, TYPE_BOOLEAN, "invalid condition not boolean from command if");
}

void type_assignment(Node* assignment) {
  Node* variable_or_array_position = assignment->content.n[0];
  Node* expression = assignment->content.n[1];

  switch(variable_or_array_position->tag) {
    case VARIABLE:
      type_variable(variable_or_array_position);
      break;
    case ARRAY_POSITION:
      type_array_position(variable_or_array_position);
      break;
    default:
      throw_type_error("invalid left side of assignment");
  }
  
  type_expression(expression);
}

void type_expression(Node* expression) {
  switch(expression->tag) {
    case EXPRESSION_OR:
    case EXPRESSION_AND:
      break;
    case EXPRESSION_EQUAL:
    case EXPRESSION_NOT_EQUAL:
      type_equality_expression(expression);
      break;
    case EXPRESSION_GREATER:
    case EXPRESSION_GREATER_EQUAL:
    case EXPRESSION_LESS:
    case EXPRESSION_LESS_EQUAL:
      type_inequality_expression(expression);
      break;
    case EXPRESSION_SUB:
    case EXPRESSION_ADD:
    case EXPRESSION_DIV:
    case EXPRESSION_MULT:
      type_arithmetic_expression(expression);
      break;
    case EXPRESSION_CAST:
      type_cast(expression);
      break;
    case EXPRESSION_NEGATIVE:
      type_negative_expression(expression);
      break;
    case EXPRESSION_NOT:
      type_not_expression(expression);
      break;
    case ARRAY_POSITION:
      type_array_position(expression);
      break;
    case VARIABLE:
      type_variable(expression);
      break;
    case FUNCTION_CALL:
      break;
    case NEW_ARRAY:
      break;
    case TYPE_ARRAY:
    case TYPE_BOOLEAN:
    case TYPE_CHARACTER:
    case TYPE_INTEGER:
    case TYPE_FLOAT:
    case DATA_BOOLEAN:
      break;
    case DATA_CHARACTER:
      expression->tag = DATA_INTEGER;
      expression->type->tag = TYPE_INTEGER;
      break;
    case DATA_INTEGER:
    case DATA_FLOAT:
    case DATA_STRING:
      break;
    default:
      throw_type_error("invalid expression");
  }
}

void type_equality_expression(Node* expression) {
  Node* e1 = expression->content.n[0];
  Node* e2 = expression->content.n[1];
  
  type_expression(e1);
  type_expression(e2);
  
  if(is_cast_needed(e1, e2))
    cast_childs_to_float(expression);
  
  if(is_type_equal(e1, e2) == false)
    throw_type_error("invalid equality expression");
  
  expression->type = malloc_node(TYPE_BOOLEAN);
}

void type_inequality_expression(Node* expression) {
  Node* e1 = expression->content.n[0];
  Node* e2 = expression->content.n[1];
  
  type_expression(e1);
  type_expression(e2);

  throw_type_error_if(e1->type, TYPE_ARRAY, "invalid inequality expression between arrays");
  throw_type_error_if(e2->type, TYPE_ARRAY, "invalid inequality expression between arrays");

  throw_type_error_if(e1->type, TYPE_BOOLEAN, "invalid inequality expression between booleans");
  throw_type_error_if(e2->type, TYPE_BOOLEAN, "invalid inequality expression between booleans");
  
  if(is_cast_needed(e1, e2))
    cast_childs_to_float(expression);
  
  expression->type = malloc_node(TYPE_BOOLEAN);
}

void type_arithmetic_expression(Node* expression) {
  Node* e1 = expression->content.n[0];
  Node* e2 = expression->content.n[1];
  
  type_expression(e1);
  type_expression(e2);
  
  if(is_type_numeric(e1, e2) == false)
    throw_type_error("invalid arithmetic expression");
  
  if(is_cast_needed(e1, e2))
    cast_childs_to_float(expression);

  expression->type = e1->type;
}

void type_negative_expression(Node* expression) {
  Node* e1 = expression->content.n[0];

  type_expression(e1);

  throw_type_error_if(e1->type, TYPE_BOOLEAN, "invalid negative expression for boolean");
  throw_type_error_if(e1->type, TYPE_ARRAY, "invalid negative expression for array");

  expression->type = expression->content.n[0]->type;
}

void type_not_expression(Node* expression) {
  Node* e1 = expression->content.n[0];

  type_expression(e1);

  throw_type_error_if_not(e1->type, TYPE_BOOLEAN, "invalid 'not' expression");
  
  expression->type = e1->type;
}

void type_variable(Node* variable) {  
  variable->type = variable->definition->type;
  
  if(variable->type->tag == TYPE_CHARACTER)
    variable->type->tag = TYPE_INTEGER;
}

void type_array_position(Node* array_position) {
  Node* variable = array_position->content.n[0];
  Node* expression = array_position->content.n[1];

  type_variable(variable);
  type_expression(expression);

  throw_type_error_if_not(expression->type, TYPE_INTEGER, "invalid position from array");

  array_position->type = variable->type->type;
}

void type_cast(Node* cast) {
  type_expression(cast->content.n[0]);
  type_variable_type(cast->content.n[1]);

  cast->type = cast->content.n[1]->type;
}

void cast_childs_to_float(Node* expression) {
  for(int i = 0; i < expression->number_of_childs; i++) {
    Node* e = expression->content.n[i];
    if(e->type->tag == TYPE_INTEGER) {
      Node* variable_type = create_node(TYPE_FLOAT, 0);
      Node* cast = create_node(EXPRESSION_CAST, 2, e, variable_type);

      type_cast(cast);

      expression->content.n[i] = cast;
    }
  }
}

int is_type_equal(Node* e1, Node* e2) {
  if(e1->type == NULL && e2->type == NULL)
    return true;
    
  if(e1->type == NULL || e2->type == NULL)
    return false;

  if(e1->type->tag != e2->type->tag)
    return false;
    
  if(e1->type->tag == TYPE_ARRAY)
    return is_type_equal(e1->type, e2->type);
  
  return true;
}

int is_type_numeric(Node* e1, Node* e2) {
  if(e1->type == NULL || e2->type == NULL)
    return false;
    
  if(e1->type->tag == TYPE_ARRAY || e2->type->tag == TYPE_ARRAY)
    return false;
    
  if(e1->type->tag == TYPE_BOOLEAN || e2->type->tag == TYPE_BOOLEAN)
    return false;
    
  return true;
}

int is_cast_needed(Node* e1, Node* e2) {
  if(e1->type->tag == TYPE_INTEGER && e2->type->tag == TYPE_FLOAT)
    return true;
  
  if(e1->type->tag == TYPE_FLOAT && e2->type->tag == TYPE_INTEGER)
    return true;
  
  return false;
}