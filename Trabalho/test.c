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
		case TYPE_BOOL:
			return "TYPE_BOOL";
		case TYPE_CHAR:
			return "TYPE_CHAR";
		case TYPE_INT:
			return "TYPE_INT";
		case TYPE_FLOAT:
			return "TYPE_FLOAT";
		case TYPE_ARRAY:
			return "TYPE_ARRAY";
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
		default:
			return "UNKNOWN";
			break;
		}
}

void print_tree(Node* node, int tabs) {
	printf("\n");

	for(int i = 0; i < tabs; i++)
		printf("    ");

	printf("%s", tag_to_string(node->tag));

	if(node->number_of_childs > 0)
		printf(" - childrens: %d", node->number_of_childs);

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
			for(int i = 0; i < node->number_of_childs; i++)
				print_tree(node->content.n[i], tabs+1);
			break;
	}

}

int test_tree(const char* path) {
	yyin = fopen(path, "r");
	yyparse();

	print_tree(__root__, 0);
	printf("\n");

	return 0;
}

int test_syntax(const char* path) {
	yyin = fopen(path, "r");
	yyparse();

	return 0;
}

int test_lexical(const char* path) {
	yyin = fopen(path, "r");

	do {
		int token = yylex();

		if(token == 0)
			break;

		switch(token) {
			case TOKEN_CHARACTER:
				printf("%s\t%c\n", "TOKEN_CHARACTER", yylval.c);
				break;
			case TOKEN_TRUE:
				printf("%s\t%d\n", "TOKEN_TRUE", yylval.b);
				break;
			case TOKEN_FALSE:
				printf("%s\t%d\n", "TOKEN_FALSE", yylval.b);
				break;
			case TOKEN_INTEGER:
				printf("%s\t%d\n", "TOKEN_INTEGER", yylval.i);
				break;
			case TOKEN_FLOAT:
				printf("%s\t%f\n", "TOKEN_FLOAT", yylval.f);
				break;
			case TOKEN_STRING:
				printf("%s\t%s\n", "TOKEN_STRING", yylval.s);
				break;
			case TOKEN_IDENTIFIER:
				printf("%s\t%s\n", "TOKEN_IDENTIFIER", yylval.s);
				break;
			case TOKEN_NEW:
				printf("%s\n", "TOKEN_NEW");
				break;
			case TOKEN_WORD_BOOL:
				printf("%s\n", "TOKEN_WORD_BOOL");
				break;
			case TOKEN_WORD_CHAR:
				printf("%s\n", "TOKEN_WORD_CHAR");
				break;
			case TOKEN_WORD_INT:
				printf("%s\n", "TOKEN_WORD_INT");
				break;
			case TOKEN_WORD_FLOAT:
				printf("%s\n", "TOKEN_WORD_FLOAT");
				break;
			case TOKEN_IF:
				printf("%s\n", "TOKEN_IF");
				break;
			case TOKEN_ELSE:
				printf("%s\n", "TOKEN_ELSE");
				break;
			case TOKEN_WHILE:
				printf("%s\n", "TOKEN_WHILE");
				break;
			case TOKEN_AS:
				printf("%s\n", "TOKEN_AS");
				break;
			case TOKEN_RETURN:
				printf("%s\n", "TOKEN_RETURN");
				break;
			case TOKEN_OPEN_PARENTHESES:
				printf("%s\n", "TOKEN_OPEN_PARENTHESES");
				break;
			case TOKEN_CLOSE_PARENTHESES:
				printf("%s\n", "TOKEN_CLOSE_PARENTHESES");
				break;
			case TOKEN_OPEN_BRACKETS:
				printf("%s\n", "TOKEN_OPEN_BRACKETS");
				break;
			case TOKEN_CLOSE_BRACKETS:
				printf("%s\n", "TOKEN_CLOSE_BRACKETS");
				break;
			case TOKEN_OPEN_BRACES:
				printf("%s\n", "TOKEN_OPEN_BRACES");
				break;
			case TOKEN_CLOSE_BRACES:
				printf("%s\n", "TOKEN_CLOSE_BRACES");
				break;
			case TOKEN_EQUAL:
				printf("%s\n", "TOKEN_EQUAL");
				break;
			case TOKEN_NOT_EQUAL:
				printf("%s\n", "TOKEN_NOT_EQUAL");
				break;
			case TOKEN_LESS_EQUAL:
				printf("%s\n", "TOKEN_LESS_EQUAL");
				break;
			case TOKEN_GREATER_EQUAL:
				printf("%s\n", "TOKEN_GREATER_EQUAL");
				break;
			case TOKEN_AND:
				printf("%s\n", "TOKEN_AND");
				break;
			case TOKEN_OR:
				printf("%s\n", "TOKEN_OR");
				break;
			case TOKEN_SUBTRACT:
				printf("%s\n", "TOKEN_SUBTRACT");
				break;
			case TOKEN_ADD:
				printf("%s\n", "TOKEN_ADD");
				break;
			case TOKEN_MULTIPLY:
				printf("%s\n", "TOKEN_MULTIPLY");
				break;
			case TOKEN_DIVIDE:
				printf("%s\n", "TOKEN_DIVIDE");
				break;
			case TOKEN_ASSIGNMENT:
				printf("%s\n", "TOKEN_ASSIGNMENT");
				break;
			case TOKEN_LESS:
				printf("%s\n", "TOKEN_LESS");
				break;
			case TOKEN_GREATER:
				printf("%s\n", "TOKEN_GREATER");
				break;
			case TOKEN_NOT:
				printf("%s\n", "TOKEN_NOT");
				break;
			case TOKEN_AT_SIGN:
				printf("%s\n", "TOKEN_AT_SIGN");
				break;
			case TOKEN_COMMA:
				printf("%s\n", "TOKEN_COMMA");
				break;
			case TOKEN_COLON:
				printf("%s\n", "TOKEN_COLON");
				break;
			case TOKEN_SEMICOLON:
				printf("%s\n", "TOKEN_SEMICOLON");
				break;
			default:
				printf("%s\n", "UNKNOWN_TOKEN");
				break;
		}

	} while(1==1);

	return 0;
}
