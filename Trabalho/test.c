// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#include"test.h"

void print_tree(Node node, int tabs) {
	printf("\n");

	for(int i = 0; i < tabs; i++)
		printf("    ");

	if(node.tag == EMPTY)
		printf("EMPTY");
	else if(node.tag == DEFINE)
		printf("DEFINE");
	else if(node.tag == DEFINE_LIST)
		printf("DEFINE_LIST");
	else if(node.tag == DEFINE_VARIABLE)
		printf("DEFINE_VARIABLE");
	else if(node.tag == TYPE_BOOL)
		printf("TYPE_BOOL");
	else if(node.tag == TYPE_CHAR)
		printf("TYPE_CHAR");
	else if(node.tag == TYPE_INT)
		printf("TYPE_INT");
	else if(node.tag == TYPE_FLOAT)
		printf("TYPE_FLOAT");
	else if(node.tag == TYPE_ARRAY)
		printf("TYPE_ARRAY");
	else if(node.tag == DEFINE_FUNCTION)
		printf("DEFINE_FUNCTION");
	else if(node.tag == PARAMETER_LIST)
		printf("PARAMETER_LIST");
	else if(node.tag == PARAMETER)
		printf("PARAMETER");
	else if(node.tag == COMMAND_LIST)
		printf("COMMAND_LIST");
	else if(node.tag == VARIABLE_LIST)
		printf("VARIABLE_LIST");
	else if(node.tag == BLOCK)
		printf("BLOCK");
	else if(node.tag == IF)
		printf("IF");
	else if(node.tag == WHILE)
		printf("WHILE\n");
	else if(node.tag == ASSIGNMENT)
		printf("ASSIGNMENT");
	else if(node.tag == RETURN)
		printf("RETURN");
	else if(node.tag == PRINT)
		printf("PRINT");
	else if(node.tag == VARIABLE)
		printf("VARIABLE");
	else if(node.tag == FUNCTION_CALL)
		printf("FUNCTION_CALL");
	else if(node.tag == NEW_ARRAY)
		printf("NEW_ARRAY");
	else if(node.tag == EXPRESSION_LIST)
		printf("EXPRESSION_LIST");
	else if(node.tag == EXPRESSION_OR)
		printf("EXPRESSION_OR");
	else if(node.tag == EXPRESSION_AND)
		printf("EXPRESSION_AND");
	else if(node.tag == EXPRESSION_EQUAL)
		printf("EXPRESSION_EQUAL");
	else if(node.tag == EXPRESSION_NOT_EQUAL)
		printf("EXPRESSION_NOT_EQUAL");
	else if(node.tag == EXPRESSION_GREATER)
		printf("EXPRESSION_GREATER");
	else if(node.tag == EXPRESSION_GREATER_EQUAL)
		printf("EXPRESSION_GREATER_EQUAL");
	else if(node.tag == EXPRESSION_LESS)
		printf("EXPRESSION_LESS");
	else if(node.tag == EXPRESSION_LESS_EQUAL)
		printf("EXPRESSION_LESS_EQUAL");
	else if(node.tag == EXPRESSION_SUB)
		printf("EXPRESSION_SUB");
	else if(node.tag == EXPRESSION_ADD)
		printf("EXPRESSION_ADD");
	else if(node.tag == EXPRESSION_DIV)
		printf("EXPRESSION_DIV");
	else if(node.tag == EXPRESSION_MULT)
		printf("EXPRESSION_MULT");
	else if(node.tag == EXPRESSION_CAST)
		printf("EXPRESSION_CAST");
	else if(node.tag == EXPRESSION_NEGATIVE)
		printf("EXPRESSION_NEGATIVE");
	else if(node.tag == EXPRESSION_NOT)
		printf("EXPRESSION_NOT");
	else if(node.tag == EXPRESSION_REFERENCE)
		printf("EXPRESSION_REFERENCE");
	else if(node.tag == EXPRESSION_SCOPE)
		printf("EXPRESSION_SCOPE");
	else if(node.tag == DATA_BOOLEAN)
		printf("DATA_BOOLEAN");
	else if(node.tag == DATA_CHARACTER)
		printf("DATA_CHARACTER");
	else if(node.tag == DATA_INTEGER)
		printf("DATA_INTEGER");
	else if(node.tag == DATA_FLOAT)
		printf("DATA_FLOAT");
	else if(node.tag == DATA_STRING)
		printf("DATA_STRING");
	else 
		printf("UNKNOWN");

	if(node.number_of_childs > 0)
		printf(" - childrens: %d", node.number_of_childs);

	if(node.tag == DATA_BOOLEAN)
		printf(" - content: %d", node.content.b);
	else if(node.tag == DATA_CHARACTER)
		printf(" - content: %c", node.content.c);
	else if(node.tag == DATA_INTEGER)
		printf(" - content: %d", node.content.i);
	else if(node.tag == DATA_FLOAT)
		printf(" - content: %f", node.content.f);
	else if(node.tag == DATA_STRING)
		printf(" - content: %s", node.content.s);
	else {
		for(int i = 0; i < node.number_of_childs; i++)
			print_tree(node.content.n[i], tabs+1);
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
		else if(token == TOKEN_CHARACTER)
			printf("%s\t%c\n", "TOKEN_CHARACTER", yylval.c);
		else if(token == TOKEN_TRUE)
			printf("%s\t%d\n", "TOKEN_TRUE", yylval.b);
		else if(token == TOKEN_FALSE)
			printf("%s\t%d\n", "TOKEN_FALSE", yylval.b);
		else if(token == TOKEN_INTEGER)
			printf("%s\t%d\n", "TOKEN_INTEGER", yylval.i);
		else if(token == TOKEN_FLOAT)
			printf("%s\t%f\n", "TOKEN_FLOAT", yylval.f);
		else if(token == TOKEN_STRING)
			printf("%s\t%s\n", "TOKEN_STRING", yylval.s);
		else if(token == TOKEN_IDENTIFIER)
			printf("%s\t%s\n", "TOKEN_IDENTIFIER", yylval.s);
		else if(token == TOKEN_NEW)
			printf("%s\n", "TOKEN_NEW");
		else if(token == TOKEN_WORD_BOOL)
			printf("%s\n", "TOKEN_WORD_BOOL");
		else if(token == TOKEN_WORD_CHAR)
			printf("%s\n", "TOKEN_WORD_CHAR");
		else if(token == TOKEN_WORD_INT)
			printf("%s\n", "TOKEN_WORD_INT");
		else if(token == TOKEN_WORD_FLOAT)
			printf("%s\n", "TOKEN_WORD_FLOAT");
		else if(token == TOKEN_IF)
			printf("%s\n", "TOKEN_IF");
		else if(token == TOKEN_ELSE)
			printf("%s\n", "TOKEN_ELSE");
		else if(token == TOKEN_WHILE)
			printf("%s\n", "TOKEN_WHILE");
		else if(token == TOKEN_AS)
			printf("%s\n", "TOKEN_AS");
		else if(token == TOKEN_RETURN)
			printf("%s\n", "TOKEN_RETURN");
		else if(token == TOKEN_OPEN_PARENTHESES)
			printf("%s\n", "TOKEN_OPEN_PARENTHESES");
		else if(token == TOKEN_CLOSE_PARENTHESES)
			printf("%s\n", "TOKEN_CLOSE_PARENTHESES");
		else if(token == TOKEN_OPEN_BRACKETS)
			printf("%s\n", "TOKEN_OPEN_BRACKETS");
		else if(token == TOKEN_CLOSE_BRACKETS)
			printf("%s\n", "TOKEN_CLOSE_BRACKETS");
		else if(token == TOKEN_OPEN_BRACES)
			printf("%s\n", "TOKEN_OPEN_BRACES");
		else if(token == TOKEN_CLOSE_BRACES)
			printf("%s\n", "TOKEN_CLOSE_BRACES");
		else if(token == TOKEN_EQUAL)
			printf("%s\n", "TOKEN_EQUAL");
		else if(token == TOKEN_NOT_EQUAL)
			printf("%s\n", "TOKEN_NOT_EQUAL");
		else if(token == TOKEN_LESS_EQUAL)
			printf("%s\n", "TOKEN_LESS_EQUAL");
		else if(token == TOKEN_GREATER_EQUAL)
			printf("%s\n", "TOKEN_GREATER_EQUAL");
		else if(token == TOKEN_AND)
			printf("%s\n", "TOKEN_AND");
		else if(token == TOKEN_OR)
			printf("%s\n", "TOKEN_OR");
		else if(token == TOKEN_SUBTRACT)
			printf("%s\n", "TOKEN_SUBTRACT");
		else if(token == TOKEN_ADD)
			printf("%s\n", "TOKEN_ADD");
		else if(token == TOKEN_MULTIPLY)
			printf("%s\n", "TOKEN_MULTIPLY");
		else if(token == TOKEN_DIVIDE)
			printf("%s\n", "TOKEN_DIVIDE");
		else if(token == TOKEN_ASSIGNMENT)
			printf("%s\n", "TOKEN_ASSIGNMENT");
		else if(token == TOKEN_LESS)
			printf("%s\n", "TOKEN_LESS");
		else if(token == TOKEN_GREATER)
			printf("%s\n", "TOKEN_GREATER");
		else if(token == TOKEN_NOT)
			printf("%s\n", "TOKEN_NOT");
		else if(token == TOKEN_AT_SIGN)
			printf("%s\n", "TOKEN_AT_SIGN");
		else if(token == TOKEN_COMMA)
			printf("%s\n", "TOKEN_COMMA");
		else if(token == TOKEN_COLON)
			printf("%s\n", "TOKEN_COLON");
		else if(token == TOKEN_SEMICOLON)
			printf("%s\n", "TOKEN_SEMICOLON");
		else
			printf("%s\n", "UNKNOWN_TOKEN");

	} while(1==1);

	return 0;
}
