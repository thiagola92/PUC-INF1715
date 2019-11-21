// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#ifndef _NODE_
#define _NODE_

#include<stdio.h>
#include<stdlib.h>
#include<stdarg.h>
#include"util.h"

typedef enum TAG {
  EMPTY = 0,

  DEFINE_LIST,

  DEFINE_VARIABLE,
  
  IDENTIFIER,
  
  TYPE_BOOLEAN,
  TYPE_CHARACTER,
  TYPE_INTEGER,
  TYPE_FLOAT,
  TYPE_ARRAY,

  DEFINE_FUNCTION,
  PARAMETER_LIST, // 10
  PARAMETER,

  COMMAND_LIST,
  VARIABLE_LIST,
  BLOCK,

  IF,
  WHILE,
  ASSIGNMENT,
  RETURN,
  PRINT,

  VARIABLE, // 20
  ARRAY_POSITION,
  FUNCTION_CALL,
  NEW_ARRAY,

  EXPRESSION_LIST,

  EXPRESSION_OR,
  EXPRESSION_AND,

  EXPRESSION_EQUAL,
  EXPRESSION_NOT_EQUAL,

  EXPRESSION_GREATER,
  EXPRESSION_GREATER_EQUAL, // 30
  EXPRESSION_LESS,
  EXPRESSION_LESS_EQUAL,

  EXPRESSION_SUB,
  EXPRESSION_ADD,
  EXPRESSION_DIV,
  EXPRESSION_MULT,

  EXPRESSION_CAST,
  EXPRESSION_NEGATIVE,
  EXPRESSION_NOT,
  EXPRESSION_VARIABLE, // 40

  DATA_BOOLEAN,
  DATA_CHARACTER,
  DATA_INTEGER,
  DATA_FLOAT,
  DATA_STRING,
} TAG;

typedef struct Node {
  TAG tag;

  int number_of_childs;

  union content {
    int i;
    float f;
    const char* s;

    struct Node** n;
  } content;
  
  struct Node* definition;  // binding
  struct Node* type;        // typing
  char* id;                 // coding
} Node;

Node* malloc_node();

Node* create_node(TAG tag, int number_of_childs, ...);

Node* create_node_boolean(int b);
Node* create_node_character(int c);
Node* create_node_integer(int i);
Node* create_node_float(float f);
Node* create_node_string(TAG tag, const char* s);

Node* append_node(TAG tag, Node* child0, Node* child1);

#endif
