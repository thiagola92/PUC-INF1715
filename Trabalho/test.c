// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#include"test.h"

void print_tree(Node* node, int tabs) {
	printf("\n");

	for(int i = 0; i < tabs; i++)
		printf("    ");

	switch(node->tag) {
		case EMPTY:
			printf("EMPTY");
			break;
		case DEFINE:
			printf("DEFINE");
			break;
		case DEFINE_LIST:
			printf("DEFINE_LIST");
			break;
		case DEFINE_VARIABLE:
			printf("DEFINE_VARIABLE");
			break;
		case TYPE_BOOL:
			printf("TYPE_BOOL");
			break;
		case TYPE_CHAR:
			printf("TYPE_CHAR");
			break;
		case TYPE_INT:
			printf("TYPE_INT");
			break;
		case TYPE_FLOAT:
			printf("TYPE_FLOAT");
			break;
		case TYPE_ARRAY:
			printf("TYPE_ARRAY");
			break;
		case DEFINE_FUNCTION:
			printf("DEFINE_FUNCTION");
			break;
		case PARAMETER_LIST:
			printf("PARAMETER_LIST");
			break;
		case PARAMETER:
			printf("PARAMETER");
			break;
		case COMMAND_LIST:
			printf("COMMAND_LIST");
			break;
		case VARIABLE_LIST:
			printf("VARIABLE_LIST");
			break;
		case BLOCK:
			printf("BLOCK");
			break;
		case IF:
			printf("IF");
			break;
		case WHILE:
			printf("WHILE");
			break;
		case ASSIGNMENT:
			printf("ASSIGNMENT");
			break;
		case RETURN:
			printf("RETURN");
			break;
		case PRINT:
			printf("PRINT");
			break;
		case VARIABLE:
			printf("VARIABLE");
			break;
		case FUNCTION_CALL:
			printf("FUNCTION_CALL");
			break;
		case NEW_ARRAY:
			printf("NEW_ARRAY");
			break;
		case EXPRESSION_LIST:
			printf("EXPRESSION_LIST");
			break;
		case EXPRESSION_OR:
			printf("EXPRESSION_OR");
			break;
		case EXPRESSION_AND:
			printf("EXPRESSION_AND");
			break;
		case EXPRESSION_EQUAL:
			printf("EXPRESSION_EQUAL");
			break;
		case EXPRESSION_NOT_EQUAL:
			printf("EXPRESSION_NOT_EQUAL");
			break;
		case EXPRESSION_GREATER:
			printf("EXPRESSION_GREATER");
			break;
		case EXPRESSION_GREATER_EQUAL:
			printf("EXPRESSION_GREATER_EQUAL");
			break;
		case EXPRESSION_LESS:
			printf("EXPRESSION_LESS");
			break;
		case EXPRESSION_LESS_EQUAL:
			printf("EXPRESSION_LESS_EQUAL");
			break;
		case EXPRESSION_SUB:
			printf("EXPRESSION_SUB");
			break;
		case EXPRESSION_ADD:
			printf("EXPRESSION_ADD");
			break;
		case EXPRESSION_DIV:
			printf("EXPRESSION_DIV");
			break;
		case EXPRESSION_MULT:
			printf("EXPRESSION_MULT");
			break;
		case EXPRESSION_CAST:
			printf("EXPRESSION_CAST");
			break;
		case EXPRESSION_NEGATIVE:
			printf("EXPRESSION_NEGATIVE");
			break;
		case EXPRESSION_NOT:
			printf("EXPRESSION_NOT");
			break;
		case DATA_BOOLEAN:
			printf("DATA_BOOLEAN");
			break;
		case DATA_CHARACTER:
			printf("DATA_CHARACTER");
			break;
		case DATA_INTEGER:
			printf("DATA_INTEGER");
			break;
		case DATA_FLOAT:
			printf("DATA_FLOAT");
			break;
		case DATA_STRING:
			printf("DATA_STRING");
			break;
		default:
			printf("UNKNOWN");
			break;
	}

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
