// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#include"type.h"

void throw_type_error(const char* error) {
	printf("Type error: %s\n", error);
	exit(3);
}

void throw_numeric_error(Node* node) {
  if(node->content.n[0]->type != INTEGER && node->content.n[0]->type != FLOAT)
    throw_type_error("value must be integer or float");
    
  if(node->content.n[1]->type != INTEGER && node->content.n[1]->type != FLOAT)
    throw_type_error("value must be integer or float");
}

void cast_to_integer(Node* node, int index) {  
  node->content.n[index] = create_node_two_child(EXPRESSION_CAST, node->content.n[index], create_node_int(0));
  type_node(node->content.n[index]);
}

void cast_to_float(Node* node, int index) {  
  node->content.n[index] = create_node_two_child(EXPRESSION_CAST, node->content.n[index], create_node_float(0.0));
  type_node(node->content.n[index]);
}

void cast_to_array(Node* node, int index) {  
  node->content.n[index] = create_node_two_child(EXPRESSION_CAST, node->content.n[index], create_node_one_child(DATA_ARRAY, create_node_char(' ')));
  type_node(node->content.n[index]);
}

void cast_integer_to_float(Node* node) {
  node->content.n[0]->type == INTEGER ? cast_to_float(node, 0) : cast_to_float(node, 1);
}

void check_assignment_type(Node* node) {
  if(node->content.n[0]->type == node->content.n[1]->type)
    return;
    
  if(node->content.n[0]->type == FLOAT && node->content.n[1]->type == INTEGER)
    return cast_to_float(node, 1);
    
  if(node->content.n[0]->type == INTEGER && node->content.n[1]->type == FLOAT)
    return cast_to_integer(node, 1);
    
  if(node->content.n[0]->type == ARRAY && node->content.n[1]->type == STRING)
    return cast_to_array(node, 1);
  
  throw_type_error("value must be same as variable type");
}

void check_return_type(Node* node) {
  if(type_from_function_call(node->definition) != node->content.n[0]->type)
    throw_type_error("value must be same as function return type");
}

void check_logical_type(Node* node) {
  if(node->content.n[0]->type != BOOLEAN || node->content.n[0]->type != BOOLEAN)
    throw_type_error("value must be boolean");
}

void check_relational_type_1(Node* node) {
  if(node->content.n[0]->type == node->content.n[1]->type)
    return;
    
  throw_numeric_error(node);
  
  cast_integer_to_float(node);
}

void check_relational_type_2(Node* node) {
  throw_numeric_error(node);
    
  if(node->content.n[0]->type == node->content.n[1]->type)
    return;
  
  cast_integer_to_float(node);
}

TYPE type_from_function_call(Node* node) {    
  if(node->number_of_childs == 4)
    return node->content.n[2]->type;
    
  if(node->content.n[1]->tag != PARAMETER || node->content.n[1]->tag != PARAMETER_LIST)
    return node->content.n[1]->type;
    
  return VOID;
}

TYPE type_from_arithmetic(Node* node) {
  throw_numeric_error(node);
    
  if(node->content.n[0]->type == node->content.n[1]->type)
    return node->content.n[0]->type;
  
  cast_integer_to_float(node);
  
  return FLOAT;
}

void type_child(Node* node) {
  for(int i = 0; i < node->number_of_childs; i++)
    type_node(node->content.n[i]);
}

TYPE type_node(Node* node) {
  type_child(node);
  
  switch(node->tag) {
    case ASSIGNMENT:
      check_assignment_type(node);
      break;
    case RETURN:
      check_return_type(node);
      break;
    case ARRAY_POSITION:
      node->type = node->content.n[0]->definition->content.n[1]->content.n[0]->type;
      break;
    case VARIABLE:
      node->type = node->definition->content.n[1]->type;
      break;
    case FUNCTION_CALL:
      node->type = type_from_function_call(node->definition);
      break;
    case NEW_ARRAY:
      node->type = ARRAY;
      break;
    case EXPRESSION_OR:
      check_logical_type(node);
      node->type = BOOLEAN;
      break;
    case EXPRESSION_AND:
      check_logical_type(node);
      node->type = BOOLEAN;
      break;
    case EXPRESSION_EQUAL:
      check_relational_type_1(node);
      node->type = BOOLEAN;
      break;
    case EXPRESSION_NOT_EQUAL:
      check_relational_type_1(node);
      node->type = BOOLEAN;
      break;
    case EXPRESSION_GREATER:
      check_relational_type_2(node);
      node->type = BOOLEAN;
      break;
    case EXPRESSION_GREATER_EQUAL:
      check_relational_type_2(node);
      node->type = BOOLEAN;
      break;
    case EXPRESSION_LESS:
      check_relational_type_2(node);
      node->type = BOOLEAN;
      break;
    case EXPRESSION_LESS_EQUAL:
      check_relational_type_2(node);
      node->type = BOOLEAN;
      break;
    case EXPRESSION_SUB:
      node->type = type_from_arithmetic(node);
      break;
    case EXPRESSION_ADD:
      node->type = type_from_arithmetic(node);
      break;
    case EXPRESSION_DIV:
      node->type = type_from_arithmetic(node);
      break;
    case EXPRESSION_MULT:
      node->type = type_from_arithmetic(node);
      break;
    case EXPRESSION_CAST:
      node->type = node->content.n[1]->type;
      break;
    case EXPRESSION_NEGATIVE:
      node->type = node->content.n[0]->type;
      break;
    case EXPRESSION_NOT:
      node->type = node->content.n[0]->type;
      break;
    case DATA_BOOLEAN:
      node->type = BOOLEAN;
      break;
    case DATA_CHARACTER:
      node->type = CHARACTER;
      break;
    case DATA_INTEGER:
      node->type = INTEGER;
      break;
    case DATA_FLOAT:
      node->type = FLOAT;
      break;
    case DATA_STRING:
      node->type = STRING;
      break;
    case DATA_ARRAY:
      node->type = ARRAY;
      break;
    default:
      break;
  }
  
  return node->type;
}
