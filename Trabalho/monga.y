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

%token TOKEN_NEW

%token TOKEN_WORD_BOOL
%token TOKEN_WORD_CHAR
%token TOKEN_WORD_INT
%token TOKEN_WORD_FLOAT

%token TOKEN_IF
%token TOKEN_ELSE

%token TOKEN_WHILE

%token TOKEN_RETURN

%token TOKEN_AT_SIGN
%token TOKEN_COLON
%token TOKEN_SEMICOLON

// Order of operations, from less important to more important

%left TOKEN_COMMA
%right TOKEN_ASSIGNMENT
%left TOKEN_OR
%left TOKEN_AND
%left TOKEN_EQUAL TOKEN_NOT_EQUAL
%left TOKEN_LESS TOKEN_LESS_EQUAL TOKEN_GREATER  TOKEN_GREATER_EQUAL
%left TOKEN_ADD TOKEN_SUBTRACT
%left TOKEN_MULTIPLY TOKEN_DIVIDE
%right TOKEN_NOT NEGATIVE_NUMBER
%right TOKEN_AS TOKEN_OPEN_PARENTHESES TOKEN_CLOSE_PARENTHESES TOKEN_OPEN_BRACKETS TOKEN_CLOSE_BRACKETS TOKEN_OPEN_BRACES TOKEN_CLOSE_BRACES

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
			| function_call									{ ; }
			| priority_1									{ ; }
			| priority_2									{ ; }
			| priority_3									{ ; }
			| priority_4									{ ; }
			| priority_6									{ ; }
			| priority_7									{ ; }
			| priority_11									{ ; }
			| priority_12									{ ; }
			;

priority_1:		TOKEN_OPEN_PARENTHESES expression TOKEN_CLOSE_PARENTHESES 			{ ; }
			| TOKEN_NEW variable_type TOKEN_OPEN_BRACKETS expression TOKEN_CLOSE_BRACKETS	{ ; }
			;

priority_2:		expression TOKEN_AS variable_type						{ ; }
			| TOKEN_SUBTRACT expression %prec NEGATIVE_NUMBER				{ ; }
			| TOKEN_NOT expression								{ ; }
			;

priority_3:		
			expression TOKEN_MULTIPLY expression						{ ; }
			| expression TOKEN_DIVIDE expression						{ ; }
			;

priority_4:		expression TOKEN_ADD expression							{ ; }
			| expression TOKEN_SUBTRACT expression						{ ; }
			;

priority_6:		expression TOKEN_LESS expression						{ ; }
			| expression TOKEN_LESS_EQUAL expression					{ ; }
			| expression TOKEN_GREATER expression						{ ; }
			| expression TOKEN_GREATER_EQUAL expression					{ ; }
			;

priority_7:		expression TOKEN_EQUAL expression						{ ; }
			| expression TOKEN_NOT_EQUAL expression						{ ; }
			;

priority_11:		expression TOKEN_AND expression						{ ; }
			;

priority_12:		expression TOKEN_OR expression						{ ; }
			;

function_call:		TOKEN_IDENTIFIER TOKEN_OPEN_PARENTHESES expression_list TOKEN_CLOSE_PARENTHESES		{ ; }
			| TOKEN_IDENTIFIER TOKEN_OPEN_PARENTHESES TOKEN_CLOSE_PARENTHESES			{ ; }
			;

expression_list:	expression 					{ ; }
			| expression TOKEN_COMMA expression_list	{ ; }
			;

%%

