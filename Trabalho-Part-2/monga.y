%{
	#include"monga.h"
%}

%start program

%union {
	char c;
	int i;
	float f;
	char* s;
}

%token <i> TOKEN_TRUE
%token <i> TOKEN_FALSE
%token <c> TOKEN_CHARACTER
%token <i> TOKEN_INTEGER
%token <f> TOKEN_FLOAT
%token <s> TOKEN_STRING
%token <s> TOKEN_IDENTIFIER

%token TOKEN_NEW

%token TOKEN_WORD_BOOL
%token TOKEN_WORD_CHAR
%token TOKEN_WORD_INT
%token TOKEN_WORD_FLOAT

%token TOKEN_IF
%token TOKEN_ELSE

%token TOKEN_WHILE

%token TOKEN_AS

%token TOKEN_RETURN

%token TOKEN_OPEN_PARENTHESES
%token TOKEN_CLOSE_PARENTHESES
%token TOKEN_OPEN_BRACKETS
%token TOKEN_CLOSE_BRACKETS
%token TOKEN_OPEN_BRACES
%token TOKEN_CLOSE_BRACES

%token TOKEN_EQUAL
%token TOKEN_NOT_EQUAL
%token TOKEN_LESS_EQUAL
%token TOKEN_GREATER_EQUAL
%token TOKEN_AND
%token TOKEN_OR

%token TOKEN_SUBTRACT
%token TOKEN_ADD
%token TOKEN_MULTIPLY
%token TOKEN_DIVIDE
%token TOKEN_ASSIGNMENT
%token TOKEN_LESS
%token TOKEN_GREATER
%token TOKEN_NOT

%token TOKEN_AT_SIGN
%token TOKEN_COMMA
%token TOKEN_COLON
%token TOKEN_SEMICOLON

%%

program:	define_variables	{ printf("program\n"); }
		;

define_variables:	define_variable				{ printf("define_variable\n"); }
			| define_variable define_variables 	{ printf("define_variable define_variables\n"); }
			| 					{ printf("---\n"); }
			;

define_variable:	TOKEN_IDENTIFIER TOKEN_COLON type TOKEN_SEMICOLON	{ printf("define_variable\n"); }
			;

type:	TOKEN_WORD_BOOL					{ printf("TOKEN_WORD_BOOL\n"); }
    	| TOKEN_WORD_CHAR				{ printf("TOKEN_WORD_CHAR\n"); }
	| TOKEN_WORD_INT				{ printf("TOKEN_WORD_INT\n"); }
	| TOKEN_WORD_FLOAT				{ printf("TOKEN_WORD_FLOAT\n"); }
	| TOKEN_OPEN_BRACKETS type TOKEN_CLOSE_BRACKETS	{ printf("ARRAY\n"); }
	;

%%
