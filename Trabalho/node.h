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
	EXPRESSION_REFERENCE,
	EXPRESSION_SCOPE,

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

Node* create_node_expression_scope(Node* child);
Node* create_node_expression_reference(Node* child);
Node* create_node_expression_not(Node* child);
Node* create_node_expression_negative(Node* child);
Node* create_node_expression_cast(Node* child0, Node* child1);

Node* create_node_expression_mult(Node* child0, Node* child1);
Node* create_node_expression_div(Node* child0, Node* child1);
Node* create_node_expression_add(Node* child0, Node* child1);
Node* create_node_expression_sub(Node* child0, Node* child1);

Node* create_node_expression_less_equal(Node* child0, Node* child1);
Node* create_node_expression_less(Node* child0, Node* child1);
Node* create_node_expression_greater_equal(Node* child0, Node* child1);
Node* create_node_expression_greater(Node* child0, Node* child1);
Node* create_node_expression_not_equal(Node* child0, Node* child1);
Node* create_node_expression_equal(Node* child0, Node* child1);

Node* create_node_expression_and(Node* child0, Node* child1);
Node* create_node_expression_or(Node* child0, Node* child1);

Node* create_node_expression_list(Node* child0, Node* child1);

Node* create_node_new_array(Node* child0, Node* child1);
Node* create_node_function_call_with_parameters(const char*s, Node* child);
Node* create_node_function_call_empty(const char*s);
Node* create_node_variable_array(Node* child0, Node* child1);
Node* create_node_variable_simple(const char* s);

Node* create_node_if(Node* child0, Node* child1);
Node* create_node_if_else(Node* child0, Node* child1, Node* child2);
Node* create_node_while(Node* child0, Node* child1);
Node* create_node_assignment(Node* child0, Node* child1);
Node* create_node_return(Node* child);
Node* create_node_print(Node* child);

Node* create_node_command_list(Node* child0, Node* child1);
Node* create_node_variable_list(Node* child0, Node* child1);

Node* create_node_block_double(Node* child0, Node* child1);
Node* create_node_block_single(Node* child);
Node* create_node_block_empty();

Node* create_node_parameter(const char*s, Node* child);
Node* create_node_parameter_list(Node* child0, Node* child1);

Node* create_node_define_function_double(const char*s, Node* child0, Node* child1, Node* child2);
Node* create_node_define_function_single(const char*s, Node* child0, Node* child1);
Node* create_node_define_function_empty(const char*s, Node* child0);

Node* create_node_variable_type_bool();
Node* create_node_variable_type_char();
Node* create_node_variable_type_int();
Node* create_node_variable_type_float();
Node* create_node_variable_type_array(Node* child);
Node* create_node_define_variable(const char*s, Node* child);

Node* create_node_define(Node* child);
Node* create_node_define_list(Node* child0, Node* child1);

Node* create_node_empty();

#endif
