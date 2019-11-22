%{
  // Nome: Thiago Lages de Alencar
  // Matricula: 1721629

  #include"monga.h"

  int CURRENT_LINE = 1;

  char* convert_string(const char*);
  char convert_char(const char*);
  
  void yyerror(char* s);
%}

%option noinput
%option nounput

CHARACTER  '([^"\\]|\\.)'
INTEGER    [0-9]+
FLOAT    ([0-9]+("."[0-9]*)?|"."[0-9]+)([eE][-+]?[0-9]+)?
HEXADECIMAL  0[Xx][0-9a-fA-F]+

STRING    \"([^"\\]|\\.)*\"

IDENTIFIER  [a-zA-Z_][a-zA-Z0-9_]*

COMMENT    #[^\n]*

%%

[ \t]    ; // ignore

\n        { CURRENT_LINE++; }

"new"      { return TOKEN_NEW; }

"bool"    { return TOKEN_WORD_BOOL; }
"char"    { return TOKEN_WORD_CHAR; }
"int"      { return TOKEN_WORD_INT; }
"float"    { return TOKEN_WORD_FLOAT; }

"true"    { yylval.i = 1; return TOKEN_TRUE; }
"false"    { yylval.i = 0; return TOKEN_FALSE; }

"if"      { return TOKEN_IF; }
"else"    { return TOKEN_ELSE; }

"while"    { return TOKEN_WHILE; }

"as"      { return TOKEN_AS; }

"return"  { return TOKEN_RETURN; }

"("        { return TOKEN_OPEN_PARENTHESES; }
")"        { return TOKEN_CLOSE_PARENTHESES; }
"["        { return TOKEN_OPEN_BRACKETS; }
"]"        { return TOKEN_CLOSE_BRACKETS; }
"{"        { return TOKEN_OPEN_BRACES; }
"}"        { return TOKEN_CLOSE_BRACES; }

"=="      { return TOKEN_EQUAL; }
"~="      { return TOKEN_NOT_EQUAL; }
"<="      { return TOKEN_LESS_EQUAL; }
">="      { return TOKEN_GREATER_EQUAL; }
"&&"      { return TOKEN_AND; }
"||"      { return TOKEN_OR; }

"-"        { return TOKEN_SUBTRACT; }
"+"        { return TOKEN_ADD; }
"*"        { return TOKEN_MULTIPLY; }
"/"        { return TOKEN_DIVIDE; }
"="        { return TOKEN_ASSIGNMENT; }
"<"        { return TOKEN_LESS; }
">"        { return TOKEN_GREATER; }
"!"        { return TOKEN_NOT; }

"@"        { return TOKEN_AT_SIGN; }
","        { return TOKEN_COMMA; }
":"        { return TOKEN_COLON; }
";"        { return TOKEN_SEMICOLON; }

{CHARACTER}    { yylval.i = convert_char(yytext); return TOKEN_CHARACTER; }
{INTEGER}      { yylval.i = strtol(yytext, NULL, 10); return TOKEN_INTEGER; }

{FLOAT}        { yylval.f = strtod(yytext, NULL); return TOKEN_FLOAT; }
{HEXADECIMAL}  { yylval.f = strtod(yytext, NULL); return TOKEN_FLOAT; }

{STRING}      { yylval.s = convert_string(strdup(yytext)); return TOKEN_STRING; }

{IDENTIFIER}  { yylval.s = strdup(yytext); return TOKEN_IDENTIFIER; }

{COMMENT}      { ; }

.              { return yytext[0]; }

%%

char convert_char(const char* input) {
  char* string = convert_string(input);
  return string[0];
}

char* convert_string(const char* input) {
  int length = strlen(input) - 1; // removing first and last quotation mark
  char* output = (char*)safe_malloc(sizeof(char) * length);

  int pos_input = 1; // skipping first quotation mark
  int pos_output = 0;
  
  while(pos_input < strlen(input) - 1) {
    if(input[pos_input] != '\\') {
      output[pos_output] = input[pos_input];
      pos_input++;
      pos_output++;
      continue;
    }
    
    switch(input[pos_input + 1]) {
      case '0':
        output[pos_output] = '\0';
        break;
      case 'a':
        output[pos_output] = '\a';
        break;
      case 'b':
        output[pos_output] = '\b';
        break;
      case 'f':
        output[pos_output] = '\f';
        break;
      case 'n':
        output[pos_output] = '\n';
        break;
      case 'r':
        output[pos_output] = '\r';
        break;
      case 't':
        output[pos_output] = '\t';
        break;
      case 'v':
        output[pos_output] = '\v';
        break;
      case '\\':
        output[pos_output] = '\\';
        break;
      case '"':
        output[pos_output] = '"';
        break;
      case '\'':
        output[pos_output] = '\'';
        break;
      default:
        output[pos_output] = input[pos_input];
        pos_input++;
        pos_output++;
        continue;
    }
    
    pos_input += 2;
    pos_output++;
  }

  output[pos_input] = '\0';
  return output;
}

void yyerror(char* s) {
  printf("%s: line %d\n", s, CURRENT_LINE);
  exit(1);
}

