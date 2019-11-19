// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#include"code.h"

void throw_code_error(const char* error) {
  printf("code error: %s\n", error);
  exit(4);
}

void start_coding(Node* program) {
  printf("declare i32 @printf(i8*, ...)\n\n");
  
  printf("@.print.int = constant [3 x i8] c\"%%d\\00\"\n");
  printf("@.print.float = constant [3 x i8] c\"%%f\\00\"\n\n");

  switch(program->tag) {
    case EMPTY:
      break;
    case DEFINE_LIST:
      code_define_global_list(program);
      break;
    case DEFINE_VARIABLE:
      code_define_global_variable(program);
      break;
    case DEFINE_FUNCTION:
      code_define_global_function(program);
      break;
    default:
      throw_code_error("invalid start");
  }
}

void code_define_global_list(Node* define_list) {
  for(int i = 0; i < define_list->number_of_childs; i++) {
    Node* define = define_list->content.n[i];
    
    switch(define->tag) {
      case DEFINE_VARIABLE:
        code_define_global_variable(define);
        break;
      case DEFINE_FUNCTION:
        code_define_global_function(define);
        break;
      default:
        throw_code_error("invalid global definition");
    }
  }
}

void code_define_global_variable(Node* define_variable) {
  char* name = get_node_name(define_variable->content.n[0]);

  define_variable->id = format_string("@%s", name);

  printf("%s = global ", define_variable->id);
  code_variable_type(define_variable->content.n[1]);
  printf(" ");
  code_initial_value(define_variable->content.n[1]);
  printf("\n");
}

void code_variable_type(Node* variable_type) {
  switch(variable_type->tag) {
    case TYPE_BOOLEAN:
    case TYPE_CHARACTER:
    case TYPE_INTEGER:
      printf("i32");
      break;
    case TYPE_FLOAT:
      printf("float");
      break;
    case TYPE_ARRAY:
      code_variable_type(variable_type->type);
      printf("*");
      break;
    default:
      throw_code_error("invalid variable type");
  }
}

void code_initial_value(Node* variable_type) {
  switch(variable_type->tag) {
    case TYPE_BOOLEAN:
    case TYPE_CHARACTER:
    case TYPE_INTEGER:
      printf("0");
      break;
    case TYPE_FLOAT:
      printf("0.000000e+00");
      break;
    case TYPE_ARRAY:
      printf("null");
      break;
    default:
      throw_code_error("invalid initial value");
  }
}

void code_define_global_function(Node* define_function) {  
  switch(define_function->number_of_childs) {
    case 4:
      code_define_global_function_4(define_function);
      break;
    case 3:
      code_define_global_function_3(define_function);
      break;
    case 2:
      code_define_global_function_2(define_function);
      break;
    default:
      throw_code_error("invalid function definition");
  }
}

void code_define_global_function_4(Node* define_function) {
  char* name = get_node_name(define_function->content.n[0]);
  int* id = initialize_id();

  define_function->id = format_string("@%s", name);

  printf("define ");
  code_variable_type(define_function->content.n[2]);
  printf(" %s(", define_function->id);
  code_parameters(id, define_function->content.n[1]);
  printf(") {\n");

  define_function->content.n[3]->id = format_string("%%%d", next_id(id));
  code_parameters_declarations(id, define_function->content.n[1]);
  code_block(id, define_function->content.n[3]);

  printf("}\n\n");
}

void code_define_global_function_3(Node* define_function) {
  if(define_function->content.n[1]->tag == PARAMETER || define_function->content.n[1]->tag == PARAMETER_LIST)
    code_define_global_function_3_with_parameters(define_function);
  else
    code_define_global_function_3_with_type(define_function);
}

void code_define_global_function_3_with_parameters(Node* define_function) {
  char* name = get_node_name(define_function->content.n[0]);
  int* id = initialize_id();

  define_function->id = format_string("@%s", name);

  printf("define void %s(", define_function->id);
  code_parameters(id, define_function->content.n[1]);
  printf(") {\n");

  define_function->content.n[2]->id = format_string("%%%d", next_id(id));
  code_parameters_declarations(id, define_function->content.n[1]);
  code_block(id, define_function->content.n[2]);
  printf("  ret void\n");

  printf("}\n\n");
}

