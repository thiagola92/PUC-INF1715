// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#ifndef _NODE_
#define _NODE_

#include<stdio.h>
#include<stdlib.h>
#include"util.h"

typedef enum TAG {
	EMPTY,

	DEFINE_LIST,

	DEFINE_VARIABLE,

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

  ARRAY,
	VARIABLE,
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
  TYPE_VOID,
  TYPE_BOOLEAN,
  TYPE_CHARACTER,
  TYPE_INTEGER,
  TYPE_FLOAT,
  TYPE_STRING,
  TYPE_ARRAY,
} TYPE;

typedef struct Node {
	TAG tag;

	int number_of_childs;

	union content {
		int b;
		char c;
		int i;
		float f;
		const char* s;

		struct Node** n;
	} content;
	
	struct Node* definition;
	
	TYPE type;
} Node;

Node* malloc_node();

Node* create_node_bool(const int b);
Node* create_node_char(const char c);
Node* create_node_int(const int i);
Node* create_node_float(const int f);
Node* create_node_string(const char* s);

Node* create_node_zero_child(TAG tag);
Node* create_node_one_child(TAG tag, Node* child);
Node* create_node_two_child(TAG tag, Node* child0, Node* child1);
Node* create_node_three_child(TAG tag, Node* child0, Node* child1, Node* child2);
Node* create_node_four_child(TAG tag, Node* child0, Node* child1, Node* child2, Node* child3);

Node* append_node(TAG tag, Node* child0, Node* child1);

#endif
