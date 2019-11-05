// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#ifndef _TYPE_
#define _TYPE_

#include"node.h"

void throw_type_error(const char* name);
void throw_numeric_error(Node* node, const char* error);

Node* cast_to(Node* node, TAG tag);
void cast_type_to(Node* node, TYPE type, TAG tag);

TYPE type_from_function_call(Node* node);
TYPE type_from_arithmetic(Node* node);

Node* next_node_type_from_array(Node* node);

void check_boolean_expression(Node* node);
void check_char_type(Node* next_left_node);
void check_array_type(Node* left_node, Node* right_node);
void check_assignment_type(Node* node);
void check_return_type(Node* node);
void check_logical_type(Node* node);
void check_equality_type(Node* node); // == ~=
void check_inequality_type(Node* node); // > >= < <=

void type_node(Node* node);

#endif
