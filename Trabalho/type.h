#ifndef _TYPE_
#define _TYPE_

#include"node.h"

void throw_type_error(const char* name);
void throw_numeric_error(Node* node);

void cast_to_float(Node* node);

TYPE type_from_array(Node* node);
TYPE type_from_variable(Node* node);
TYPE type_from_function_call(Node* node);

TYPE type_from_logical(Node* node);
TYPE type_from_relational_1(Node* node); // == ~=
TYPE type_from_relational_2(Node* node); // > >= < <=
TYPE type_from_arithmetic(Node* node);

void type_child(Node* node);
TYPE type_node(Node* node);

#endif
