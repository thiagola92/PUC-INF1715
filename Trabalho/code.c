// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#include"code.h"

void throw_code_error(const char* error) {
  printf("code error: %s\n", error);
  exit(4);
}

void start_coding(Node* program) {
  printf("declare i32 @printf(i8*, ...)\n");
  printf("declare i8* @malloc(i64)\n\n");
  
  printf("@.print.char = constant [3 x i8] c\"%%c\\00\"\n");
  printf("@.print.int = constant [3 x i8] c\"%%d\\00\"\n");
  printf("@.print.float = constant [3 x i8] c\"%%f\\00\"\n\n");

  switch(program->tag) {
    case EMPTY:
      break;
    case DEFINE_LIST:
      code_global_list(program);
      break;
    case DEFINE_VARIABLE:
      code_global_var(program);
      break;
    case DEFINE_FUNCTION:
      code_global_function(program);
      break;
    default:
      throw_code_error("invalid start");
  }
}

void code_global_list(Node* global_list) {
  for(int i = 0; i < global_list->number_of_childs; i++)
    code_globals(global_list->content.n[i]);
}

void code_globals(Node* global) {
  switch(global->tag) {
    case DEFINE_VARIABLE:
      code_global_var(global);
      break;
    case DEFINE_FUNCTION:
      code_global_function(global);
      break;
    default:
      throw_code_error("invalid global");
  }
}

// [var_id] = global [var_type] [init_value]
void code_global_var(Node* global_var) {
  char* var_name = get_node_name(global_var->content.n[0]);

  global_var->id = format_string("@%s", var_name);

  printf("%s = global ", global_var->id);
  code_var_type(global_var->content.n[1]);
  printf(" ");
  code_initial_value(global_var->content.n[1]);
  printf("\n");
}

void code_var_type(Node* var_type) {
  switch(var_type->tag) {
    case TYPE_BOOLEAN:
    case TYPE_CHARACTER:
    case TYPE_INTEGER:
      printf("i32");
      break;
    case TYPE_FLOAT:
      printf("float");
      break;
    case TYPE_ARRAY:
      code_var_type(var_type->type);
      printf("*");
      break;
    default:
      throw_code_error("invalid var type");
  }
}