void code_define_global_function_3_with_type(Node* define_function) {
  char* name = get_node_name(define_function->content.n[0]);
  int* id = initialize_id();

  define_function->id = format_string("@%s", name);

  printf("define ");
  code_variable_type(define_function->content.n[1]);
  printf(" %s() {\n", define_function->id);

  define_function->content.n[2]->id = format_string("%%%d", next_id(id));
  code_block(id, define_function->content.n[2]);

  printf("}\n\n");
}

void code_define_global_function_2(Node* define_function) {
  char* name = get_node_name(define_function->content.n[0]);
  int* id = initialize_id();

  define_function->id = format_string("@%s", name);

  printf("define void %s() {\n", define_function->id);

  define_function->content.n[1]->id = format_string("%%%d", next_id(id));
  code_block(id, define_function->content.n[1]);
  printf("  ret void\n");

  printf("}\n\n");
}

void code_parameters(int* id, Node* parameters) {
  switch(parameters->tag) {
    case PARAMETER_LIST:
      code_parameter_list(id, parameters);
      break;
    case PARAMETER:
      code_parameter(id, parameters);
      break;
    default:
      throw_code_error("invalid parameter");
  }
}

void code_parameter_list(int* id, Node* parameter_list) {
  for(int i = 0; i < parameter_list->number_of_childs; i++) {
    code_parameter(id, parameter_list->content.n[i]);

    if(i+1 < parameter_list->number_of_childs)
      printf(", ");
  }
}

void code_parameter(int* id, Node* parameter) {
  parameter->id = format_string("%%%d", next_id(id));
  code_variable_type(parameter->content.n[1]);
}

void code_parameters_declarations(int* id, Node* parameters) {
  switch(parameters->tag) {
    case PARAMETER_LIST:
      code_parameter_declaration_list(id, parameters);
      break;
    case PARAMETER:
      code_parameter_declaration(id, parameters);
      break;
    default:
      throw_code_error("invalid parameter declaration");
  }
}

void code_parameter_declaration_list(int* id, Node* parameter_list) {
  for(int i = 0; i < parameter_list->number_of_childs; i++)
    code_parameter_declaration(id, parameter_list->content.n[i]);
}

void code_parameter_declaration(int* id, Node* parameter) {
  char* new_identifier = format_string("%%label%d", next_id(id));

  printf("  %s = alloca ", new_identifier);
  code_variable_type(parameter->content.n[1]);
  printf("\n");

  printf("  store ");
  code_variable_type(parameter->content.n[1]);
  printf(" %s, ", parameter->id);
  code_variable_type(parameter->content.n[1]);
  printf("* %s\n", new_identifier);

  parameter->id = new_identifier;
}

void code_block(int* id, Node* block) {
  switch(block->number_of_childs) {
    case 2:
      code_block_2(id, block);
      break;
    case 1:
      code_block_1(id, block);
      break;
    case 0:
      format_string("");
      break;
    default:
      throw_code_error("invalid block");
  }
}

void code_block_2(int* id, Node* block) {
  code_variables(id, block->content.n[0]);
  code_commands(id, block->content.n[1]);
}

void code_block_1(int* id, Node* block) {
  if(block->content.n[0]->tag == VARIABLE_LIST || block->content.n[0]->tag == DEFINE_VARIABLE)
    return code_variables(id, block->content.n[0]);
  return code_commands(id, block->content.n[0]);
}

void code_variables(int* id, Node* variables) {
  switch(variables->tag) {
    case VARIABLE_LIST:
      code_local_variable_list(id, variables);
      break;
    case DEFINE_VARIABLE:
      code_local_variable(id, variables);
      break;
    default:
      throw_code_error("invalid variable list");
  }
}

void code_local_variable_list(int* id, Node* variable_list) {
  for(int i = 0; i < variable_list->number_of_childs; i++)
    code_local_variable(id, variable_list->content.n[i]);
}

void code_local_variable(int* id, Node* variable) {
  variable->id = format_string("%%label%d", next_id(id));

  printf("  %s = alloca ", variable->id);
  code_variable_type(variable->content.n[1]);
  printf("\n");
}

void code_commands(int* id, Node* commands) {
  switch(commands->tag) {
    case COMMAND_LIST:
      code_command_list(id, commands);
      break;
    case IF:
    case WHILE:
    case ASSIGNMENT:
    case RETURN:
    case PRINT:
    case FUNCTION_CALL:
      code_command(id, commands);
      break;
    default:
      throw_code_error("invalid commands");
  }
}

void code_command_list(int* id, Node* command_list) {
  for(int i = 0; i < command_list->number_of_childs; i++)
    code_command(id, command_list->content.n[i]);
}

