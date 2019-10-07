// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#ifndef _NODE_
#define _NODE_

typedef enum TAG {
	EMPTY,

	DEFINE,
	DEFINE_LIST,

	DEFINE_VARIABLE,
	TYPE_BOOL,
	TYPE_CHAR,
	TYPE_INT,
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
} TAG;

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
} Node;

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

#endif
