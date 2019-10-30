// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#ifndef _NODE_
#define _NODE_

#include<stdio.h>
#include<stdlib.h>
#include<stdarg.h>
#include"util.h"

typedef enum TAG {
  EMPTY,

  DEFINE_LIST,

  DEFINE_VARIABLE,
  
  TYPE_BOOLEAN,
  TYPE_CHARACTER,
  TYPE_INTEGER,
  TYPE_FLOAT,
  TYPE_ARRAY,

  DEFINE_FUNCTION,
  PARAMETER_LIST,
  PARAMETER,

  COMMAND_LIST,
  VARIABLE_LIST,
  BLOCK,

  IF,
  WHILE,
  ASSIGNMENT,
  RETURN,
  PRINT,

  VARIABLE,
  ARRAY_POSITION,
  FUNCTION_CALL,
  NEW_ARRAY,

  EXPRESSION_LIST,

  EXPRESSION_OR,
  EXPRESSION_AND,

  EXPRESSION_EQUAL,
  EXPRESSION_NOT_EQUAL,

  EXPRESSION_GREATER,
  EXPRESSION_GREATER_EQUAL,
  EXPRESSION_LESS,
  EXPRESSION_LESS_EQUAL,

  EXPRESSION_SUB,
  EXPRESSION_ADD,
  EXPRESSION_DIV,
  EXPRESSION_MULT,

  EXPRESSION_CAST,
  EXPRESSION_NEGATIVE,
  EXPRESSION_NOT,

  DATA_BOOLEAN,
  DATA_CHARACTER,
  DATA_INTEGER,
  DATA_FLOAT,
  DATA_STRING,
  DATA_ARRAY,
} TAG;

typedef enum TYPE {
  VOID,
  BOOLEAN,
  CHARACTER,
  INTEGER,
  FLOAT,
  ARRAY,
} TYPE;

typedef struct Node {
  TAG tag;

  int number_of_childs;

  union content {
    int i;
    float f;
    const char* s;

    struct Node** n;
  } content;
  
  struct Node* definition;
  
  TYPE type;
} Node;

Node* malloc_node();

Node* create_node(TAG tag, int number_of_childs, ...);
Node* create_data_node(TAG tag, ...);

Node* append_node(TAG tag, Node* child0, Node* child1);

#endif