void code_command(int* id, Node* command) {
  switch(command->tag) {
    case IF:
      code_if(id, command);
      break;
    case WHILE:
      code_while(id, command);
      break;
    case ASSIGNMENT:
      code_assignment(id, command);
      break;
    case RETURN:
      code_return(id, command);
      break;
    case PRINT:
      code_print(id, command);
      break;
    case FUNCTION_CALL:
      code_function_call(id, command);
      break;
    default:
      throw_code_error("invalid command");
  }
}

void code_if(int* id, Node* if_command) {
  switch(if_command->number_of_childs) {
    case 2:
      code_if_no_else(id, if_command);
      break;
    case 3:
      code_if_else(id, if_command);
      break;
    default:
      throw_code_error("invalid if");
  }
}

void code_if_no_else(int* id, Node* if_command) {
  char* condition_identifier;
  char* if_true_label;
  char* if_end_label;

  code_expression(id, if_command->content.n[0]);

  condition_identifier = format_string("%%label%d", next_id(id));
  code_condition_compare(if_command->content.n[0], condition_identifier);

  if_true_label = format_string("%%label%d", next_id(id));
  if_end_label = format_string("%%label%d", next_id(id));

  printf("  br i1 %s, label %s, label %s\n\n", condition_identifier, if_true_label, if_end_label);
  printf("  %s:\n", label_name(if_true_label));
  code_block(id, if_command->content.n[1]);
  printf("  br label %s\n\n", if_end_label);

  printf("  %s:\n", label_name(if_end_label));
}

void code_if_else(int* id, Node* if_else) {
  char* condition_identifier;
  char* if_true_label;
  char* if_false_label;
  char* if_end_label;

  code_expression(id, if_else->content.n[0]);

  condition_identifier = format_string("%%label%d", next_id(id));
  code_condition_compare(if_else->content.n[0], condition_identifier);

  if_true_label = format_string("%%label%d", next_id(id));
  if_false_label = format_string("%%label%d", next_id(id));
  if_end_label = format_string("%%label%d", next_id(id));

  printf("  br i1 %s, label %s, label %s\n\n", condition_identifier, if_true_label, if_end_label);
  printf("  %s:\n", label_name(if_true_label));
  code_block(id, if_else->content.n[1]);
  printf("  br label %s\n\n", if_end_label);

  printf("  %s:\n", label_name(if_false_label));
  code_block(id, if_else->content.n[2]);
  printf("  br label %s\n\n", if_end_label);

  printf("  %s:\n", label_name(if_end_label));
}

void code_condition_compare(Node* condition, char* condition_identifier) {
  switch(condition->type->tag) {
    case TYPE_FLOAT:
      printf("  %s = fcmp eq float %s, 1\n", condition_identifier, condition->id);
      break;
    case TYPE_BOOLEAN:
    case TYPE_CHARACTER:
    case TYPE_INTEGER:
    case TYPE_ARRAY:
      printf("  %s = icmp eq i32 %s, 1\n", condition_identifier, condition->id);
      break;
    default:
      throw_code_error("invalid condition compare");
  }
}

void code_while(int* id, Node* while_command) {
  char* condition_identifier;
  char* while_start_label;
  char* while_true_label;
  char* while_end_label;

  while_start_label = format_string("%%label%d", next_id(id));
  printf("  br label %s\n\n", while_start_label);
  printf("  %s:\n", label_name(while_start_label));

  code_expression(id, while_command->content.n[0]);

  condition_identifier = format_string("%%label%d", next_id(id));
  code_condition_compare(while_command->content.n[0], condition_identifier);

  while_true_label = format_string("%%label%d", next_id(id));
  while_end_label = format_string("%%label%d", next_id(id));

  printf("  br i1 %s, label %s, label %s\n\n", condition_identifier, while_true_label, while_end_label);
  printf("  %s:\n", label_name(while_true_label));
  code_block(id, while_command->content.n[1]);
  printf("  br label %s\n\n", while_start_label);

  printf("  %s:\n", label_name(while_end_label));
}

void code_assignment(int* id, Node* assignment) {
  code_expression(id, assignment->content.n[1]);

  printf("  store ");
  code_variable_type(assignment->content.n[1]->type);
  printf(" %s, ", assignment->content.n[1]->id);
  code_variable_type(assignment->content.n[0]->type);
  printf("* %s\n", assignment->content.n[0]->definition->id);
}

