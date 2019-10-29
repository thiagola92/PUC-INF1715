// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#include"type.h"

void throw_type_error(const char* error) {
	printf("type error: %s\n", error);
	exit(3);
}

void throw_numeric_error(Node* node, const char* error) {
  if(node->content.n[0]->type != INTEGER && node->content.n[0]->type != FLOAT)
    throw_type_error(error);
    
  if(node->content.n[1]->type != INTEGER && node->content.n[1]->type != FLOAT)
    throw_type_error(error);
}

Node* cast_to(Node* node, TAG tag) {
  Node* type = create_node(tag, 0);
  Node* cast = create_node(EXPRESSION_CAST, 2, node, type);
  type_node(cast);
  
  return cast;
}

void cast_type_to(Node* node, TYPE type, TAG tag) {
  for(int i=0; i < node->number_of_childs; i++)
    if(node->content.n[i]->type == type) {
      node->content.n[i] = cast_to(node->content.n[i], tag);
    }
}

TYPE type_from_array_position(Node* node) {
  if(node->content.n[0]->tag == NEW_ARRAY)
    return node->content.n[0]->content.n[0]->type;
  
  return node->content.n[0]->definition->content.n[1]->content.n[0]->type;
}

TYPE type_from_function_call(Node* node) {    
  if(node->number_of_childs == 4)
    return node->content.n[2]->type;
    
  if(node->content.n[1]->tag != PARAMETER || node->content.n[1]->tag != PARAMETER_LIST)
    return node->content.n[1]->type;
    
  return VOID;
}

TYPE type_from_arithmetic(Node* node) {
  cast_type_to(node, CHARACTER, TYPE_INTEGER);
  
  throw_numeric_error(node, "arithmetic receiving not integer/float");
    
  if(node->content.n[0]->type == node->content.n[1]->type)
    return node->content.n[0]->type;
  
  cast_type_to(node, INTEGER, TYPE_FLOAT);
  
  return FLOAT;
}

Node* next_node_type_from_array(Node* node) {
  switch(node->tag) {
    case VARIABLE:
      return node->definition->content.n[1]->content.n[0];
      break;
    case NEW_ARRAY:
    case TYPE_ARRAY:
      return node->content.n[0];
      break;
    case ARRAY_POSITION:
      return next_node_type_from_array(next_node_type_from_array(node->content.n[0]));
      break;
    default:
      return NULL;
  }
}

void check_boolean_expression(Node* node) {
  if(node->content.n[0]->type != BOOLEAN)
    throw_type_error("condition must be boolean");
}

void check_char_type(Node* node) {
  if(node == NULL)
    throw_type_error("arrays from different type");
  
  if(node->type != CHARACTER)
    throw_type_error("arrays from different type");
}

void check_array_type(Node* left_node, Node* right_node) {
  Node* next_left_node = NULL;
  Node* next_right_node = NULL;

  if(left_node == NULL && right_node == NULL)
    return;

  if(left_node == NULL || right_node == NULL)
    throw_type_error("arrays from different type");
  
  if(left_node->type != right_node->type)
    throw_type_error("arrays from different type");
    
  next_left_node = next_node_type_from_array(left_node);
  next_right_node = next_node_type_from_array(right_node);
    
  if(right_node->tag == DATA_STRING)
    return check_char_type(next_left_node);
  
  check_array_type(next_left_node, next_right_node);
}

void check_assignment_type(Node* node) {
  Node* left_node = node->content.n[0];
  Node* right_node = node->content.n[1];
    
  if(left_node->type == ARRAY && right_node->type == ARRAY)
    return check_array_type(left_node, right_node);
    
  if(left_node->type == FLOAT && right_node->type == INTEGER)
    return cast_type_to(node, INTEGER, TYPE_FLOAT);
    
  if(left_node->type == INTEGER && right_node->type == FLOAT)
    return cast_type_to(node, FLOAT, TYPE_INTEGER);
    
  if(left_node->type == CHARACTER && right_node->type == INTEGER)
    return cast_type_to(node, INTEGER, TYPE_CHARACTER);
    
  if(left_node->type == INTEGER && right_node->type == CHARACTER)
    return cast_type_to(node, CHARACTER, TYPE_INTEGER);

  if(left_node->type == right_node->type)
    return;
  
  throw_type_error("assignment between different types and can't cast");
}

void check_return_type(Node* node) {
  if(node->number_of_childs == 0)
    return;

  if(type_from_function_call(node->definition) != node->content.n[0]->type)
    throw_type_error("wrong return type");
}

void check_array_position(Node* node) {
  if(node->content.n[0]->type != ARRAY)
    throw_type_error("can't access a position from basic types");

  if(node->content.n[1]->type != INTEGER)
    throw_type_error("position in array is not an integer");
}

void check_logical_type(Node* node) {
  if(node->content.n[0]->type != BOOLEAN || node->content.n[0]->type != BOOLEAN)
    throw_type_error("logical expression receiving not booleans");
}

void check_equality_type(Node* node) {
  cast_type_to(node, CHARACTER, TYPE_INTEGER);
  
  if(node->content.n[0]->type == node->content.n[1]->type)
    return;
    
  throw_numeric_error(node, "equality can't compare types");
  
  cast_type_to(node, INTEGER, TYPE_FLOAT);
}

void check_inequality_type(Node* node) {
  cast_type_to(node, CHARACTER, TYPE_INTEGER);
  
  throw_numeric_error(node, "inequality can't compare types");
    
  if(node->content.n[0]->type == node->content.n[1]->type)
    return;
  
  cast_type_to(node, INTEGER, TYPE_FLOAT);
}

void type_node(Node* node) {
  for(int i = 0; i < node->number_of_childs; i++)
    type_node(node->content.n[i]);
  
  switch(node->tag) {
    case IF:
    case WHILE:
      check_boolean_expression(node);
      break;
    case ASSIGNMENT:
      check_assignment_type(node);
      break;
    case RETURN:
      check_return_type(node);
      break;
    case ARRAY_POSITION:
      check_array_position(node);
      node->type = type_from_array_position(node);
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
    case EXPRESSION_AND:
      check_logical_type(node);
      node->type = BOOLEAN;
      break;
    case EXPRESSION_EQUAL:
    case EXPRESSION_NOT_EQUAL:
      check_equality_type(node);
      node->type = BOOLEAN;
      break;
    case EXPRESSION_GREATER:
    case EXPRESSION_GREATER_EQUAL:
    case EXPRESSION_LESS:
    case EXPRESSION_LESS_EQUAL:
      check_inequality_type(node);
      node->type = BOOLEAN;
      break;
    case EXPRESSION_SUB:
    case EXPRESSION_ADD:
    case EXPRESSION_DIV:
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
      node->type = ARRAY;
      break;
    case DATA_ARRAY:
      node->type = ARRAY;
      break;
    default:
      break;
  }
}
