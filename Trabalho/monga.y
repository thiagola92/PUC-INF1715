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

	struct Node* n;
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

variable:	TOKEN_IDENTIFIER								{ ; }
		| expression_reference TOKEN_OPEN_BRACKETS expression TOKEN_CLOSE_BRACKETS	{ ; }
		;

function_call:		TOKEN_IDENTIFIER TOKEN_OPEN_PARENTHESES expression_list TOKEN_CLOSE_PARENTHESES	{ ; }
			| TOKEN_IDENTIFIER TOKEN_OPEN_PARENTHESES TOKEN_CLOSE_PARENTHESES		{ ; }
			;

new_array:	TOKEN_NEW variable_type TOKEN_OPEN_BRACKETS expression TOKEN_CLOSE_BRACKETS	{ ; }
		;

expression_list:	expression 					{ ; }
			| expression TOKEN_COMMA expression_list	{ ; }
			;

expression:		expression_or	{ ; }
			;

expression_or:		expression_or TOKEN_OR expression_and	{ ; }
			| expression_and			{ ; }
			;

expression_and:		expression_and TOKEN_AND expression_equal	{ ; }
			| expression_equal				{ ; }
			;

expression_equal:	expression_equal TOKEN_EQUAL expression_not_equal	{ ; }
			| expression_not_equal					{ ; }
			;

expression_not_equal:	expression_not_equal TOKEN_NOT_EQUAL expression_greater		{ ; }
			| expression_greater						{ ; }
			;

expression_greater:	expression_greater TOKEN_GREATER expression_greater_equal	{ ; }
			| expression_greater_equal					{ ; }
			;

expression_greater_equal:	expression_greater_equal TOKEN_GREATER_EQUAL expression_less	{ ; }
				| expression_less						{ ; }
				;

expression_less: 	expression_less TOKEN_LESS expression_less_equal	{ ; }
			| expression_less_equal					{ ; }
			;

expression_less_equal: 	expression_less_equal TOKEN_LESS_EQUAL expression_sub	{ ; }
			| expression_sub					{ ; }
			;

expression_sub:		expression_sub TOKEN_SUBTRACT expression_add	{ ; }
			| expression_add				{ ; }
			;

expression_add:		expression_add TOKEN_ADD expression_div		{ ; }
			| expression_div				{ ; }
			;

expression_div:		expression_div TOKEN_DIVIDE expression_mult		{ ; }
			| expression_mult					{ ; }
			;

expression_mult:	expression_mult TOKEN_MULTIPLY expression_cast		{ ; }
			| expression_cast					{ ; }
			;

expression_cast:	expression_cast TOKEN_AS variable_type	{ ; }
			| expression_negative			{ ; }
			;

expression_negative:	TOKEN_SUBTRACT expression_negative	{ ; }
			| expression_not			{ ; }
			;

expression_not:		TOKEN_NOT expression_not		{ ; }
			| expression_reference			{ ; }
			;

expression_reference:	variable			{ ; }
			| function_call			{ ; }
			| new_array			{ ; }
			| expression_scope		{ ; }
			;

expression_scope:	TOKEN_OPEN_PARENTHESES expression TOKEN_CLOSE_PARENTHESES	{ ; }
			| expression_data						{ ; }
			;

expression_data: 	TOKEN_TRUE			{ ; }
			| TOKEN_FALSE			{ ; }
			| TOKEN_CHARACTER		{ ; }
			| TOKEN_INTEGER			{ ; }
			| TOKEN_FLOAT			{ ; }
			| TOKEN_STRING			{ ; }
			;

%%

