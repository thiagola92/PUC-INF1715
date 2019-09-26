// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#include<stdio.h>
#include<stdlib.h>
#include<string.h>

#include"test.h"

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
