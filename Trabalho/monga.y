%{
	// Nome: Thiago Lages de Alencar
	// Matricula: 1721629

	#include"monga.h"
	
	Node __root__;
%}

%start program

%union {
	char c;
	int b;
	int i;
	float f;
	char* s;

	Node n;
}

%token <c> TOKEN_CHARACTER
%token <b> TOKEN_TRUE
%token <b> TOKEN_FALSE
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

%type<n> program

%type<n> define_list
%type<n> define
%type<n> define_variable

%type<n> variable_type

%type<n> define_function
%type<n> parameter_list
%type<n> parameter
%type<n> block

%type<n> variable_list
%type<n> command_list
%type<n> command

%type<n> variable
%type<n> function_call
%type<n> new_array

%type<n> expression_list
%type<n> expression

%type<n> expression_or
%type<n> expression_and

%type<n> expression_equal
%type<n> expression_not_equal
%type<n> expression_greater
%type<n> expression_greater_equal
%type<n> expression_less
%type<n> expression_less_equal

%type<n> expression_sub
%type<n> expression_add
%type<n> expression_div
%type<n> expression_mult

%type<n> expression_cast
%type<n> expression_negative
%type<n> expression_not
%type<n> expression_reference
%type<n> expression_scope

%type<n> expression_data

%%

program:	/*empty*/		{ __root__ = create_node_empty(); $$ = __root__; }
		| define_list		{ __root__ = $1; $$ = __root__; }
		;

define_list:	define_list define	{ $$ = create_node_define_list($1, $2); }
		| define		{ $$ = create_node_define($1); }
		;

define:		define_variable		{ $$ = $1; }
		| define_function	{ $$ = $1; }
		;

define_variable:	TOKEN_IDENTIFIER TOKEN_COLON variable_type TOKEN_SEMICOLON	{ $$ = create_node_define_variable($1, $3); }
			;

variable_type:	TOKEN_WORD_BOOL							{ $$ = create_node_variable_type_bool(); }
    		| TOKEN_WORD_CHAR						{ $$ = create_node_variable_type_char(); }
		| TOKEN_WORD_INT						{ $$ = create_node_variable_type_int(); }
		| TOKEN_WORD_FLOAT						{ $$ = create_node_variable_type_float(); }
		| TOKEN_OPEN_BRACKETS variable_type TOKEN_CLOSE_BRACKETS	{ $$ = create_node_variable_type_array($2); }
		;

define_function:	TOKEN_IDENTIFIER TOKEN_OPEN_PARENTHESES parameter_list TOKEN_CLOSE_PARENTHESES TOKEN_COLON variable_type block	{ $$ = create_node_define_function_double($1, $3, $6, $7); }
			| TOKEN_IDENTIFIER TOKEN_OPEN_PARENTHESES parameter_list TOKEN_CLOSE_PARENTHESES block				{ $$ = create_node_define_function_single($1, $3, $5); }
			| TOKEN_IDENTIFIER TOKEN_OPEN_PARENTHESES TOKEN_CLOSE_PARENTHESES TOKEN_COLON variable_type block		{ $$ = create_node_define_function_single($1, $5, $6); }
			| TOKEN_IDENTIFIER TOKEN_OPEN_PARENTHESES TOKEN_CLOSE_PARENTHESES block						{ $$ = create_node_define_function_empty($1, $4); }
			;

parameter_list:		parameter_list TOKEN_COMMA parameter			{ $$ = create_node_parameter_list($1, $3); }
			| parameter						{ $$ = $1; }
			;

parameter:	TOKEN_IDENTIFIER TOKEN_COLON variable_type	{ $$ = create_node_parameter($1, $3); }
		;

block:		TOKEN_OPEN_BRACES variable_list command_list TOKEN_CLOSE_BRACES 	{ $$ = create_node_block_double($2, $3); }
		| TOKEN_OPEN_BRACES variable_list TOKEN_CLOSE_BRACES 			{ $$ = create_node_block_single($2); }
		| TOKEN_OPEN_BRACES command_list TOKEN_CLOSE_BRACES 			{ $$ = create_node_block_single($2); }
		| TOKEN_OPEN_BRACES TOKEN_CLOSE_BRACES 					{ $$ = create_node_block_empty(); }
		;

variable_list:		variable_list define_variable		{ $$ = create_node_variable_list($1, $2); }
			| define_variable			{ $$ = $1; }
			;

command_list:	command_list command	{ $$ = create_node_command_list($1, $2); }
		| command		{ $$ = $1; }
		;

command:	TOKEN_IF expression block					{ $$ = create_node_if($2, $3); }
		| TOKEN_IF expression block TOKEN_ELSE block			{ $$ = create_node_if_else($2, $3, $5); }
		| TOKEN_WHILE expression block					{ $$ = create_node_while($2, $3); }
		| variable TOKEN_ASSIGNMENT expression TOKEN_SEMICOLON		{ $$ = create_node_assignment($1, $3); }
		| TOKEN_RETURN expression TOKEN_SEMICOLON			{ $$ = create_node_return($2); }
		| TOKEN_AT_SIGN expression TOKEN_SEMICOLON			{ $$ = create_node_print($2); }
		| function_call TOKEN_SEMICOLON					{ $$ = $1; }
		| block								{ $$ = $1; }
		;

