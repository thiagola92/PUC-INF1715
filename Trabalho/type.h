// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#ifndef _TYPE_
#define _TYPE_

#include"node.h"

void throw_type_error(const char* error);
void throw_type_error_if(Node* node, TAG tag, const char* error) ;
void throw_type_error_if_not(Node* node, TAG tag, const char* error);

void start_typing(Node* program);

void type_define_list(Node* define_list);
void type_define_variable(Node* define_variable);

void type_variable_type(Node* variable_type);

void type_define_function(Node* define_function);
void type_define_function_three_childs(Node* define_function);

void type_parameters(Node* parameters);
void type_parameter_list(Node* parameter_list);
void type_parameter(Node* parameter);

void type_block(Node* block);

void type_variable_list(Node* variable_list);

void type_command(Node* command);
void type_command_list(Node* command_list);

void type_if(Node* command_if);
void type_while(Node* command_while);
void type_assignment(Node* assignment);
void type_return(Node* command_return);

void type_expression(Node* expression);

void type_boolean_expression(Node* expression);
void type_equality_expression(Node* expression);
void type_inequality_expression(Node* expression);
void type_arithmetic_expression(Node* expression);

void type_negative_expression(Node* expression);
void type_not_expression(Node* expression);

void type_array_position(Node* array_position);
void type_variable_expression(Node* expression);
void type_function_call(Node* function_call);
void type_expressions(Node* expressions);
void type_expression_list(Node* expression_list);
void type_new_array(Node* new_array);
void type_cast(Node* cast);

void cast_assigmnent(Node* assignment);

void cast_all_x_types_to_y_type(Node* node, TAG old_type, TAG new_type);

void cast_characters_to_integer(Node* node);
void cast_integers_to_character(Node* expression);
void cast_integers_to_float(Node* expression);
void cast_floats_to_integers(Node* node);

int is_type_equal(Node* e1, Node* e2);
int is_type_numeric(Node* e1, Node* e2);

int is_cast_x_to_y_needed(Node* e1, Node* e2, TAG t1, TAG t2);
int is_cast_integer_to_float_needed(Node* e1, Node* e2);

#endif
