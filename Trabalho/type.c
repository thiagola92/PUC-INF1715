// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#include"type.h"

void throw_type_error(const char* error) {
	printf("type error: %s\n", error);
	exit(3);
}

void throw_numeric_error(Node* node) {
  if(node->content.n[0]->type != INTEGER && node->content.n[0]->type != FLOAT)
    throw_type_error("value must be integer or float");
    
  if(node->content.n[1]->type != INTEGER && node->content.n[1]->type != FLOAT)
    throw_type_error("value must be integer or float");
}

Node* cast_to(Node* node, TAG tag) {
  return create_node(EXPRESSION_CAST, 2, node, create_node(tag, 0));
}

void cast_to_integer(Node* node, int index) {
  node->content.n[index] = cast_to(node->content.n[index], TYPE_INTEGER);
  type_node(node->content.n[index]);
}

void cast_to_float(Node* node, int index) {  
  node->content.n[index] = cast_to(node->content.n[index], TYPE_FLOAT);
  type_node(node->content.n[index]);
}

void cast_to_array(Node* node, int index) {
  node->content.n[index] = cast_to(node->content.n[index], TYPE_CHARACTER);
  type_node(node->content.n[index]);
}

void cast_integer_to_float(Node* node) {
  node->content.n[0]->type == INTEGER ? cast_to_float(node, 0) : cast_to_float(node, 1);
}

TYPE type_from_array(Node* node) {
  return node->definition->content.n[1]->content.n[0]->type;
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

void check_assignment_type(Node* node) {
  Node* left_node = node->content.n[0];
  Node* right_node = node->content.n[1];

  if(left_node->type == right_node->type)
    return;
    
  if(left_node->type == FLOAT && right_node->type == INTEGER)
    return cast_to_float(node, 1);
    
  if(left_node->type == INTEGER && right_node->type == FLOAT)
    return cast_to_integer(node, 1);
    
  if(left_node->type == ARRAY && type_from_array(left_node) == CHARACTER && right_node->type == STRING)
    return cast_to_array(node, 1);
  
  throw_type_error("value must be same as variable type");
}

void check_return_type(Node* node) {
  if(node->number_of_childs == 0)
    return;

  if(type_from_function_call(node->definition) != node->content.n[0]->type)
    throw_type_error("value must be same as function return type");
}

void check_array_position(Node* node) {
  if(node->content.n[1]->type != INTEGER)
    throw_type_error("position in array must be integer");
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
      check_array_position(node);
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
    case TYPE_BOOLEAN:
      node->type = BOOLEAN;
      break;
    case TYPE_CHARACTER:
      node->type = CHARACTER;
      break;
    case TYPE_INTEGER:
      node->type = INTEGER;
      break;
    case TYPE_FLOAT:
      node->type = FLOAT;
      break;
    case TYPE_ARRAY:
      node->type = ARRAY;
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
