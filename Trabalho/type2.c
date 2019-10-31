// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#include"type.h"

void throw_type_error(const char* error) {
  printf("type error: %s\n", error);
  exit(3);
}

void check_condition_expression(Node* node) {
  Node* type_node = node->content.n[0]->type_node;

  if(type_node->tag != TYPE_BOOLEAN)
    throw_type_error("condition must be boolean")
}

void check_return_type()

void type_node(Node* node) {
  for(int i = 0; i < node->number_of_childs; i++)
    type_node(node->content.n[i]);
  
  switch(node->tag) {
    case IF:
    case WHILE:
      check_condition_expression(node);
      break;
    case ASSIGNMENT:
      //check_assignment_type(node);
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
    default:
      break;
  }
}
