// Nome: Thiago Lages de Alencar
// Matricula: 1721629

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

void check_assignment_type(Node* node) {
  if(node->content.n[0]->type != node->content.n[1]->type)
    throw_type_error("value must be same as variable type");
}

void check_return_type(Node* node) {
  if(type_from_function_call(node->definition) != node->content.n[0]->type)
    throw_type_error("value must be same as function return type");
}

void check_logical_type(Node* node) {
  if(node->content.n[0]->type != TYPE_BOOLEAN || node->content.n[0]->type != TYPE_BOOLEAN)
    throw_type_error("value must be boolean");
}

void check_relational_type_1(Node* node) {
  if(node->content.n[0]->type == node->content.n[1]->type)
    return;
    
  throw_numeric_error(node);
  
  cast_to_float(node);
}

void check_relational_type_2(Node* node) {
  throw_numeric_error(node);
    
  if(node->content.n[0]->type == node->content.n[1]->type)
    return;
  
  cast_to_float(node);
}

TYPE type_from_function_call(Node* node) {    
  if(node->number_of_childs == 4)
    return node->content.n[2]->type;
    
  if(node->content.n[1]->tag != PARAMETER || node->content.n[1]->tag != PARAMETER_LIST)
    return node->content.n[1]->type;
    
  return TYPE_VOID;
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
    case ASSIGNMENT:
      check_assignment_type(node);
      break;
    case RETURN:
      check_return_type(node);
      break;
    case ARRAY:
      node->type = node->content.n[0]->definition->content.n[1]->content.n[0]->type;
      break;
    case VARIABLE:
      node->type = node->definition->content.n[1]->type;
      break;
    case FUNCTION_CALL:
      node->type = type_from_function_call(node->definition);
      break;
    case NEW_ARRAY:
      node->type = TYPE_ARRAY;
      break;
    case EXPRESSION_OR:
      check_logical_type(node);
      node->type = TYPE_BOOLEAN;
      break;
    case EXPRESSION_AND:
      check_logical_type(node);
      node->type = TYPE_BOOLEAN;
      break;
    case EXPRESSION_EQUAL:
      check_relational_type_1(node);
      node->type = TYPE_BOOLEAN;
      break;
    case EXPRESSION_NOT_EQUAL:
      check_relational_type_1(node);
      node->type = TYPE_BOOLEAN;
      break;
    case EXPRESSION_GREATER:
      check_relational_type_2(node);
      node->type = TYPE_BOOLEAN;
      break;
    case EXPRESSION_GREATER_EQUAL:
      check_relational_type_2(node);
      node->type = TYPE_BOOLEAN;
      break;
    case EXPRESSION_LESS:
      check_relational_type_2(node);
      node->type = TYPE_BOOLEAN;
      break;
    case EXPRESSION_LESS_EQUAL:
      check_relational_type_2(node);
      node->type = TYPE_BOOLEAN;
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
      node->type = TYPE_ARRAY;
      break;
    case DATA_ARRAY:
      node->type = TYPE_ARRAY;
      break;
    default:
      break;
  }
  
  return node->type;
}
