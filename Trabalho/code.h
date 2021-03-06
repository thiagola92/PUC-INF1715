// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#ifndef _CODE_
#define _CODE_

#include<string.h>
#include"node.h"

void throw_code_error(const char* error);

void start_coding(Node* program);

void code_global_list(Node* global_list);
void code_globals(Node* global);
void code_global_var(Node* global_var);

void code_var_type(Node* var_type);
void code_initial_value(Node* var_type);

void code_global_function(Node* function);
void code_global_function_4(Node* function);
void code_global_function_3(Node* function);
void code_global_function_3_with_parameters(Node* function);
void code_global_function_3_with_type(Node* function);
void code_global_function_2(Node* function);

void code_parameters(int* id, Node* parameters);
void code_parameter_list(int* id, Node* parameter_list);
void code_parameter(int* id, Node* parameter);

void code_parameters_declarations(int* id, Node* parameters);
void code_parameter_declaration_list(int* id, Node* parameter_list);
void code_parameter_declaration(int* id, Node* parameter);

void code_block(int* id, Node* block);
void code_block_2(int* id, Node* block);
void code_block_1(int* id, Node* block);

void code_variables(int* id, Node* variables);
void code_local_variable_list(int* id, Node* variable_list);
void code_local_variable(int* id, Node* variable);

void code_commands(int* id, Node* commands);
void code_command_list(int* id, Node* command_list);
void code_command(int* id, Node* command);

void code_if(int* id, Node* if_command);
void code_if_no_else(int* id, Node* if_command);
void code_if_else(int* id, Node* if_else);

void code_condition_compare(int* id, Node* condition);

void code_while(int* id, Node* while_command);

void code_assignment(int* id, Node* assignment);

void code_return(int* id, Node* return_command);
void code_return_value(int* id, Node* return_command);

void code_print(int* id, Node* print);
void code_print_int(Node* print);
void code_print_float(int* id, Node* print);
void code_print_string(int* id, Node* print);

void code_function_call(int* id, Node* function_call);
void code_function_call_2(int* id, Node* function_call);
void code_function_call_1(int* id, Node* function_call);
void code_function_call_return(int* id, Node* function_call);
void code_function_call_return_void(Node* function_call);
void code_function_call_return_value(int* id, Node* function_call);

void code_expressions(int* id, Node* expressions);
void code_expression_list(int* id, Node* expression_list);

void code_function_call_parameters(int* id, Node* parameters);
void code_function_call_parameter_list(int* id, Node* parameter_list);
void code_function_call_parameter(int* id, Node* parameter);

void code_expression(int* id, Node* expression);

void code_expression_condition(int* id, char* identifier, char* label_1, char* label_2);
void code_expression_or(int* id, Node* or);
void code_expression_and(int* id, Node* and);

void code_expression_compare(int* id, Node* compare, char* operator);
void code_expression_compare_type(Node* type);
void code_expression_compare_operator(Node* compare, char* operator);

void code_expression_calcule(int* id, Node* calcule, char* operator);
void code_expression_calcule_values(int* id, Node* calcule, char* operator);

void code_expression_cast(int* id, Node* cast);
void code_expression_cast_from_to(int* id, Node* cast, TAG from_type, TAG to_type);

void code_expression_negative(int* id, Node* negative);

void code_expression_not(int* id, Node* not);

void code_array_position(int* id, Node* array_position);
void code_expression_array_position(int* id, Node* array_position);

void code_expression_variable(int* id, Node* variable);

void code_expression_new_array(int* id, Node* new_array);

void code_expression_float(int* id, Node* float_expression);
void code_expression_string(int* id, Node* string);

// UTILITY

char* get_node_name(Node* node);
int* initialize_id();
int next_id(int* id);
char* label_name(char* label);

#endif