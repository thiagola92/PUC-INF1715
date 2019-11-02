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
  int childs = define_function->number_of_childs;
  
  Node* block = define_function->content.n[childs - 1];
  
  switch(childs) {
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
      type_return(command);
      break;
    case PRINT:
      // TODO
      break;
    case FUNCTION_CALL:
      type_function_call(command);
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
      variable_or_array_position->type = variable_or_array_position->definition->type;
      break;
    case ARRAY_POSITION:
      type_array_position(variable_or_array_position);
      break;
    default:
      throw_type_error("invalid left side of assignment");
  }
  
  type_expression(expression);

  if(variable_or_array_position->type->tag == TYPE_CHARACTER && expression->type->tag == TYPE_INTEGER)
    return;

  if(variable_or_array_position->type->tag == TYPE_INTEGER && expression->type->tag == TYPE_FLOAT) {
    cast_floats_to_integers(assignment);
    return;
  }

  if(variable_or_array_position->type->tag == TYPE_FLOAT && expression->type->tag == TYPE_INTEGER) {
    cast_integers_to_float(assignment);
    return;
  }

  if(is_type_equal(variable_or_array_position, expression) == false)
    throw_type_error("invalid assignment from different types");
}

void type_return(Node* command_return) {
  Node* expression = NULL;
  Node* definition = command_return->definition;

  if(command_return->number_of_childs == 0 && definition->type == NULL)
    return;

  if(command_return->number_of_childs == 0 && definition->type != NULL)
    throw_type_error("invalid because return value is missing");
  
  expression = command_return->content.n[0];

  type_expression(expression);

  if(is_cast_integer_to_character_needed(definition, expression)) {
    cast_integers_to_character(command_return);
    expression = command_return->content.n[0];
  }

  throw_type_error_if_not(definition->type, expression->type->tag, "invalid return type");
}

void type_expression(Node* expression) {
  switch(expression->tag) {
    case EXPRESSION_OR:
    case EXPRESSION_AND:
      type_boolean_expression(expression);
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
      type_variable_expression(expression);
      break;
    case FUNCTION_CALL:
      type_function_call(expression);
      break;
    case NEW_ARRAY:
      type_new_array(expression);
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

void type_boolean_expression(Node* expression) {
  Node* e1 = expression->content.n[0];
  Node* e2 = expression->content.n[1];

  type_expression(e1);
  type_expression(e2);

  throw_type_error_if_not(e1->type, TYPE_BOOLEAN, "invalid boolean expression");
  throw_type_error_if_not(e2->type, TYPE_BOOLEAN, "invalid boolean expression");

  expression->type = malloc_node(TYPE_BOOLEAN);
}

void type_equality_expression(Node* expression) {
  Node* e1 = expression->content.n[0];
  Node* e2 = expression->content.n[1];
  
  type_expression(e1);
  type_expression(e2);
  
  if(is_cast_integer_to_float_needed(e1, e2))
    cast_integers_to_float(expression);
  
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
  
  if(is_cast_integer_to_float_needed(e1, e2))
    cast_integers_to_float(expression);
  
  expression->type = malloc_node(TYPE_BOOLEAN);
}

void type_arithmetic_expression(Node* expression) {
  Node* e1 = expression->content.n[0];
  Node* e2 = expression->content.n[1];
  
  type_expression(e1);
  type_expression(e2);
  
  if(is_type_numeric(e1, e2) == false)
    throw_type_error("invalid arithmetic expression");
  
  if(is_cast_integer_to_float_needed(e1, e2))
    cast_integers_to_float(expression);

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

void type_array_position(Node* array_position) {
  Node* e1 = array_position->content.n[0];
  Node* e2 = array_position->content.n[1];

  type_expression(e1);
  type_expression(e2);

  throw_type_error_if_not(e1->type, TYPE_ARRAY, "invalid array position");
  throw_type_error_if_not(e2->type, TYPE_INTEGER, "invalid position from array");

  array_position->type = e1->type->type;
}

void type_variable_expression(Node* variable) {  
  variable->type = variable->definition->type;
  
  if(variable->type->tag == TYPE_CHARACTER)
    variable->type->tag = TYPE_INTEGER;
}

void type_function_call(Node* function_call) {
  function_call->type = function_call->definition->type;

  if(function_call->number_of_childs == 2)
    type_expressions(function_call->content.n[1]);
}

void type_expressions(Node* expressions) {
  if(expressions->tag == EXPRESSION_LIST)
    type_expression_list(expressions);
  else
    type_expression(expressions);
}

void type_expression_list(Node* expression_list) {
  for(int i = 0; i < expression_list->number_of_childs; i++)
    type_expression(expression_list->content.n[i]);
}

void type_new_array(Node* new_array) {
  Node* variable_type = new_array->content.n[0];
  Node* expression = new_array->content.n[1];
  Node* type_array = create_node(TYPE_ARRAY, 1, variable_type);

  type_variable_type(variable_type);
  type_expression(expression);

  throw_type_error_if_not(expression->type, TYPE_INTEGER, "invalid size from new array");

  type_array->type = variable_type;
  new_array->type = type_array;
}

void type_cast(Node* cast) {
  type_expression(cast->content.n[0]);
  type_variable_type(cast->content.n[1]);

  cast->type = cast->content.n[1]->type;
}

void cast_all_x_types_to_y_type(Node* node, TAG old_type, TAG new_type) {
  for(int i = 0; i < node->number_of_childs; i++) {
    Node* child = node->content.n[i];
    if(child->type->tag == old_type) {
      Node* variable_type = create_node(new_type, 0);
      Node* cast = create_node(EXPRESSION_CAST, 2, child, variable_type);

      type_cast(cast);

      node->content.n[i] = cast;
    }
  }
}

void cast_integers_to_character(Node* node) {
  cast_all_x_types_to_y_type(node, TYPE_INTEGER, TYPE_CHARACTER);
}

void cast_integers_to_float(Node* node) {
  cast_all_x_types_to_y_type(node, TYPE_INTEGER, TYPE_FLOAT);
}

void cast_floats_to_integers(Node* node) {
  cast_all_x_types_to_y_type(node, TYPE_FLOAT, TYPE_INTEGER);
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

int is_cast_x_to_y_needed(Node* e1, Node* e2, TAG t1, TAG t2) {
  if(e1->type->tag == t1 && e2->type->tag == t2)
    return true;
  
  if(e1->type->tag == t2 && e2->type->tag == t1)
    return true;
  
  return false;
}

int is_cast_integer_to_float_needed(Node* e1, Node* e2) {
  return is_cast_x_to_y_needed(e1, e2, TYPE_INTEGER, TYPE_FLOAT);
}

int is_cast_integer_to_character_needed(Node* e1, Node* e2) {
  return is_cast_x_to_y_needed(e1, e2, TYPE_CHARACTER, TYPE_INTEGER);
}