void code_initial_value(Node* var_type) {
  switch(var_type->tag) {
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

void code_global_function(Node* function) {  
  switch(function->number_of_childs) {
    case 4:
      code_global_function_4(function);
      break;
    case 3:
      code_global_function_3(function);
      break;
    case 2:
      code_global_function_2(function);
      break;
    default:
      throw_code_error("invalid function definition");
  }
}

// define [var_type] [name]([params]) {
//   [block]
// }
void code_global_function_4(Node* function) {
  char* name = get_node_name(function->content.n[0]);
  int* id = initialize_id();

  function->id = format_string("@%s", name);

  printf("define ");
  code_var_type(function->content.n[2]);
  printf(" %s(", function->id);
  code_parameters(id, function->content.n[1]);
  printf(") {\n");

  code_parameters_declarations(id, function->content.n[1]);
  code_block(id, function->content.n[3]);

  printf("}\n\n");
}

void code_global_function_3(Node* function) {
  if(function->content.n[1]->tag == PARAMETER || function->content.n[1]->tag == PARAMETER_LIST)
    code_global_function_3_with_parameters(function);
  else
    code_global_function_3_with_type(function);
}

// define void [name]([params]) {
//   [block]
//   ret void
// }
void code_global_function_3_with_parameters(Node* function) {
  char* name = get_node_name(function->content.n[0]);
  int* id = initialize_id();

  function->id = format_string("@%s", name);

  printf("define void %s(", function->id);
  code_parameters(id, function->content.n[1]);
  printf(") {\n");

  code_parameters_declarations(id, function->content.n[1]);
  code_block(id, function->content.n[2]);
  printf("  ret void\n");

  printf("}\n\n");
}

// define [var_type] [name]() {
//   [block]
// }
void code_global_function_3_with_type(Node* function) {
  char* name = get_node_name(function->content.n[0]);
  int* id = initialize_id();

  function->id = format_string("@%s", name);

  printf("define ");
  code_var_type(function->content.n[1]);
  printf(" %s() {\n", function->id);

  code_block(id, function->content.n[2]);

  printf("}\n\n");
}

// define void [name]() {
//   [block]
//   ret void
// }
void code_global_function_2(Node* function) {
  char* name = get_node_name(function->content.n[0]);
  int* id = initialize_id();

  function->id = format_string("@%s", name);

  printf("define void %s() {\n", function->id);

  code_block(id, function->content.n[1]);
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

// [param], [param], [param], ...
void code_parameter_list(int* id, Node* parameter_list) {
  for(int i = 0; i < parameter_list->number_of_childs; i++) {
    code_parameter(id, parameter_list->content.n[i]);

    if(i+1 < parameter_list->number_of_childs)
      printf(", ");
  }
}

// [var_type]
void code_parameter(int* id, Node* parameter) {
  parameter->id = format_string("%%%d", next_id(id));
  code_var_type(parameter->content.n[1]);
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

// [new_id] = alloca [var_type]
// store [var_type] [param_id], [var_type]* [new_id]
void code_parameter_declaration(int* id, Node* parameter) {
  char* new_id = format_string("%%label_%d", next_id(id));

  printf("  %s = alloca ", new_id);
  code_var_type(parameter->content.n[1]);
  printf("\n");

  printf("  store ");
  code_var_type(parameter->content.n[1]);
  printf(" %s, ", parameter->id);
  code_var_type(parameter->content.n[1]);
  printf("* %s\n", new_id);

  parameter->id = new_id;
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
      break;
    default:
      throw_code_error("invalid block");
  }
}

// [vars]
// [commands]
void code_block_2(int* id, Node* block) {
  code_variables(id, block->content.n[0]);
  code_commands(id, block->content.n[1]);
}

// [vars]
// ou
// [commands]
void code_block_1(int* id, Node* block) {
  switch(block->content.n[0]->tag) {
    case VARIABLE_LIST:
    case DEFINE_VARIABLE:
      code_variables(id, block->content.n[0]);
      break;
    case COMMAND_LIST:
    case IF:
    case WHILE:
    case ASSIGNMENT:
    case RETURN:
    case PRINT:
    case FUNCTION_CALL:
      code_commands(id, block->content.n[0]);
      break;
    default:
      throw_code_error("invalid block content");
  }
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

// [var_id] = alloca [var_type]
void code_local_variable(int* id, Node* variable) {
  variable->id = format_string("%%label_%d", next_id(id));

  printf("  %s = alloca ", variable->id);
  code_var_type(variable->content.n[1]);
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
    case BLOCK:
      code_block(id, command);
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

// [exp]
// [condition]
// br i1 [condition_id], label [true_label] [end_label]
//
// [true_label]:
// [block]
// br label [end_label]
//
// [end_label]:
void code_if_no_else(int* id, Node* if_command) {
  char* true_label;
  char* end_label;

  printf("\n  ; if\n");

  true_label = format_string("%%label_%d", next_id(id));
  end_label = format_string("%%label_%d", next_id(id));

  code_expression(id, if_command->content.n[0]);
  code_condition_compare(id, if_command->content.n[0]);
  printf("  br i1 %s, label %s, label %s\n\n", if_command->content.n[0]->id, true_label, end_label);

  printf("  %s:\n", label_name(true_label));
  code_block(id, if_command->content.n[1]);
  printf("  br label %s\n\n", end_label);

  printf("  %s:\n", label_name(end_label));
}

// [exp]
// [condition]
// br i1 [condition_id], label [true_label], label [false_label]
// 
// [true_label]:
// [block]
// br label [end_label]
//
// [false_label]:
// [block]
// br label [end_label]
//
// [end_label]:
void code_if_else(int* id, Node* if_else) {
  char* true_label;
  char* false_label;
  char* end_label;

  printf("\n  ; if else\n");

  true_label = format_string("%%label_%d", next_id(id));
  false_label = format_string("%%label_%d", next_id(id));
  end_label = format_string("%%label_%d", next_id(id));

  code_expression(id, if_else->content.n[0]);
  code_condition_compare(id, if_else->content.n[0]);
  printf("  br i1 %s, label %s, label %s\n\n", if_else->content.n[0]->id, true_label, false_label);

  printf("  %s:\n", label_name(true_label));
  code_block(id, if_else->content.n[1]);
  printf("  br label %s\n\n", end_label);

  printf("  %s:\n", label_name(false_label));
  code_block(id, if_else->content.n[2]);
  printf("  br label %s\n\n", end_label);

  printf("  %s:\n", label_name(end_label));
}

// [new_condition_id] = fcmp eq float [condition_id], 1
// ou
// [new_condition_id] = icmp eq i32 [condition_id], 1
void code_condition_compare(int* id, Node* condition) {
  char* new_condition_id;

  new_condition_id = format_string("%%label_%d", next_id(id));

  switch(condition->type->tag) {
    case TYPE_FLOAT:
      printf("  %s = fcmp eq float %s, 1\n", new_condition_id, condition->id);
      break;
    case TYPE_BOOLEAN:
    case TYPE_CHARACTER:
    case TYPE_INTEGER:
    case TYPE_ARRAY:
      printf("  %s = icmp eq i32 %s, 1\n", new_condition_id, condition->id);
      break;
    default:
      throw_code_error("invalid condition compare");
  }
  
  condition->id = new_condition_id;
}

// br label [start_label]
//
// [start_label]:
// [exp]
// [condition]
// br i1 [condition_id], label [true_label], label [end_label]
//
// [true_label]:
// [block]
// br label [start_label]
//
// [end_label]:
void code_while(int* id, Node* while_command) {
  char* start_label;
  char* true_label;
  char* end_label;

  printf("\n  ; while\n");

  start_label = format_string("%%label_%d", next_id(id));
  true_label = format_string("%%label_%d", next_id(id));
  end_label = format_string("%%label_%d", next_id(id));

  printf("  br label %s\n\n", start_label);
  printf("  %s:\n", label_name(start_label));
  code_expression(id, while_command->content.n[0]);
  code_condition_compare(id, while_command->content.n[0]);
  printf("  br i1 %s, label %s, label %s\n\n", while_command->content.n[0]->id, true_label, end_label);

  printf("  %s:\n", label_name(true_label));
  code_block(id, while_command->content.n[1]);
  printf("  br label %s\n\n", start_label);

  printf("  %s:\n", label_name(end_label));
}

// [exp_0]
// [exp_1]
// store [var_1_type] [exp_1_id], [var_0_type]* [exp_0_id]
void code_assignment(int* id, Node* assignment) {
  code_expression(id, assignment->content.n[0]);
  code_expression(id, assignment->content.n[1]);

  printf("  store ");
  code_var_type(assignment->content.n[1]->type);
  printf(" %s, ", assignment->content.n[1]->id);
  code_var_type(assignment->content.n[0]->type);
  printf("* %s\n", assignment->content.n[0]->id);
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

// [exp]
// ret [var_type] [exp_id]
void code_return_value(int* id, Node* return_command) {
  code_expression(id, return_command->content.n[0]);

  printf("  ret ");
  code_var_type(return_command->definition->type);
  printf(" %s\n", return_command->content.n[0]->id);
}

void code_print(int* id, Node* print) {
  code_expression(id, print->content.n[0]);

  switch(print->content.n[0]->type->tag) {
    case TYPE_BOOLEAN:
    case TYPE_CHARACTER:
    case TYPE_INTEGER:
      code_print_int(print);
      break;
    case TYPE_FLOAT:
      code_print_float(id, print);
      break;
    case TYPE_ARRAY:
      if(print->content.n[0]->type->type->tag == TYPE_CHARACTER)
        code_print_string(id, print);
      break;
    default:
      throw_code_error("invalid print");
  }
}

void code_print_int(Node* print) {
  printf("  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %s)\n", print->content.n[0]->id);
}

void code_print_float(int* id, Node* print) {
  char* double_id = format_string("%%label_%d", next_id(id));

  printf("  %s = fpext float %s to double\n", double_id, print->content.n[0]->id);
  printf("  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.float, i32 0, i32 0), double %s)\n", double_id);
}

void code_print_string(int* id, Node* print) {
  char* load_id;
  char* alloca_id;
  char* getelementptr_id;
  char* load_id_2;
  char* icmp_id;
  char* add_id;

  char* start_label;
  char* repeat_label;
  char* end_label;

  printf("\n  ; print string\n");

  start_label = format_string("%%label_%d", next_id(id));
  repeat_label = format_string("%%label_%d", next_id(id));
  end_label = format_string("%%label_%d", next_id(id));

  alloca_id = format_string("%%label_%d", next_id(id));
  printf("  %s = alloca i32\n", alloca_id);
  printf("  store i32 0, i32* %s\n", alloca_id);
  printf("  br label %s\n", start_label);
  
  printf("\n  %s:\n", label_name(start_label));
  load_id = format_string("%%label_%d", next_id(id));
  getelementptr_id = format_string("%%label_%d", next_id(id));
  printf("  %s = load i32, i32* %s\n", load_id, alloca_id);
  printf("  %s = getelementptr inbounds i32, i32* %s, i32 %s\n", getelementptr_id, print->content.n[0]->id, load_id);

  load_id_2 = format_string("%%label_%d", next_id(id));
  icmp_id = format_string("%%label_%d", next_id(id));
  printf("  %s = load i32, i32* %s\n", load_id_2, getelementptr_id);
  printf("  %s = icmp eq i32 %s, 0\n", icmp_id, load_id_2);
  printf("  br i1 %s, label %s, label %s\n", icmp_id, end_label, repeat_label);

  printf("\n  %s:\n", label_name(repeat_label));
  printf("  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %s)\n", load_id_2);

  add_id = format_string("%%label_%d", next_id(id));
  printf("  %s = add i32 1, %s\n", add_id, load_id);
  printf("  store i32 %s, i32* %s\n", add_id, alloca_id);
  printf("  br label %s\n", start_label);

  printf("\n  %s:\n", label_name(end_label));
}

void code_function_call(int* id, Node* function_call) {
  switch(function_call->number_of_childs) {
    case 2:
      code_function_call_2(id, function_call);
      break;
    case 1:
      code_function_call_1(id, function_call);
      break;
    default:
      throw_code_error("invalid function call");
  }
}

// [exp]
// [call] ([params])
void code_function_call_2(int* id, Node* function_call) {
  code_expressions(id, function_call->content.n[1]);
  code_function_call_return(id, function_call);
  printf("(");
  code_function_call_parameters(id, function_call->content.n[1]);
  printf(")\n");
}

// [call] ()
void code_function_call_1(int* id, Node* function_call) {
  code_function_call_return(id, function_call);
  printf("()\n");
}

void code_function_call_return(int* id, Node* function_call) {
  if(function_call->definition->type == NULL)
    code_function_call_return_void(function_call);
  else
    code_function_call_return_value(id, function_call);
}

// call void [function_id]
void code_function_call_return_void(Node* function_call) {
  printf("  call void %s", function_call->definition->id);
}

// [function_call_id] = call [var_type] [function_id]
void code_function_call_return_value(int* id, Node* function_call) {
  function_call->id = format_string("%%label_%d", next_id(id));
  
  printf("  %s = call ", function_call->id);
  code_var_type(function_call->type);
  printf(" %s", function_call->definition->id);
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

// [var_type] [param_id]
void code_function_call_parameter(int* id, Node* parameter) {
  code_var_type(parameter->type);
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
      code_expression_compare(id, expression, "gt");
      break;
    case EXPRESSION_GREATER_EQUAL:
      code_expression_compare(id, expression, "ge");
      break;
    case EXPRESSION_LESS:
      code_expression_compare(id, expression, "lt");
      break;
    case EXPRESSION_LESS_EQUAL:
      code_expression_compare(id, expression, "le");
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
      code_expression_cast(id, expression);
      break;
    case EXPRESSION_NEGATIVE:
      code_expression_negative(id, expression);
      break;
    case EXPRESSION_NOT:
      code_expression_not(id, expression);
      break;
    case EXPRESSION_ARRAY_POSITION:
      code_expression_array_position(id, expression);
      break;
    case ARRAY_POSITION:
      code_array_position(id, expression);
      break;
    case EXPRESSION_VARIABLE:
      code_expression_variable(id, expression);
      break;
    case VARIABLE:
      expression->id = expression->definition->id;
      break;
    case FUNCTION_CALL:
      code_function_call(id, expression);
      break;
    case NEW_ARRAY:
      code_expression_new_array(id, expression);
      break;
    case TYPE_ARRAY:
    case TYPE_BOOLEAN:
    case TYPE_CHARACTER:
    case TYPE_INTEGER:
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

// [label_true]:
// br label [label_result]
//
// [label_false]:
// br label [label_result]
//
// [label_result]:
// [phi_id] = phi i1 [true, label_true], [false , label_false]
// [id] = zext i1 [phi_id] to i32
void code_expression_condition(int* id, char* identifier, char* label_true, char* label_false) {
  char* label_result;
  char* phi_identifier;

  label_result = format_string("%%label_%d", next_id(id));
  phi_identifier = format_string("%%label_%d", next_id(id));

  printf("  %s:\n", label_name(label_true));
  printf("  br label %s\n\n", label_result);

  printf("  %s:\n", label_name(label_false));
  printf("  br label %s\n\n", label_result);

  printf("  %s:\n", label_name(label_result));
  printf("  %s = phi i1 [ true, %s ], [ false, %s ]\n", phi_identifier, label_true, label_false);
  printf("  %s = zext i1 %s to i32\n", identifier, phi_identifier);
}

// [left_exp]
// [comp_id] = icmp ne i32 [left_id], 0
// br i1 [comp_id], label [label_true], label [label_next]
//
// [label_next]:
// [right_exp]
// [comp_id_2] = icmp ne i32 [right_id], 0
// br i1 [comp_id_2], label [label_true], [label_false]
//
// [condition]
void code_expression_or(int* id, Node* or) {
  char* comparison_id;
  char* comparison_id_2;
  char* label_true;
  char* label_false;
  char* label_next;

  printf("\n  ; or\n");

  comparison_id = format_string("%%label_%d", next_id(id));
  label_true = format_string("%%label_%d", next_id(id));
  label_false = format_string("%%label_%d", next_id(id));
  label_next = format_string("%%label_%d", next_id(id));

  code_expression(id, or->content.n[0]);
  printf("  %s = icmp ne i32 %s, 0\n", comparison_id, or->content.n[0]->id); // i32 != 0
  printf("  br i1 %s, label %s, label %s\n\n", comparison_id, label_true, label_next);

  comparison_id_2 = format_string("%%label_%d", next_id(id));
  or->id = format_string("%%label_%d", next_id(id));
  
  printf("  %s:\n", label_name(label_next));
  code_expression(id, or->content.n[1]);
  printf("  %s = icmp ne i32 %s, 0\n", comparison_id_2, or->content.n[1]->id);
  printf("  br i1 %s, label %s, label %s\n\n", comparison_id_2, label_true, label_false);

  code_expression_condition(id, or->id, label_true, label_false);
}

// [left_exp]
// [comp_id] = icmp ne i32 [left_id], 0
// br i1 [comp_id], label [label_next], label [label_false]
//
// [label_next]:
// [right_exp]
// [comp_id_2] = icmp ne i32 [right_id], 0
// br i1 [comp_id_2], label [label_true], [label_false]
//
// [condition]
void code_expression_and(int* id, Node* and) {
  char* comparison_id;
  char* comparison_id_2;
  char* label_true;
  char* label_false;
  char* label_next;

  printf("\n  ; and\n");

  comparison_id = format_string("%%label_%d", next_id(id));
  label_true = format_string("%%label_%d", next_id(id));
  label_false = format_string("%%label_%d", next_id(id));
  label_next = format_string("%%label_%d", next_id(id));

  code_expression(id, and->content.n[0]);
  printf("  %s = icmp ne i32 %s, 0\n", comparison_id, and->content.n[0]->id); // i32 != 0
  printf("  br i1 %s, label %s, label %s\n\n", comparison_id, label_next, label_false);

  comparison_id_2 = format_string("%%label_%d", next_id(id));
  and->id = format_string("%%label_%d", next_id(id));
  
  printf("  %s:\n", label_name(label_next));
  code_expression(id, and->content.n[1]);
  printf("  %s = icmp ne i32 %s, 0\n", comparison_id_2, and->content.n[1]->id);
  printf("  br i1 %s, label %s, label %s\n\n", comparison_id_2, label_true, label_false);

  code_expression_condition(id, and->id, label_true, label_false);
}

// [left_exp]
// [right_exp]
// [comp_id] = [comp_type] [op] [var_type] [left_id], [right_id]
// [comp_id_2] = zext i1 [comp_id] to i32
void code_expression_compare(int* id, Node* compare, char* operator) {
  char* result_id;

  code_expression(id, compare->content.n[0]);
  code_expression(id, compare->content.n[1]);

  compare->id = format_string("%%label_%d", next_id(id));
  result_id = format_string("%%label_%d", next_id(id));

  printf("  %s = ", compare->id);
  code_expression_compare_type(compare->content.n[0]->type);
  code_expression_compare_operator(compare, operator);
  code_var_type(compare->content.n[0]->type);
  printf(" %s, %s\n", compare->content.n[0]->id, compare->content.n[1]->id);

  printf("  %s = zext i1 %s to i32\n", result_id, compare->id);

  compare->id = result_id;
}

// [icmp/fcmp]
void code_expression_compare_type(Node* type) {
  switch(type->tag) {
    case TYPE_BOOLEAN:
    case TYPE_CHARACTER:
    case TYPE_INTEGER:
    case TYPE_ARRAY:
      printf("icmp ");
      break;
    case TYPE_FLOAT:
      printf("fcmp ");
      break;
    default:
      throw_code_error("invalid expression compare type");
      break;
  }
}

// [eq/ne/sgt/sge/slt/sle/oeq/one/ogt/oge/olt/ole]
void code_expression_compare_operator(Node* compare, char* operator) {
  if(compare->content.n[0]->type->tag == TYPE_FLOAT) {
    printf("o%s ", operator);
    return;
  }

  switch(compare->tag) {
    case EXPRESSION_EQUAL:
    case EXPRESSION_NOT_EQUAL:
      printf("%s ", operator);
      break;
    case EXPRESSION_GREATER:
    case EXPRESSION_GREATER_EQUAL:
    case EXPRESSION_LESS:
    case EXPRESSION_LESS_EQUAL:
      printf("s%s ", operator);
      break;
    default:
      throw_code_error("invalid expression compare operator");
  }
}

// [sub/add/sdiv/mul/fsub/fadd/fdiv/fmul]
void code_expression_calcule(int* id, Node* calcule, char* operator) {
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
  }
}

// [left_exp]
// [right_exp]
// [calc_id] = [op] [var_type] [left_id], [right_id]
void code_expression_calcule_values(int* id, Node* calcule, char* operator) {
  code_expression(id, calcule->content.n[0]);
  code_expression(id, calcule->content.n[1]);

  calcule->id = format_string("%%label_%d", next_id(id));

  printf("  %s = %s ", calcule->id, operator);
  code_var_type(calcule->content.n[0]->type);
  printf(" %s, %s\n", calcule->content.n[0]->id, calcule->content.n[1]->id);
}

void code_expression_cast(int* id, Node* cast) {
  TAG from_type;
  TAG to_type;

  switch(cast->content.n[0]->type->tag) {
    case TYPE_BOOLEAN:
    case TYPE_CHARACTER:
    case TYPE_INTEGER:
      from_type = TYPE_INTEGER;
      break;
    case TYPE_FLOAT:
      from_type = TYPE_FLOAT;
      break;
    default:
      throw_code_error("invalid expression cast from");
  }

  switch(cast->content.n[1]->type->tag) {
    case TYPE_BOOLEAN:
    case TYPE_CHARACTER:
    case TYPE_INTEGER:
      to_type = TYPE_INTEGER;
      break;
    case TYPE_FLOAT:
      to_type = TYPE_FLOAT;
      break;
    default:
      throw_code_error("invalid expression cast to");
  }

  code_expression_cast_from_to(id, cast, from_type, to_type);
}

// [exp]
// [cast_id] = [sitofp/fptosi] [i32/float] [exp_id] [float/i32]
void code_expression_cast_from_to(int* id, Node* cast, TAG from_type, TAG to_type) {
  code_expression(id, cast->content.n[0]);

  cast->id = format_string("%%label_%d", next_id(id));

  if(from_type == to_type) {
    cast->id = cast->content.n[0]->id;
    return;
  }

  switch(from_type) {
    case TYPE_INTEGER:
      printf("  %s = sitofp i32 %s to float\n", cast->id, cast->content.n[0]->id);
      break;
    case TYPE_FLOAT:
      printf("  %s = fptosi float %s to i32\n", cast->id, cast->content.n[0]->id);
      break;
    default:
      throw_code_error("invalid expression cast from to");
  }
}

// [exp]
// [neg_id] = [sub nsw i32 0/fsub float 0.000000e+00], [exp_id]
void code_expression_negative(int* id, Node* negative) {
  code_expression(id, negative->content.n[0]);

  negative->id = format_string("%%label_%d", next_id(id));

  switch(negative->type->tag) {
    case TYPE_BOOLEAN:
    case TYPE_CHARACTER:
    case TYPE_INTEGER:
      printf("  %s = sub nsw i32 0, %s\n", negative->id, negative->content.n[0]->id);
      break;
    case TYPE_FLOAT:
      printf("  %s = fsub float 0.000000e+00, %s\n", negative->id, negative->content.n[0]->id);
      break;
    case TYPE_ARRAY:
      throw_code_error("invalid expression negative array");
    default:
      throw_code_error("invalid expression negative");
      break;
  }
}

// [exp]
// [comp_id] = icmp ne i32 [exp_id]
// [xor_id] = xor i1 [comp_id], true
// [not_id] = zext i1 [xor_id] to i32
void code_expression_not(int* id, Node* not) {
  char* compare_id;
  char* xor_id;

  code_expression(id, not->content.n[0]);

  compare_id = format_string("%%label_%d", next_id(id));
  xor_id = format_string("%%label_%d", next_id(id));
  not->id = format_string("%%label_%d", next_id(id));

  printf("  %s = icmp ne i32 %s, 0\n", compare_id, not->content.n[0]->id);
  printf("  %s = xor i1 %s, true\n", xor_id, compare_id);
  printf("  %s = zext i1 %s to i32\n", not->id, xor_id);
}

// [left_exp]
// [right_exp]
// [array_id] = getelementptr inbounds [var_type], [var_type]* [left_id], i32 [right_id]
void code_array_position(int* id, Node* array_position) {

  code_expression(id, array_position->content.n[0]);
  code_expression(id, array_position->content.n[1]);

  array_position->id  = format_string("%%label_%d", next_id(id));

  printf("  %s = getelementptr inbounds ", array_position->id);
  code_var_type(array_position->type);
  printf(", ");
  code_var_type(array_position->type);
  printf("* %s, i32 %s\n", array_position->content.n[0]->id, array_position->content.n[1]->id);
}

// [left_exp]
// [right_exp]
// [ptr_id] = getelementptr inbounds [var_type], [var_type]* [left_id], i32 [right_id]
// [array_id] = load [var_type], [var_type]* [ptr_id]
void code_expression_array_position(int* id, Node* array_position) {
  char* getelementptr_id;

  code_expression(id, array_position->content.n[0]);
  code_expression(id, array_position->content.n[1]);

  getelementptr_id = format_string("%%label_%d", next_id(id));

  printf("  %s = getelementptr inbounds ", getelementptr_id);
  code_var_type(array_position->type);
  printf(", ");
  code_var_type(array_position->type);
  printf("* %s, i32 %s\n", array_position->content.n[0]->id, array_position->content.n[1]->id);

  array_position->id = format_string("%%label_%d", next_id(id));

  printf("  %s = load ", array_position->id);
  code_var_type(array_position->type);
  printf(", ");
  code_var_type(array_position->type);
  printf("* %s\n", getelementptr_id);
}

// [exp_var_id] = load [var_type], [var_type]* [var_id]
void code_expression_variable(int* id, Node* variable) {
  variable->id = format_string("%%label_%d", next_id(id));

  printf("  %s = load ", variable->id);
  code_var_type(variable->definition->content.n[1]);
  printf(", ");
  code_var_type(variable->definition->content.n[1]);
  printf("* %s\n", variable->definition->id);
}

// [exp]
// [mult_id] = mul i64 4, [exp]
// [malloc_id] = call i8* @malloc(i64 [mult_id])
// [array_id] = bitcast i8* [malloc_id] to [var_type]*
void code_expression_new_array(int* id, Node* new_array) {
  char* mult_id;
  char* malloc_id;

  code_expression(id, new_array->content.n[1]);

  mult_id = format_string("%%label_%d", next_id(id));
  malloc_id = format_string("%%label_%d", next_id(id));
  new_array->id = format_string("%%label_%d", next_id(id));

  printf("  %s = mul i64 4, %s\n", mult_id, new_array->content.n[1]->id);
  printf("  %s = call i8* @malloc(i64 %s)\n", malloc_id, mult_id);
  printf("  %s = bitcast i8* %s to ", new_array->id, malloc_id);
  code_var_type(new_array->content.n[0]);
  printf("*\n");
}

void code_expression_float(int* id, Node* float_expression) {
  float_expression->id = format_string("%%label_%d", next_id(id));

  printf("  %s = fptrunc double %f to float\n", float_expression->id, float_expression->content.f);
}

// [alloca_id] = alloca i32*
// [mult_id] = i64 4, [length]
// [malloc_id] = call i8* @malloc(i64 [mult_id])
// [string_id] = bitcast i8* [malloc_id] to i32*
// store i32* [string_id], i32** [alloca_id]
//
// [load_id] = load i32*, i32** [alloca_id]
// [ptr_id] = getelementptr inbounds i32, i32* [load_id], i32 [counter]
// store i32 [character], i32* [ptr_id]
void code_expression_string(int* id, Node* string) {
  char* alloca_id;
  char* mult_id;
  char* malloc_id;

  printf("\n  ; string\n");

  int length = strlen(string->content.s) + 1;

  alloca_id = format_string("%%label_%d", next_id(id));
  mult_id = format_string("%%label_%d", next_id(id));
  malloc_id = format_string("%%label_%d", next_id(id));
  string->id = format_string("%%label_%d", next_id(id));
  printf("  %s = alloca i32*\n", alloca_id);
  printf("  %s = mul i64 4, %d\n", mult_id, length);
  printf("  %s = call i8* @malloc(i64 %s)\n", malloc_id, mult_id);
  printf("  %s = bitcast i8* %s to i32*\n", string->id, malloc_id);
  printf("  store i32* %s, i32** %s\n", string->id, alloca_id);

  for(int i = 0; i < length; i++) {
    char* load_id = format_string("%%label_%d", next_id(id));
    char* getelementptr_id = format_string("%%label_%d", next_id(id));

    int character = (int)string->content.s[i];

    printf("  %s = load i32*, i32** %s\n", load_id, alloca_id);
    printf("  %s = getelementptr inbounds i32, i32* %s, i32 %d\n", getelementptr_id, load_id, i);
    printf("  store i32 %d, i32* %s\n", character, getelementptr_id);
  }
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