void code_return(int* id, Node* return_command) {
  switch(return_command->number_of_childs) {
    case 0:
      printf("  ret void\n");
      break;
    case 1:
      code_return_value(id, return_command);
      break;
    default:
      throw_code_error("invalid return");
  }
}

void code_return_value(int* id, Node* return_command) {
  code_expression(id, return_command->content.n[0]);

  printf("  ret ");
  code_variable_type(return_command->definition->type);
  printf(" %s\n", return_command->content.n[0]->id);
}

void code_print(int* id, Node* print) {
  code_expression(id, print->content.n[0]);

  switch(print->content.n[0]->type->tag) {
    case TYPE_BOOLEAN:
    case TYPE_CHARACTER:
    case TYPE_INTEGER:
    case TYPE_ARRAY:
      code_print_integer(id, print);
      break;
    case TYPE_FLOAT:
      code_print_float(id, print);
      break;
    default:
      throw_code_error("invalid print");
  }
}

void code_print_integer(int* id, Node* print) {
  printf("  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %s)\n", print->content.n[0]->id);
}

void code_print_float(int* id, Node* print) {
  char* identifier = format_string("%%label%d", next_id(id));

  printf("  %s = fpext float %s to double\n", identifier, print->content.n[0]->id);
  printf("  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.float, i32 0, i32 0), i32 %s)\n", identifier);
}

void code_function_call(int* id, Node* function_call) {
  if(function_call->number_of_childs == 2)
    code_expressions(id, function_call->content.n[1]);
  
  code_function_call_return(id, function_call);

  if(function_call->number_of_childs == 2)
    code_function_call_parameters(id, function_call->content.n[1]);
  
  printf(")\n");
}

void code_function_call_return(int* id, Node* function_call) {
  if(function_call->definition->type == NULL) {
    printf("  call void %s(", function_call->definition->id);
    return;
  }

  function_call->id = format_string("%%label%d", next_id(id));
  
  printf("  %s = call ", function_call->id);
  code_variable_type(function_call->type);
  printf(" %s(", function_call->definition->id);
}

void code_expressions(int* id, Node* expressions) {
  if(expressions->tag == EXPRESSION_LIST)
    code_expression_list(id, expressions);
  else
    code_expression(id, expressions);
}

void code_expression_list(int* id, Node* expression_list) {
  for(int i = 0; i < expression_list->number_of_childs; i++)
    code_expression(id, expression_list->content.n[i]);
}

void code_function_call_parameters(int* id, Node* parameters) {
  if(parameters->tag == EXPRESSION_LIST)
    code_function_call_parameter_list(id, parameters);
  else
    code_function_call_parameter(id, parameters);
}

void code_function_call_parameter_list(int* id, Node* parameter_list) {
  for(int i = 0; i < parameter_list->number_of_childs; i++) {
    code_function_call_parameter(id, parameter_list->content.n[i]);

    if(i+1 < parameter_list->number_of_childs)
      printf(", ");
  }
}

void code_function_call_parameter(int* id, Node* parameter) {
  code_variable_type(parameter->type);
  printf(" %s", parameter->id);
}

void code_expression(int* id, Node* expression) {
  switch(expression->tag) {
    case EXPRESSION_OR:
      code_expression_or(id, expression);
      break;
    case EXPRESSION_AND:
      code_expression_and(id, expression);
      break;
    case EXPRESSION_EQUAL:
      code_expression_compare(id, expression, "eq");
      break;
    case EXPRESSION_NOT_EQUAL:
      code_expression_compare(id, expression, "ne");
      break;
    case EXPRESSION_GREATER:
      code_expression_compare(id, expression, "sgt");
      break;
    case EXPRESSION_GREATER_EQUAL:
      code_expression_compare(id, expression, "sge");
      break;
    case EXPRESSION_LESS:
      code_expression_compare(id, expression, "slt");
      break;
    case EXPRESSION_LESS_EQUAL:
      code_expression_compare(id, expression, "sle");
      break;
    case EXPRESSION_SUB:
      code_expression_calcule(id, expression, "sub");
      break;
    case EXPRESSION_ADD:
      code_expression_calcule(id, expression, "add");
      break;
    case EXPRESSION_DIV:
      code_expression_calcule(id, expression, "div");
      break;
    case EXPRESSION_MULT:
      code_expression_calcule(id, expression, "mul");
      break;
    case EXPRESSION_CAST:
      break;
    case EXPRESSION_NEGATIVE:
      code_expression_negative(id, expression);
      break;
    case EXPRESSION_NOT:
      break;
    case ARRAY_POSITION:
      break;
    case VARIABLE:
      code_expression_variable(id, expression);
      break;
    case FUNCTION_CALL:
      code_function_call(id, expression);
      break;
    case NEW_ARRAY:
      break;
    case TYPE_ARRAY:
      break;
    case TYPE_BOOLEAN:
      break;
    case TYPE_CHARACTER:
      break;
    case TYPE_INTEGER:
      break;
    case TYPE_FLOAT:
      break;
    case DATA_BOOLEAN:
    case DATA_CHARACTER:
    case DATA_INTEGER:
      expression->id = format_string("%d", expression->content.i);
      break;
    case DATA_FLOAT:
      code_expression_float(id, expression);
      break;
    case DATA_STRING:
      code_expression_string(id, expression);
      break;
    default:
      throw_code_error("invalid expression");
  }
}

