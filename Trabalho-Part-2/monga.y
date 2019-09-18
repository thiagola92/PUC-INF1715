%{
	// Nome: Thiago Lages de Alencar
	// Matricula: 1721629

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

%right TOKEN_NEW

%left TOKEN_WORD_BOOL
%left TOKEN_WORD_CHAR
%left TOKEN_WORD_INT
%left TOKEN_WORD_FLOAT

%left TOKEN_IF
%left TOKEN_ELSE

%left TOKEN_WHILE

%left TOKEN_AS

%left TOKEN_RETURN

%left TOKEN_OPEN_PARENTHESES
%left TOKEN_CLOSE_PARENTHESES
%left TOKEN_OPEN_BRACKETS
%left TOKEN_CLOSE_BRACKETS
%left TOKEN_OPEN_BRACES
%left TOKEN_CLOSE_BRACES

%left TOKEN_EQUAL
%left TOKEN_NOT_EQUAL
%left TOKEN_LESS_EQUAL
%left TOKEN_GREATER_EQUAL

%left TOKEN_AND
%left TOKEN_OR

%left TOKEN_SUBTRACT
%left TOKEN_ADD
%left TOKEN_MULTIPLY
%left TOKEN_DIVIDE
%left TOKEN_ASSIGNMENT
%left TOKEN_LESS
%left TOKEN_GREATER
%left TOKEN_NOT

%left TOKEN_AT_SIGN
%left TOKEN_COMMA
%left TOKEN_COLON
%left TOKEN_SEMICOLON

%%

program:	/*empty*/		{ ; }
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

define_function:	TOKEN_IDENTIFIER TOKEN_OPEN_PARENTHESES parameters TOKEN_CLOSE_PARENTHESES TOKEN_COLON variable_type block	{ ; }
			| TOKEN_IDENTIFIER TOKEN_OPEN_PARENTHESES parameters TOKEN_CLOSE_PARENTHESES block				{ ; }
			| TOKEN_IDENTIFIER TOKEN_OPEN_PARENTHESES TOKEN_CLOSE_PARENTHESES TOKEN_COLON variable_type block		{ ; }
			| TOKEN_IDENTIFIER TOKEN_OPEN_PARENTHESES TOKEN_CLOSE_PARENTHESES block						{ ; }
			;

parameters:		parameter						{ ; }
			| parameters TOKEN_COMMA parameter			{ ; }
			;

parameter:	TOKEN_IDENTIFIER TOKEN_COLON variable_type	{ ; }
		;

block:		TOKEN_OPEN_BRACES define_variables commands TOKEN_CLOSE_BRACES 	{ ; }
		| TOKEN_OPEN_BRACES define_variables TOKEN_CLOSE_BRACES 	{ ; }
		| TOKEN_OPEN_BRACES commands TOKEN_CLOSE_BRACES 		{ ; }
		| TOKEN_OPEN_BRACES TOKEN_CLOSE_BRACES 				{ ; }
		;

define_variables:	define_variable				{ ; }
			| define_variables define_variable	{ ; }
			;

commands:	command			{ ; }
		| commands command	{ ; }
		;

command:	TOKEN_IF expression block					{ ; }
		| TOKEN_IF expression block TOKEN_ELSE block			{ ; }
		| TOKEN_WHILE expression block					{ ; }
		| variable TOKEN_ASSIGNMENT expression TOKEN_SEMICOLON		{ ; }
		| TOKEN_RETURN expression TOKEN_SEMICOLON			{ ; }
		| function_call TOKEN_SEMICOLON					{ ; }
		| TOKEN_AT_SIGN expression TOKEN_SEMICOLON			{ ; }
		| block								{ ; }
		;

variable:	TOKEN_IDENTIFIER							{ ; }
		| expression TOKEN_OPEN_BRACKETS expression TOKEN_CLOSE_BRACKETS	{ ; }
		;

expression:		TOKEN_TRUE									{ ; }
			| TOKEN_FALSE									{ ; }
			| TOKEN_CHARACTER								{ ; }
			| TOKEN_INTEGER									{ ; }
			| TOKEN_FLOAT									{ ; }
			| TOKEN_STRING									{ ; }
			| variable									{ ; }
			| TOKEN_OPEN_PARENTHESES expression TOKEN_CLOSE_PARENTHESES 			{ ; }
			| function_call									{ ; }
			| expression TOKEN_AS variable_type						{ ; }
			| TOKEN_NEW variable_type TOKEN_OPEN_BRACKETS expression TOKEN_CLOSE_BRACKETS	{ ; }
			| TOKEN_SUBTRACT expression							{ ; }
			| expression TOKEN_ADD expression						{ ; }
			| expression TOKEN_SUBTRACT expression						{ ; }
			| expression TOKEN_MULTIPLY expression						{ ; }
			| expression TOKEN_DIVIDE expression						{ ; }
			| expression TOKEN_EQUAL expression						{ ; }
			| expression TOKEN_NOT_EQUAL expression						{ ; }
			| expression TOKEN_LESS_EQUAL expression					{ ; }
			| expression TOKEN_GREATER_EQUAL expression					{ ; }
			| expression TOKEN_LESS expression						{ ; }
			| expression TOKEN_GREATER expression						{ ; }
			| TOKEN_NOT expression								{ ; }
			| expression TOKEN_AND expression						{ ; }
			| expression TOKEN_OR expression						{ ; }
			;

function_call:		TOKEN_IDENTIFIER TOKEN_OPEN_PARENTHESES expression_list TOKEN_CLOSE_PARENTHESES		{ ; }
			| TOKEN_IDENTIFIER TOKEN_OPEN_PARENTHESES TOKEN_CLOSE_PARENTHESES			{ ; }
			;

expression_list:	expression 					{ ; }
			| expression TOKEN_COMMA expression_list	{ ; }
			;

%%

