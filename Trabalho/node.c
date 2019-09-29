// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#include<stdio.h>
#include<stdlib.h>
#include<string.h>

#include"node.h"

Node create_node_bool(const int b) {
	Node node;

	node.tag = DATA_BOOLEAN;
	node.number_of_childs = 0;
	node.content.b = b;

	return node;
}

Node create_node_char(const char c) {
	Node node;

	node.tag = DATA_CHARACTER;
	node.number_of_childs = 0;
	node.content.c = c;

	return node;
}

Node create_node_int(const int i) {
	Node node;

	node.tag = DATA_INTEGER;
	node.number_of_childs = 0;
	node.content.i = i;

	return node;
}

Node create_node_float(const int f) {
	Node node;

	node.tag = DATA_FLOAT;
	node.number_of_childs = 0;
	node.content.f = f;

	return node;
}

Node create_node_string(const char* s) {
	Node node;

	node.tag = DATA_STRING;
	node.number_of_childs = 0;
	node.content.s = s;

	return node;
}

Node create_node_expression_scope(Node child) {
	Node node;

	node.tag = EXPRESSION_SCOPE;
	node.number_of_childs = 1;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child;

	return node;
}

Node create_node_expression_reference(Node child) {
	Node node;

	node.tag = EXPRESSION_REFERENCE;
	node.number_of_childs = 1;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child;

	return node;
}

Node create_node_expression_not(Node child) {
	Node node;

	node.tag = EXPRESSION_NOT;
	node.number_of_childs = 1;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child;

	return node;
}

Node create_node_expression_negative(Node child) {
	Node node;

	node.tag = EXPRESSION_NEGATIVE;
	node.number_of_childs = 1;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child;

	return node;
}

Node create_node_expression_cast(Node child0, Node child1) {
	Node node;

	node.tag = EXPRESSION_CAST;
	node.number_of_childs = 2;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child0;
	node.content.n[1] = child1;

	return node;
}

Node create_node_expression_mult(Node child0, Node child1) {
	Node node;

	node.tag = EXPRESSION_MULT;
	node.number_of_childs = 2;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child0;
	node.content.n[1] = child1;

	return node;
}

Node create_node_expression_div(Node child0, Node child1) {
	Node node;

	node.tag = EXPRESSION_DIV;
	node.number_of_childs = 2;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child0;
	node.content.n[1] = child1;

	return node;
}

Node create_node_expression_add(Node child0, Node child1) {
	Node node;

	node.tag = EXPRESSION_ADD;
	node.number_of_childs = 2;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child0;
	node.content.n[1] = child1;

	return node;
}

Node create_node_expression_sub(Node child0, Node child1) {
	Node node;

	node.tag = EXPRESSION_SUB;
	node.number_of_childs = 2;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child0;
	node.content.n[1] = child1;

	return node;
}

Node create_node_expression_less_equal(Node child0, Node child1) {
	Node node;

	node.tag = EXPRESSION_LESS_EQUAL;
	node.number_of_childs = 2;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child0;
	node.content.n[1] = child1;

	return node;
}

Node create_node_expression_less(Node child0, Node child1) {
	Node node;

	node.tag = EXPRESSION_LESS;
	node.number_of_childs = 2;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child0;
	node.content.n[1] = child1;

	return node;
}

Node create_node_expression_greater_equal(Node child0, Node child1) {
	Node node;

	node.tag = EXPRESSION_GREATER_EQUAL;
	node.number_of_childs = 2;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child0;
	node.content.n[1] = child1;

	return node;
}

Node create_node_expression_greater(Node child0, Node child1) {
	Node node;

	node.tag = EXPRESSION_GREATER;
	node.number_of_childs = 2;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child0;
	node.content.n[1] = child1;

	return node;
}

Node create_node_expression_not_equal(Node child0, Node child1) {
	Node node;

	node.tag = EXPRESSION_NOT_EQUAL;
	node.number_of_childs = 2;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child0;
	node.content.n[1] = child1;

	return node;
}

Node create_node_expression_equal(Node child0, Node child1) {
	Node node;

	node.tag = EXPRESSION_EQUAL;
	node.number_of_childs = 2;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child0;
	node.content.n[1] = child1;

	return node;
}

Node create_node_expression_and(Node child0, Node child1) {
	Node node;

	node.tag = EXPRESSION_AND;
	node.number_of_childs = 2;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child0;
	node.content.n[1] = child1;

	return node;
}

Node create_node_expression_or(Node child0, Node child1) {
	Node node;

	node.tag = EXPRESSION_OR;
	node.number_of_childs = 2;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child0;
	node.content.n[1] = child1;

	return node;
}

Node create_node_expression_list(Node child0, Node child1) {
	Node node;

	node.tag = EXPRESSION_LIST;
	node.number_of_childs = 2;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child0;
	node.content.n[1] = child1;

	return node;
}

Node create_node_new_array(Node child0, Node child1) {
	Node node;

	node.tag = NEW_ARRAY;
	node.number_of_childs = 2;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child0;
	node.content.n[1] = child1;

	return node;
}

Node create_node_function_call_with_parameters(Node child) {
	Node node;

	node.tag = FUNCTION_CALL;
	node.number_of_childs = 1;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child;

	return node;
}

