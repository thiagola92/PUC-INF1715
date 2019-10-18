// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#ifndef _TYPE_
#define _TYPE_

#include"node.h"

void throw_type_error(const char* name);
void throw_numeric_error(Node* node);

void cast_to_float(Node* node);

void check_assignment_type(Node* node);
void check_return_type(Node* node);
void check_logical_type(Node* node); // && ||
void check_relational_type_1(Node* node); // == ~=
void check_relational_type_2(Node* node); // > >= < <=

TYPE type_from_function_call(Node* node);
TYPE type_from_arithmetic(Node* node);

void type_child(Node* node);
TYPE type_node(Node* node);

#endif
