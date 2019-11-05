// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#ifndef _CODE_
#define _CODE_

#include<string.h>
#include<stdlib.h>
#include"node.h"

void throw_code_error(const char* error);

void start_coding(Node* program);

void code_define_list(Node* define_list);
void code_define_variable(Node* define_variable);
void code_define_function(Node* define_function);

char* code_identifier(Node* identifier);
char* code_variable_type(Node* variable_type);
char* code_initial_value(Node* variable_type);

char* code_parameters(int* id, Node* parameters);
char* code_parameter_list(int* id, Node* parameter_list);
char* code_parameter(int* id, Node* parameter);

char * code_parameters_declarations(int* id, Node* parameters);
char* code_parameter_declaration_list(int* id, Node* parameter_list);
char* code_parameter_declaration(int* id, Node* parameter);

char* code_block(int* id, Node* block);

char* code_variable_list_block(int* id, Node* variable_list);
char* code_define_variable_block(int* id, Node* define_variable);

int* initialize_id();
char* id_string(int* id);
char* id_local(int* id);

char* concat_strings(char* string_1, char* string_2);

#endif