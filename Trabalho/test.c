// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#include"test.h"

void print_tag(Node* node) {
  if(node == NULL)
    return;

  switch(node->tag) {
    case EMPTY:
      printf("EMPTY");
      break;
    case DEFINE_LIST:
      printf("DEFINE_LIST");
      break;
    case DEFINE_VARIABLE:
      printf("DEFINE_VARIABLE");
      break;
    case IDENTIFIER:
      printf("IDENTIFIER");
      break;
    case TYPE_BOOLEAN:
      printf("TYPE_BOOLEAN");
      break;
    case TYPE_CHARACTER:
      printf("TYPE_CHARACTER");
      break;
    case TYPE_INTEGER:
      printf("TYPE_INTEGER");
      break;
    case TYPE_FLOAT:
      printf("TYPE_FLOAT");
      break;
    case TYPE_ARRAY:
      printf("TYPE_ARRAY");
      break;
    case DEFINE_FUNCTION:
      printf("DEFINE_FUNCTION");
      break;
    case PARAMETER_LIST:
      printf("PARAMETER_LIST");
      break;
    case PARAMETER:
      printf("PARAMETER");
      break;
    case COMMAND_LIST:
      printf("COMMAND_LIST");
      break;
    case VARIABLE_LIST:
      printf("VARIABLE_LIST");
      break;
    case BLOCK:
      printf("BLOCK");
      break;
    case IF:
      printf("IF");
      break;
    case WHILE:
      printf("WHILE");
      break;
    case ASSIGNMENT:
      printf("ASSIGNMENT");
      break;
    case RETURN:
      printf("RETURN");
      break;
    case PRINT:
      printf("PRINT");
      break;
    case VARIABLE:
      printf("VARIABLE");
      break;
    case ARRAY_POSITION:
      printf("ARRAY_POSITION");
      break;
    case FUNCTION_CALL:
      printf("FUNCTION_CALL");
      break;
    case NEW_ARRAY:
      printf("NEW_ARRAY");
      break;
    case EXPRESSION_LIST:
      printf("EXPRESSION_LIST");
      break;
    case EXPRESSION_OR:
      printf("EXPRESSION_OR");
      break;
    case EXPRESSION_AND:
      printf("EXPRESSION_AND");
      break;
    case EXPRESSION_EQUAL:
      printf("EXPRESSION_EQUAL");
      break;
    case EXPRESSION_NOT_EQUAL:
      printf("EXPRESSION_NOT_EQUAL");
      break;
    case EXPRESSION_GREATER:
      printf("EXPRESSION_GREATER");
      break;
    case EXPRESSION_GREATER_EQUAL:
      printf("EXPRESSION_GREATER_EQUAL");
      break;
    case EXPRESSION_LESS:
      printf("EXPRESSION_LESS");
      break;
    case EXPRESSION_LESS_EQUAL:
      printf("EXPRESSION_LESS_EQUAL");
      break;
    case EXPRESSION_SUB:
      printf("EXPRESSION_SUB");
      break;
    case EXPRESSION_ADD:
      printf("EXPRESSION_ADD");
      break;
    case EXPRESSION_DIV:
      printf("EXPRESSION_DIV");
      break;
    case EXPRESSION_MULT:
      printf("EXPRESSION_MULT");
      break;
    case EXPRESSION_CAST:
      printf("EXPRESSION_CAST");
      break;
    case EXPRESSION_NEGATIVE:
      printf("EXPRESSION_NEGATIVE");
      break;
    case EXPRESSION_NOT:
      printf("EXPRESSION_NOT");
      break;
    case DATA_BOOLEAN:
      printf("DATA_BOOLEAN");
      break;
    case DATA_CHARACTER:
      printf("DATA_CHARACTER");
      break;
    case DATA_INTEGER:
      printf("DATA_INTEGER");
      break;
    case DATA_FLOAT:
      printf("DATA_FLOAT");
      break;
    case DATA_STRING:
      printf("DATA_STRING");
      break;
    default:
      printf("UNKNOW");
      break;
    }
}

void print_type(Node* node) {
  if(node == NULL)
    return;
    
  switch(node->tag) {
    case TYPE_BOOLEAN:
      printf(" - TYPE_BOOLEAN");
      break;
    case TYPE_CHARACTER:
      printf(" - TYPE_CHARACTER");
      break;
    case TYPE_INTEGER:
      printf(" - TYPE_INTEGER");
      break;
    case TYPE_FLOAT:
      printf(" - TYPE_FLOAT");
      break;
    case TYPE_ARRAY:
      printf(" - TYPE_ARRAY");
      print_type(node->type);
      break;
    default:
      break;
  }
}

void print_content(Node* node) {
  switch(node->tag) {
    case DATA_BOOLEAN:
      printf(" - content: %d", node->content.i);
      break;
    case DATA_CHARACTER:
      printf(" - content: %c", node->content.i);
      break;
    case DATA_INTEGER:
      printf(" - content: %d", node->content.i);
      break;
    case DATA_FLOAT:
      printf(" - content: %f", node->content.f);
      break;
    case IDENTIFIER:
    case DATA_STRING:
      printf(" - content: %s", node->content.s);
      break;
    default:
      break;
  }
}

void print_tree(Node* node, int tabs) {
  printf("\n");

  for(int i = 0; i < tabs; i++)
    printf("    ");

  print_tag(node);
  print_type(node->type);
  print_content(node);
  
  for(int i = 0; i < node->number_of_childs; i++)
    print_tree(node->content.n[i], tabs+1);
}

int test(const char* path) {
  yyin = fopen(path, "r");
  yyparse();

  start_binding(__root__);
  start_typing(__root__);

  print_tree(__root__, 0);
  printf("\n\n");
  
  start_coding(__root__);
  printf("\n\n");
  
  return 0;
}
