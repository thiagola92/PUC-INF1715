#include"type.h"

void throw_type_error(const char* error) {
	printf("Type error: %s\n", error);
	exit(3);
}

void throw_numeric_error(Node* node) {
  if(node->content.n[0]->type != TYPE_INTEGER && node->content.n[0]->type != TYPE_FLOAT)
    throw_type_error("value must be integer or float");
    
  if(node->content.n[1]->type != TYPE_INTEGER && node->content.n[1]->type != TYPE_FLOAT)
    throw_type_error("value must be integer or float");
}

void cast_to_float(Node* node) {
  int index;
  
  if(node->content.n[0]->type == node->content.n[1]->type)
    return;
  
  index = (node->content.n[0]->type == TYPE_INTEGER) ? 0 : 1;
  
  node->content.n[index] = create_node_two_child(EXPRESSION_CAST, node->content.n[index], create_node_float(0.0));
  type_node(node->content.n[index]);
}

TYPE type_from_array(Node* node) {
  return node->content.n[1]->content.n[0]->type;
}

TYPE type_from_variable(Node* node) {
  return node->content.n[1]->type;
}

TYPE type_from_function_call(Node* node) {
  if(node->number_of_childs == 4)
    return node->content.n[2]->type;
    
  if(node->number_of_childs == 3 && node->content.n[2]->tag != BLOCK)
    return node->content.n[1]->type;
    
  return TYPE_VOID;
}

TYPE type_from_logical(Node* node) {
  if(node->content.n[0]->type != TYPE_BOOLEAN || node->content.n[0]->type != TYPE_BOOLEAN)
    throw_type_error("value must be boolean");
    
  return TYPE_BOOLEAN;
}

TYPE type_from_relational_1(Node* node) {
  if(node->content.n[0]->type == node->content.n[1]->type)
    return TYPE_BOOLEAN;
    
  throw_numeric_error(node);
  
  cast_to_float(node);
  
  return TYPE_BOOLEAN;
}

TYPE type_from_relational_2(Node* node) {
  throw_numeric_error(node);
    
  if(node->content.n[0]->type == node->content.n[1]->type)
    return TYPE_BOOLEAN;
  
  cast_to_float(node);
  
  return TYPE_BOOLEAN;
}

TYPE type_from_arithmetic(Node* node) {
  throw_numeric_error(node);
    
  if(node->content.n[0]->type == node->content.n[1]->type)
    return node->content.n[0]->type;
  
  cast_to_float(node);
  
  return TYPE_FLOAT;
}

void type_child(Node* node) {
  for(int i = 0; i < node->number_of_childs; i++)
    type_node(node->content.n[i]);
}

TYPE type_node(Node* node) {
  type_child(node);
  
  switch(node->tag) {
    case RETURN:
      break;
    case ARRAY:
      node->type = type_from_array(node->content.n[0]->definition);
      break;
    case VARIABLE:
      node->type = type_from_variable(node->definition);
      break;
    case FUNCTION_CALL:
      node->type = type_from_function_call(node->definition);
      break;
    case EXPRESSION_OR:
      node->type = type_from_logical(node);
      break;
    case EXPRESSION_AND:
      node->type = type_from_logical(node);
      break;
    case EXPRESSION_EQUAL:
      node->type = type_from_relational_1(node);
      break;
    case EXPRESSION_NOT_EQUAL:
      node->type = type_from_relational_1(node);
      break;
    case EXPRESSION_GREATER:
      node->type = type_from_relational_2(node);
      break;
    case EXPRESSION_GREATER_EQUAL:
      node->type = type_from_relational_2(node);
      break;
    case EXPRESSION_LESS:
      node->type = type_from_relational_2(node);
      break;
    case EXPRESSION_LESS_EQUAL:
      node->type = type_from_relational_2(node);
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
      node->type = TYPE_BOOLEAN;
      break;
    case DATA_CHARACTER:
      node->type = TYPE_CHARACTER;
      break;
    case DATA_INTEGER:
      node->type = TYPE_INTEGER;
      break;
    case DATA_FLOAT:
      node->type = TYPE_FLOAT;
      break;
    case DATA_STRING:
      node->type = TYPE_STRING;
      break;
    case DATA_ARRAY:
      node->type = TYPE_ARRAY;
      break;
    default:
      break;
  }
  
  return node->type;
}