void code_expression_or(int* id, Node* or) {
  char* comparison_identifier;
  char* phi_identifier;

  char* start_label;
  char* second_expression_label;
  char* end_label;

  code_expression(id, or->content.n[0]);
  code_expression(id, or->content.n[1]);

  start_label = format_string("%%label%d", next_id(id));
  second_expression_label = format_string("%%label%d", next_id(id));
  end_label = format_string("%%label%d", next_id(id));
  comparison_identifier = format_string("%%label%d", next_id(id));

  printf("  br label %s\n\n", start_label);

  printf("  %s:\n", label_name(start_label));
  printf("  %s = icmp ne i32 %s, 0\n", comparison_identifier, or->content.n[0]->id); // true leva a true, false leva a false
  printf("  br i1 %s, label %s, label %s\n\n", comparison_identifier, end_label, second_expression_label);

  comparison_identifier = format_string("%%label%d", next_id(id));

  printf("  %s:\n", label_name(second_expression_label));
  printf("  %s = icmp ne i32 %s, 0\n", comparison_identifier, or->content.n[1]->id);
  printf("  br label %s\n\n", end_label);

  phi_identifier = format_string("%%label%d", next_id(id));
  or->id = format_string("%%label%d", next_id(id));

  printf("  %s:\n", label_name(end_label));
  printf("  %s = phi i1 [ true, %s ], [ %s, %s ]\n", phi_identifier, start_label, comparison_identifier, second_expression_label);
  printf("  %s = zext i1 %s to i32\n", or->id, phi_identifier);
}

void code_expression_and(int* id, Node* and) {
  char* comparison_identifier;
  char* phi_identifier;

  char* start_label;
  char* second_expression_label;
  char* end_label;

  code_expression(id, and->content.n[0]);
  code_expression(id, and->content.n[1]);

  start_label = format_string("%%label%d", next_id(id));
  second_expression_label = format_string("%%label%d", next_id(id));
  end_label = format_string("%%label%d", next_id(id));
  comparison_identifier = format_string("%%label%d", next_id(id));

  printf("  br label %s\n\n", start_label);

  printf("  %s:\n", label_name(start_label));
  printf("  %s = icmp ne i32 %s, 0\n", comparison_identifier, and->content.n[0]->id); // true leva a true, false leva a false
  printf("  br i1 %s, label %s, label %s\n\n", comparison_identifier, second_expression_label, end_label);

  comparison_identifier = format_string("%%label%d", next_id(id));

  printf("  %s:\n", label_name(second_expression_label));
  printf("  %s = icmp ne i32 %s, 0\n", comparison_identifier, and->content.n[1]->id);
  printf("  br label %s\n\n", end_label);

  phi_identifier = format_string("%%label%d", next_id(id));
  and->id = format_string("%%label%d", next_id(id));

  printf("  %s:\n", label_name(end_label));
  printf("  %s = phi i1 [ false, %s ], [ %s, %s ]\n", phi_identifier, start_label, comparison_identifier, second_expression_label);
  printf("  %s = zext i1 %s to i32\n", and->id, phi_identifier);
}

void code_expression_compare(int* id, Node* compare, char* operator) {
  code_expression(id, compare->content.n[0]);
  code_expression(id, compare->content.n[1]);

  compare->id = format_string("%%label%d", next_id(id));

  switch(compare->type->tag) {
    case TYPE_BOOLEAN:
    case TYPE_CHARACTER:
    case TYPE_INTEGER:
    case TYPE_ARRAY:
      code_expression_compare_values(id, compare, "icmp", operator);
      break;
    case TYPE_FLOAT:
      code_expression_compare_values(id, compare, "fcmp", operator);
      break;
    default:
      throw_code_error("invalid expression compare");
      break;
  }
}

