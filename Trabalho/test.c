// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#include"test.h"

const char* tag_to_string(TAG tag) {
  switch(tag) {
		case EMPTY:
			return "EMPTY";
		case DEFINE_LIST:
			return "DEFINE_LIST";
		case DEFINE_VARIABLE:
			return "DEFINE_VARIABLE";
		case DEFINE_FUNCTION:
			return "DEFINE_FUNCTION";
		case PARAMETER_LIST:
			return "PARAMETER_LIST";
		case PARAMETER:
			return "PARAMETER";
		case COMMAND_LIST:
			return "COMMAND_LIST";
		case VARIABLE_LIST:
			return "VARIABLE_LIST";
		case BLOCK:
			return "BLOCK";
		case IF:
			return "IF";
		case WHILE:
			return "WHILE";
		case ASSIGNMENT:
			return "ASSIGNMENT";
		case RETURN:
			return "RETURN";
		case PRINT:
			return "PRINT";
		case VARIABLE:
			return "VARIABLE";
		case ARRAY_POSITION:
			return "ARRAY_POSITION";
		case FUNCTION_CALL:
			return "FUNCTION_CALL";
		case NEW_ARRAY:
			return "NEW_ARRAY";
		case EXPRESSION_LIST:
			return "EXPRESSION_LIST";
		case EXPRESSION_OR:
			return "EXPRESSION_OR";
		case EXPRESSION_AND:
			return "EXPRESSION_AND";
		case EXPRESSION_EQUAL:
			return "EXPRESSION_EQUAL";
		case EXPRESSION_NOT_EQUAL:
			return "EXPRESSION_NOT_EQUAL";
		case EXPRESSION_GREATER:
			return "EXPRESSION_GREATER";
		case EXPRESSION_GREATER_EQUAL:
			return "EXPRESSION_GREATER_EQUAL";
		case EXPRESSION_LESS:
			return "EXPRESSION_LESS";
		case EXPRESSION_LESS_EQUAL:
			return "EXPRESSION_LESS_EQUAL";
		case EXPRESSION_SUB:
			return "EXPRESSION_SUB";
		case EXPRESSION_ADD:
			return "EXPRESSION_ADD";
		case EXPRESSION_DIV:
			return "EXPRESSION_DIV";
		case EXPRESSION_MULT:
			return "EXPRESSION_MULT";
		case EXPRESSION_CAST:
			return "EXPRESSION_CAST";
		case EXPRESSION_NEGATIVE:
			return "EXPRESSION_NEGATIVE";
		case EXPRESSION_NOT:
			return "EXPRESSION_NOT";
		case DATA_BOOLEAN:
			return "DATA_BOOLEAN";
		case DATA_CHARACTER:
			return "DATA_CHARACTER";
		case DATA_INTEGER:
			return "DATA_INTEGER";
		case DATA_FLOAT:
			return "DATA_FLOAT";
		case DATA_STRING:
			return "DATA_STRING";
		case DATA_ARRAY:
			return "DATA_ARRAY";
		default:
			return "UNKNOWN";
		}
}

const char* type_to_string(TYPE type) {
  switch(type) {
		case BOOLEAN:
			return "BOOLEAN";
		case CHARACTER:
			return "CHARACTER";
		case INTEGER:
			return "INTEGER";
		case FLOAT:
			return "FLOAT";
		case STRING:
			return "STRING";
		case ARRAY:
			return "ARRAY";
		default:
			return "VOID";
	}
}

void print_tree(Node* node, int tabs) {
	printf("\n");

	for(int i = 0; i < tabs; i++)
		printf("    ");

	printf("%s", tag_to_string(node->tag));
	
	printf(" - %s", type_to_string(node->type));

	switch(node->tag) {
		case DATA_BOOLEAN:
			printf(" - content: %d", node->content.b);
			break;
		case DATA_CHARACTER:
			printf(" - content: %c", node->content.c);
			break;
		case DATA_INTEGER:
			printf(" - content: %d", node->content.i);
			break;
		case DATA_FLOAT:
			printf(" - content: %f", node->content.f);
			break;
		case DATA_STRING:
			printf(" - content: %s", node->content.s);
			break;
		default:
			break;
	}
	
	for(int i = 0; i < node->number_of_childs; i++)
		print_tree(node->content.n[i], tabs+1);
}

int test(const char* path) {
	yyin = fopen(path, "r");
	yyparse();

  start_binding(__root__);
  type_node(__root__);
	print_tree(__root__, 0);
	printf("\n");

	return 0;
}
