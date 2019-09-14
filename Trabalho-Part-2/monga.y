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

program:				{ ; }
		| define program	{ ; }
		;

define:		define_variable		{ ; }
		| define_function
		;

define_variable:	TOKEN_IDENTIFIER TOKEN_COLON variable_type TOKEN_SEMICOLON	{ ; }
			;

variable_type:	TOKEN_WORD_BOOL							{ ; }
    		| TOKEN_WORD_CHAR						{ ; }
		| TOKEN_WORD_INT						{ ; }
		| TOKEN_WORD_FLOAT						{ ; }
		| TOKEN_OPEN_BRACKETS variable_type TOKEN_CLOSE_BRACKETS	{ ; }
		;

define_function:	TOKEN_IDENTIFIER TOKEN_OPEN_PARENTHESES parameters TOKEN_CLOSE_PARENTHESES return_type block	{ ; }
			;

parameters:							{ ; }
			| parameter TOKEN_COMMA parameters	{ ; }
			| parameter				{ ; }
			;

parameter:	TOKEN_IDENTIFIER TOKEN_COLON variable_type	{ ; }
		;

return_type: 						{ ; }
			| TOKEN_COLON variable_type	{ ; }
			;

block:		TOKEN_OPEN_BRACES define_variables commands TOKEN_CLOSE_BRACES 	{ ; }
		| TOKEN_OPEN_BRACES define_variables TOKEN_CLOSE_BRACES 	{ ; }
		| TOKEN_OPEN_BRACES commands TOKEN_CLOSE_BRACES 		{ ; }
		| TOKEN_OPEN_BRACES TOKEN_CLOSE_BRACES 				{ ; }
		;

define_variables:	define_variable			{ ; }
			| define_variable define_variables	{ ; }
			;

commands:	command			{ ; }
		| command commands	{ ; }
		;

command:	 return_command				{ ; }
		| function_call TOKEN_SEMICOLON		{ ; }
		;

return_command:		TOKEN_RETURN expression TOKEN_SEMICOLON		{ ; }
			;

function_call:		TOKEN_IDENTIFIER TOKEN_OPEN_PARENTHESES expression_list TOKEN_CLOSE_PARENTHESES		{ ; }
			| TOKEN_IDENTIFIER TOKEN_OPEN_PARENTHESES TOKEN_CLOSE_PARENTHESES			{ ; }
			;

expression_list:	expression 					{ ; }
			| expression TOKEN_COMMA expression_list	{ ; }
			;

expression:		TOKEN_TRUE		{ ; }
			| TOKEN_FALSE		{ ; }
			| variable		{ ; }
			;

variable:	TOKEN_IDENTIFIER							{ ; }
		| expression TOKEN_OPEN_BRACKETS expression TOKEN_CLOSE_BRACKETS	{ ; }
		;

%%
