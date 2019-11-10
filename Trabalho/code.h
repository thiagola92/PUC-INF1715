// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#ifndef _CODE_
#define _CODE_

#include"node.h"

typedef struct TO_DO {
  char* before;
  char* now;
} to_do;

void throw_code_error(const char* error);

void start_coding(Node* program);

void code_define_global_list(Node* define_list);
void code_define_global_variable(Node* define_variable);
char* code_variable_type(Node* variable_type);
char* code_initial_value(Node* variable_type);

void code_define_global_function(Node* define_function);
void code_define_global_function_4(Node* define_function);
void code_define_global_function_3(Node* define_function);
void code_define_global_function_3_with_parameters(Node* define_function);
void code_define_global_function_3_with_type(Node* define_function);
void code_define_global_function_2(Node* define_function);

char* code_parameters(int* id, Node* parameters);
char* code_parameter_list(int* id, Node* parameter_list);
char* code_parameter(int* id, Node* parameter);

char* code_parameters_declarations(int* id, Node* parameters);
char* code_parameter_declaration_list(int* id, Node* parameter_list);
char* code_parameter_declaration(int* id, Node* parameter);

char* code_block(int* id, Node* block);
char* code_block_2(int* id, Node* block);
char* code_block_1(int* id, Node* block);

char* code_variables(int* id, Node* variables);
char* code_local_variable_list(int* id, Node* variable_list);
char* code_local_variable(int* id, Node* variable);

char* code_commands(int* id, Node* commands);
char* code_command_list(int* id, Node* command_list);
char* code_command(int* id, Node* command);

char* code_if(int* id, Node* if_command);

char* code_while(int* id, Node* while_command);

char* code_assignment(int* id, Node* assignment);

char* code_return(int* id, Node* return_command);
char* code_return_value(int* id, Node* return_command);

char* code_print(int* id, Node* print);

char* code_function_call(int* id, Node* function_call);

char* code_expression(int* id, Node* expression);

char* code_expression_variable(int* id, Node* variable);

char* code_expression_integer(int* id, Node* integer);

// UTILITY

char* get_node_name(Node* node);
int* initialize_id();
int next_id(int* id);

#endif