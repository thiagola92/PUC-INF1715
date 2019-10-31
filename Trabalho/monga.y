%{
  // Nome: Thiago Lages de Alencar
  // Matricula: 1721629

  #include"monga.h"
  
  Node* __root__;
%}

%start program

%union {
  int i;
  float f;
  char* s;
  
  Node* n;
}

%token <i> TOKEN_CHARACTER
%token <i> TOKEN_TRUE
%token <i> TOKEN_FALSE
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
%type<n> identifier
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

%type<n> expression_and_or

%type<n> expression_equal_not_equal
%type<n> expression_greater_less_equal
%type<n> expression_add_sub
%type<n> expression_mult_div

%type<n> expression_cast
%type<n> expression_negative
%type<n> expression_not
%type<n> expression_reference
%type<n> expression_scope

%type<n> expression_data

%%

program: /*empty*/ { __root__ = create_node(EMPTY, 0); $$ = __root__; }
         | define_list  { __root__ = $1; $$ = __root__; }
         ;

define_list: define_list define { $$ = create_node(DEFINE_LIST, 2, $1, $2); }
             | define { $$ = $1; }
             ;

define: define_variable  { $$ = $1; }
        | define_function  { $$ = $1; }
        ;

define_variable: identifier TOKEN_COLON variable_type TOKEN_SEMICOLON { $$ = create_node(DEFINE_VARIABLE, 2, $1, $3); }
                 ;

identifier: TOKEN_IDENTIFIER { $$ = create_node_string(IDENTIFIER, $1); }
            ;

variable_type: TOKEN_WORD_BOOL  { $$ = create_node(TYPE_BOOLEAN, 0); }
               | TOKEN_WORD_CHAR  { $$ = create_node(TYPE_CHARACTER, 0); }
               | TOKEN_WORD_INT { $$ = create_node(TYPE_INTEGER, 0); }
               | TOKEN_WORD_FLOAT { $$ = create_node(TYPE_FLOAT, 0); }
               | TOKEN_OPEN_BRACKETS variable_type TOKEN_CLOSE_BRACKETS { $$ = create_node(TYPE_ARRAY, 1, $2); }
               ;

define_function: identifier TOKEN_OPEN_PARENTHESES parameter_list TOKEN_CLOSE_PARENTHESES TOKEN_COLON variable_type block { $$ = create_node(DEFINE_FUNCTION, 4, $1, $3, $6, $7); }
                 | identifier TOKEN_OPEN_PARENTHESES parameter_list TOKEN_CLOSE_PARENTHESES block { $$ = create_node(DEFINE_FUNCTION, 3, $1, $3, $5); }
                 | identifier TOKEN_OPEN_PARENTHESES TOKEN_CLOSE_PARENTHESES TOKEN_COLON variable_type block  { $$ = create_node(DEFINE_FUNCTION, 3, $1, $5, $6); }
                 | identifier TOKEN_OPEN_PARENTHESES TOKEN_CLOSE_PARENTHESES block  { $$ = create_node(DEFINE_FUNCTION, 2, $1, $4); }
                 ;

parameter_list: parameter_list TOKEN_COMMA parameter { $$ = append_node(PARAMETER_LIST, $1, $3); }
                | parameter  { $$ = $1; }
                ;

parameter: identifier TOKEN_COLON variable_type { $$ = create_node(PARAMETER, 2, $1, $3); }
           ;

block: TOKEN_OPEN_BRACES variable_list command_list TOKEN_CLOSE_BRACES { $$ = create_node(BLOCK, 2, $2, $3); }
       | TOKEN_OPEN_BRACES variable_list TOKEN_CLOSE_BRACES { $$ = create_node(BLOCK, 1, $2); }
       | TOKEN_OPEN_BRACES command_list TOKEN_CLOSE_BRACES { $$ = create_node(BLOCK, 1, $2); }
       | TOKEN_OPEN_BRACES TOKEN_CLOSE_BRACES { $$ = create_node(BLOCK, 0); }
       ;

variable_list:  variable_list define_variable  { $$ = append_node(VARIABLE_LIST, $1, $2); }
                | define_variable { $$ = $1; }
                ;

command_list: command_list command  { $$ = append_node(COMMAND_LIST, $1, $2); }
              | command    { $$ = $1; }
              ;

command: TOKEN_IF expression block   { $$ = create_node(IF, 2, $2, $3); }
         | TOKEN_IF expression block TOKEN_ELSE block { $$ = create_node(IF, 3, $2, $3, $5); }
         | TOKEN_WHILE expression block { $$ = create_node(WHILE, 2, $2, $3); }
         | variable TOKEN_ASSIGNMENT expression TOKEN_SEMICOLON { $$ = create_node(ASSIGNMENT, 2, $1, $3); }
         | TOKEN_RETURN expression TOKEN_SEMICOLON  { $$ = create_node(RETURN, 1, $2); }
         | TOKEN_RETURN TOKEN_SEMICOLON { $$ = create_node(RETURN, 0); }
         | TOKEN_AT_SIGN expression TOKEN_SEMICOLON { $$ = create_node(PRINT, 1, $2); }
         | function_call TOKEN_SEMICOLON { $$ = $1; }
         | block { $$ = $1; }
         ;