void code_expression_compare_values(int* id, Node* compare, char* type, char* operator) {
  char* result_identifier = format_string("%%label%d", next_id(id));

  printf("  %s = %s %s ", compare->id, type, operator);
  code_variable_type(compare->content.n[0]->type);
  printf(" %s, %s\n", compare->content.n[0]->id, compare->content.n[1]->id);

  printf("  %s = zext i1 %s to i32\n", result_identifier, compare->id);

  compare->id = result_identifier;
}

void code_expression_calcule(int* id, Node* calcule, char* operator) {
  code_expression(id, calcule->content.n[0]);
  code_expression(id, calcule->content.n[1]);

  calcule->id = format_string("%%label%d", next_id(id));

  switch(calcule->type->tag) {
    case TYPE_BOOLEAN:
    case TYPE_CHARACTER:
    case TYPE_INTEGER:
    case TYPE_ARRAY:
      if(calcule->tag == EXPRESSION_DIV) operator = format_string("s%s", operator); // there is no 'div', must use 'sdiv'
      code_expression_calcule_values(id, calcule, operator);
      break;
    case TYPE_FLOAT:
      operator = format_string("f%s", operator);
      code_expression_calcule_values(id, calcule, operator);
      break;
    default:
      throw_code_error("invalid expression calcule");
      break;
  }
}

void code_expression_calcule_values(int* id, Node* calcule, char* operator) {
  printf("  %s = %s ", calcule->id, operator);
  code_variable_type(calcule->content.n[0]->type);
  printf(" %s, %s\n", calcule->content.n[0]->id, calcule->content.n[1]->id);
}

void code_expression_negative(int* id, Node* negative) {
  code_expression(id, negative->content.n[0]);

  switch(negative->type->tag) {
    case TYPE_BOOLEAN:
    case TYPE_CHARACTER:
    case TYPE_INTEGER:
    case TYPE_ARRAY:
      code_expression_negative_type(id, negative, "i32", "sub nsw");
      break;
    case TYPE_FLOAT:
      code_expression_negative_type(id, negative, "float", "fsub");
      break;
    default:
      throw_code_error("invalid expression negative");
      break;
  }
}

void code_expression_negative_type(int* id, Node* negative, char* type, char* operator) {
  negative->id = format_string("%%label%d", next_id(id));

  printf("  %s = %s %s 0, %s\n", negative->id, operator, type, negative->content.n[0]->id);
}

void code_expression_variable(int* id, Node* variable) {
  variable->id = format_string("%%label%d", next_id(id));

  printf("  %s = load ", variable->id);
  code_variable_type(variable->definition->content.n[1]);
  printf(", ");
  code_variable_type(variable->definition->content.n[1]);
  printf("* %s\n", variable->definition->id);
}

void code_expression_float(int* id, Node* float_expression) {
  float_expression->id = format_string("%%label%d", next_id(id));

  printf("  %s = fptrunc double %f to float\n", float_expression->id, float_expression->content.f);
}

void code_expression_string(int* id, Node* string) {
  char* identifier = format_string("%%label%d", next_id(id));
  char* identifier_char = NULL;
  int length = strlen(string->content.s) + 1;

  printf("  %s = alloca [%d x i32]\n", identifier, length);

  for(int i = 0; i < length; i++) {
    identifier_char = format_string("%%label%d", next_id(id));
    int character = (int)string->content.s[i];

    printf("  %s = getelementptr inbounds [%d x i32], [%d x i32]* %s, i64 0, i64 %d\n", identifier_char, length, length, identifier, i);
    printf("  store i32 %d, i32* %s\n", character, identifier_char);
  }

  identifier_char = format_string("%%label%d", next_id(id));
  printf("  %s = getelementptr inbounds [%d x i32], [%d x i32]* %s, i32 0, i32 0\n", identifier_char, length, length, identifier);

  string->id = identifier_char;
}

/************************* UTILITY *************************/

char* get_node_name(Node* node) {
  return (char*)node->content.s;
}

int* initialize_id() {
  int* id = (int*)safe_malloc(sizeof(int));
  *id = -1;

  return id;
}

int next_id(int* id) {
  (*id)++;
  return *id;
}

char* label_name(char* label) {
  int length = strlen(label);
  char* name = (char*)safe_malloc(sizeof(char) * length);
  memcpy(name, &label[1], length);

  return name;
}