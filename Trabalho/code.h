// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#ifndef _CODE_
#define _CODE_

#include<string.h>
#include"node.h"

void throw_code_error(const char* error);

void start_coding(Node* program);

void code_define_list(Node* define_list);
void code_define_variable(Node* define_variable);
void code_define_function(Node* define_function);

char* code_identifier(Node* identifier);
char* code_variable_type(Node* variable_type);
char* code_initial_value(Node* variable_type);

void code_block(Node* block);

#endif