variable: expression_reference TOKEN_OPEN_BRACKETS expression TOKEN_CLOSE_BRACKETS { $$ = create_node(ARRAY_POSITION, 2, $1, $3); }
          | identifier { $$ = create_node(VARIABLE, 1, $1); }
          ;

function_call: identifier TOKEN_OPEN_PARENTHESES expression_list TOKEN_CLOSE_PARENTHESES { $$ = create_node(FUNCTION_CALL, 2, $1, $3); }
               | identifier TOKEN_OPEN_PARENTHESES TOKEN_CLOSE_PARENTHESES { $$ = create_node(FUNCTION_CALL, 1, $1); }
               ;

new_array: TOKEN_NEW variable_type TOKEN_OPEN_BRACKETS expression TOKEN_CLOSE_BRACKETS  { $$ = create_node(NEW_ARRAY, 2, $2, $4); }
           ;

expression_list: expression_list TOKEN_COMMA expression { $$ = append_node(EXPRESSION_LIST, $1, $3); }
                 | expression { $$ = $1; }
                 ;

expression: expression_and_or  { $$ = $1; }
            ;

expression_and_or: expression_and_or TOKEN_OR expression_equal_not_equal  { $$ = create_node(EXPRESSION_OR, 2, $1, $3); }
                   | expression_and_or TOKEN_AND   expression_equal_not_equal  { $$ = create_node(EXPRESSION_AND, 2, $1, $3); }
                   | expression_equal_not_equal { $$ = $1; }
                   ;

expression_equal_not_equal: expression_equal_not_equal TOKEN_EQUAL expression_greater_less_equal  { $$ = create_node(EXPRESSION_EQUAL, 2, $1, $3); }
                            | expression_equal_not_equal TOKEN_NOT_EQUAL expression_greater_less_equal { $$ = create_node(EXPRESSION_NOT_EQUAL, 2, $1, $3); }
                            | expression_greater_less_equal { $$ = $1; }
                            ;

expression_greater_less_equal:  expression_greater_less_equal TOKEN_GREATER expression_add_sub  { $$ = create_node(EXPRESSION_GREATER, 2, $1, $3); }
                                | expression_greater_less_equal TOKEN_GREATER_EQUAL expression_add_sub { $$ = create_node(EXPRESSION_GREATER_EQUAL, 2, $1, $3); }
                                | expression_greater_less_equal TOKEN_LESS expression_add_sub { $$ = create_node(EXPRESSION_LESS, 2, $1, $3); }
                                | expression_greater_less_equal TOKEN_LESS_EQUAL expression_add_sub { $$ = create_node(EXPRESSION_LESS_EQUAL, 2, $1, $3); }
                                | expression_add_sub { $$ = $1; }
                                ;

expression_add_sub: expression_add_sub TOKEN_SUBTRACT expression_mult_div { $$ = create_node(EXPRESSION_SUB, 2, $1, $3); }
                    | expression_add_sub TOKEN_ADD expression_mult_div { $$ = create_node(EXPRESSION_ADD, 2, $1, $3); }
                    | expression_mult_div { $$ = $1; }
                    ;

expression_mult_div:  expression_mult_div TOKEN_DIVIDE expression_cast { $$ = create_node(EXPRESSION_DIV, 2, $1, $3); }
                      | expression_mult_div TOKEN_MULTIPLY expression_cast { $$ = create_node(EXPRESSION_MULT, 2, $1, $3); }
                      | expression_cast { $$ = $1; }
                      ;

expression_cast:  expression_cast TOKEN_AS variable_type { $$ = create_node(EXPRESSION_CAST, 2, $1, $3); }
                  | expression_negative  { $$ = $1; }
                  ;

expression_negative:  TOKEN_SUBTRACT expression_negative { $$ = create_node(EXPRESSION_NEGATIVE, 1, $2); }
                      | expression_not { $$ = $1; }
                      ;

expression_not:    TOKEN_NOT expression_not { $$ = create_node(EXPRESSION_NOT, 1, $2); }
                  | expression_reference { $$ = $1; }
                  ;

expression_reference:  variable { $$ = $1; }
                      | function_call { $$ = $1; }
                      | new_array { $$ = $1; }
                      | expression_scope { $$ = $1; }
                      ;

expression_scope:  TOKEN_OPEN_PARENTHESES expression TOKEN_CLOSE_PARENTHESES  { $$ = $2; }
                  | expression_data { $$ = $1; }
                  ;

expression_data:   TOKEN_TRUE { $$ = create_node_boolean(1); }
                  | TOKEN_FALSE { $$ = create_node_boolean(0); }
                  | TOKEN_CHARACTER { $$ = create_node_character($1); }
                  | TOKEN_INTEGER { $$ = create_node_integer($1); }
                  | TOKEN_FLOAT { $$ = create_node_float($1); }
                  | TOKEN_STRING { $$ = create_node_string(DATA_STRING, $1); }
                  ;

%%