Node create_node_function_call_empty() {
	Node node;

	node.tag = FUNCTION_CALL;
	node.number_of_childs = 0;

	return node;
}

Node create_node_variable_array(Node child0, Node child1) {
	Node node;

	node.tag = VARIABLE;
	node.number_of_childs = 2;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child0;
	node.content.n[1] = child1;

	return node;
}

Node create_node_variable_simple(const char* s) {
	Node node;

	node.tag = VARIABLE;
	node.number_of_childs = 0;
	node.content.s = s;

	return node;
}

Node create_node_if(Node child0, Node child1) {
	Node node;

	node.tag = IF;
	node.number_of_childs = 2;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child0;
	node.content.n[1] = child1;

	return node;
}

Node create_node_if_else(Node child0, Node child1, Node child2) {
	Node node;

	node.tag = IF;
	node.number_of_childs = 3;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child0;
	node.content.n[1] = child1;
	node.content.n[2] = child2;

	return node;
}

Node create_node_while(Node child0, Node child1) {
	Node node;

	node.tag = WHILE;
	node.number_of_childs = 2;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child0;
	node.content.n[1] = child1;

	return node;
}

Node create_node_assignment(Node child0, Node child1) {
	Node node;

	node.tag = ASSIGNMENT;
	node.number_of_childs = 2;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child0;
	node.content.n[1] = child1;

	return node;
}

Node create_node_return(Node child0) {
	Node node;

	node.tag = RETURN;
	node.number_of_childs = 1;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child0;

	return node;
}

Node create_node_print(Node child0) {
	Node node;

	node.tag = PRINT;
	node.number_of_childs = 1;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child0;

	return node;
}

Node create_node_command_list(Node child0, Node child1) {
	Node node;

	node.tag = COMMAND_LIST;
	node.number_of_childs = 2;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child0;
	node.content.n[1] = child1;

	return node;
}

Node create_node_variable_list(Node child0, Node child1) {
	Node node;

	node.tag = VARIABLE_LIST;
	node.number_of_childs = 2;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child0;
	node.content.n[1] = child1;

	return node;
}

Node create_node_block_double(Node child0, Node child1) {
	Node node;

	node.tag = BLOCK;
	node.number_of_childs = 2;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child0;
	node.content.n[1] = child1;

	return node;
}

Node create_node_block_single(Node child) {
	Node node;

	node.tag = BLOCK;
	node.number_of_childs = 1;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child;

	return node;
}

Node create_node_block_empty() {
	Node node;

	node.tag = BLOCK;
	node.number_of_childs = 0;

	return node;
}

Node create_node_parameter(const char*s, Node child) {
	Node node;

	node.tag = PARAMETER;
	node.number_of_childs = 2;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = create_node_string(s);
	node.content.n[1] = child;

	return node;
}

Node create_node_parameter_list(Node child0, Node child1) {
	Node node;

	node.tag = PARAMETER_LIST;
	node.number_of_childs = 2;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child0;
	node.content.n[1] = child1;

	return node;
}

Node create_node_define_function_double(const char*s, Node child1, Node child2, Node child3) {
	Node node;

	node.tag = DEFINE_FUNCTION;
	node.number_of_childs = 4;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = create_node_string(s);
	node.content.n[1] = child1;
	node.content.n[2] = child2;
	node.content.n[3] = child3;

	return node;
}

Node create_node_define_function_single(const char*s, Node child1, Node child2) {
	Node node;

	node.tag = DEFINE_FUNCTION;
	node.number_of_childs = 3;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = create_node_string(s);
	node.content.n[1] = child1;
	node.content.n[2] = child2;

	return node;
}

Node create_node_define_function_empty(const char*s, Node child) {
	Node node;

	node.tag = DEFINE_FUNCTION;
	node.number_of_childs = 2;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = create_node_string(s);
	node.content.n[1] = child;

	return node;
}

Node create_node_variable_type_bool() {
	Node node;

	node.tag = TYPE_BOOL;
	node.number_of_childs = 0;

	return node;
}

Node create_node_variable_type_char() {
	Node node;

	node.tag = TYPE_CHAR;
	node.number_of_childs = 0;

	return node;
}

Node create_node_variable_type_int() {
	Node node;

	node.tag = TYPE_INT;
	node.number_of_childs = 0;

	return node;
}

Node create_node_variable_type_float() {
	Node node;

	node.tag = TYPE_FLOAT;
	node.number_of_childs = 0;

	return node;
}

Node create_node_variable_type_array(Node child) {
	Node node;

	node.tag = TYPE_ARRAY;
	node.number_of_childs = 1;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child;

	return node;
}

Node create_node_define_variable(const char*s, Node child) {
	Node node;

	node.tag = DEFINE_VARIABLE;
	node.number_of_childs = 2;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = create_node_string(s);
	node.content.n[1] = child;

	return node;
}

Node create_node_define(Node child) {
	Node node;

	node.tag = DEFINE;
	node.number_of_childs = 1;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child;

	return node;
}

Node create_node_define_list(Node child0, Node child1) {
	Node node;

	node.tag = DEFINE_LIST;
	node.number_of_childs = 2;
	node.content.n = (Node*)malloc(sizeof(Node) * node.number_of_childs);
	node.content.n[0] = child0;
	node.content.n[1] = child1;

	return node;
}