variable:	expression_reference TOKEN_OPEN_BRACKETS expression TOKEN_CLOSE_BRACKETS	{ $$ = create_node_variable_array($1, $3); }
		| TOKEN_IDENTIFIER								{ $$ = create_node_variable_simple($1); }
		;

function_call:		TOKEN_IDENTIFIER TOKEN_OPEN_PARENTHESES expression_list TOKEN_CLOSE_PARENTHESES	{ $$ = create_node_function_call_with_parameters($1, $3); }
			| TOKEN_IDENTIFIER TOKEN_OPEN_PARENTHESES TOKEN_CLOSE_PARENTHESES		{ $$ = create_node_function_call_empty($1); }
			;

new_array:	TOKEN_NEW variable_type TOKEN_OPEN_BRACKETS expression TOKEN_CLOSE_BRACKETS	{ $$ = create_node_new_array($2, $4); }
		;

expression_list:	expression TOKEN_COMMA expression_list	{ $$ = create_node_expression_list($1, $3); }
			| expression 				{ $$ = $1; }
			;

expression:		expression_or	{ $$ = $1; }
			;

expression_or:		expression_or TOKEN_OR expression_and	{ $$ = create_node_expression_or($1, $3); }
			| expression_and			{ $$ = $1; }
			;

expression_and:		expression_and TOKEN_AND expression_equal	{ $$ = create_node_expression_and($1, $3); }
			| expression_equal				{ $$ = $1; }
			;

expression_equal:	expression_equal TOKEN_EQUAL expression_not_equal	{ $$ = create_node_expression_equal($1, $3); }
			| expression_not_equal					{ $$ = $1; }
			;

expression_not_equal:	expression_not_equal TOKEN_NOT_EQUAL expression_greater		{ $$ = create_node_expression_not_equal($1, $3); }
			| expression_greater						{ $$ = $1; }
			;

expression_greater:	expression_greater TOKEN_GREATER expression_greater_equal	{ $$ = create_node_expression_greater($1, $3); }
			| expression_greater_equal					{ $$ = $1; }
			;

expression_greater_equal:	expression_greater_equal TOKEN_GREATER_EQUAL expression_less	{ $$ = create_node_expression_greater_equal($1, $3); }
				| expression_less						{ $$ = $1; }
				;

expression_less: 	expression_less TOKEN_LESS expression_less_equal	{ $$ = create_node_expression_less($1, $3); }
			| expression_less_equal					{ $$ = $1; }
			;

expression_less_equal: 	expression_less_equal TOKEN_LESS_EQUAL expression_sub	{ $$ = create_node_expression_less_equal($1, $3); }
			| expression_sub					{ $$ = $1; }
			;

expression_sub:		expression_sub TOKEN_SUBTRACT expression_add	{ $$ = create_node_expression_sub($1, $3); }
			| expression_add				{ $$ = $1; }
			;

expression_add:		expression_add TOKEN_ADD expression_div		{ $$ = create_node_expression_add($1, $3); }
			| expression_div				{ $$ = $1; }
			;

expression_div:		expression_div TOKEN_DIVIDE expression_mult		{ $$ = create_node_expression_div($1, $3); }
			| expression_mult					{ $$ = $1; }
			;

expression_mult:	expression_mult TOKEN_MULTIPLY expression_cast		{ $$ = create_node_expression_mult($1, $3); }
			| expression_cast					{ $$ = $1; }
			;

expression_cast:	expression_cast TOKEN_AS variable_type	{ $$ = create_node_expression_cast($1, $3); }
			| expression_negative			{ $$ = $1; }
			;

expression_negative:	TOKEN_SUBTRACT expression_negative	{ $$ = create_node_expression_negative($2); }
			| expression_not			{ $$ = $1; }
			;

expression_not:		TOKEN_NOT expression_not		{ $$ = create_node_expression_not($2); }
			| expression_reference			{ $$ = $1; }
			;

expression_reference:	variable			{ $$ = create_node_expression_reference($1); }
			| function_call			{ $$ = create_node_expression_reference($1); }
			| new_array			{ $$ = create_node_expression_reference($1); }
			| expression_scope		{ $$ = create_node_expression_reference($1); }
			;

expression_scope:	TOKEN_OPEN_PARENTHESES expression TOKEN_CLOSE_PARENTHESES	{ create_node_expression_scope($2); }
			| expression_data						{ $$ = $1; }
			;

expression_data: 	TOKEN_TRUE			{ $$ = create_node_bool(1); }
			| TOKEN_FALSE			{ $$ = create_node_bool(0); }
			| TOKEN_CHARACTER		{ $$ = create_node_char($1); }
			| TOKEN_INTEGER			{ $$ = create_node_int($1); }
			| TOKEN_FLOAT			{ $$ = create_node_float($1); }
			| TOKEN_STRING			{ $$ = create_node_string($1); }
			;

%%

