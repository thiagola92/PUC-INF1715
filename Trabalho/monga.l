%{
	// Nome: Thiago Lages de Alencar
	// Matricula: 1721629

	#include"monga.h"

	int CURRENT_LINE = 1;

	char* convert_string(const char* s);
%}

%option noinput
%option nounput

CHARACTER	'([^"\\]|\\.)'
INTEGER		[0-9]+
FLOAT		([0-9]+("."[0-9]*)?|"."[0-9]+)([eE][-+]?[0-9]+)?
HEXADECIMAL	0[Xx][0-9a-fA-F]+

STRING		\"([^"\\]|\\.)*\"

IDENTIFIER	[a-zA-Z_][a-zA-Z0-9_]*

COMMENT		#[^\n]*

%%

[ \t]		; // ignore

\n		{ CURRENT_LINE++; }

"new"		{ return TOKEN_NEW; }

"bool"		{ return TOKEN_WORD_BOOL; }
"char"		{ return TOKEN_WORD_CHAR; }
"int"		{ return TOKEN_WORD_INT; }
"float"		{ return TOKEN_WORD_FLOAT; }

"true"		{ yylval.i = 1; return TOKEN_TRUE; }
"false"		{ yylval.i = 0; return TOKEN_FALSE; }

"if"		{ return TOKEN_IF; }
"else"		{ return TOKEN_ELSE; }

"while"		{ return TOKEN_WHILE; }

"as"		{ return TOKEN_AS; }

"return"	{ return TOKEN_RETURN; }

"("		{ return TOKEN_OPEN_PARENTHESES; }
")"		{ return TOKEN_CLOSE_PARENTHESES; }
"["		{ return TOKEN_OPEN_BRACKETS; }
"]"		{ return TOKEN_CLOSE_BRACKETS; }
"{"		{ return TOKEN_OPEN_BRACES; }
"}"		{ return TOKEN_CLOSE_BRACES; }

"=="		{ return TOKEN_EQUAL; }
"~="		{ return TOKEN_NOT_EQUAL; }
"<="		{ return TOKEN_LESS_EQUAL; }
">="		{ return TOKEN_GREATER_EQUAL; }
"&&"		{ return TOKEN_AND; }
"||"		{ return TOKEN_OR; }

"-"		{ return TOKEN_SUBTRACT; }
"+"		{ return TOKEN_ADD; }
"*"		{ return TOKEN_MULTIPLY; }
"/"		{ return TOKEN_DIVIDE; }
"="		{ return TOKEN_ASSIGNMENT; }
"<"		{ return TOKEN_LESS; }
">"		{ return TOKEN_GREATER; }
"!"		{ return TOKEN_NOT; }

"@"		{ return TOKEN_AT_SIGN; }
","		{ return TOKEN_COMMA; }
":"		{ return TOKEN_COLON; }
";"		{ return TOKEN_SEMICOLON; }

{CHARACTER}	{ yylval.c = yytext[1]; return TOKEN_CHARACTER; }
{INTEGER}	{ yylval.i = strtol(yytext, NULL, 10); return TOKEN_INTEGER; }

{FLOAT}		{ yylval.f = strtod(yytext, NULL); return TOKEN_FLOAT; }
{HEXADECIMAL}	{ yylval.f = strtod(yytext, NULL); return TOKEN_FLOAT; }

{STRING}	{ yylval.s = convert_string(strdup(yytext)); return TOKEN_STRING; }

{IDENTIFIER}	{ yylval.s = strdup(yytext); return TOKEN_IDENTIFIER; }

{COMMENT}	{ ; }

.		{ return yytext[0]; }

%%

char* convert_string(const char* input) {
	int length = strlen(input) - 1; // removing first and last quotation mark
	char* output = (char*)malloc(sizeof(char) * length);

	int pos_input = 1; // skipping first quotation mark
	int pos_output = 0;
	
	while(pos_input < strlen(input) - 1) {
		if(input[pos_input] != '\\') {
			output[pos_output] = input[pos_input];
			pos_input++;
			pos_output++;
			continue;
		}

		if(input[pos_input + 1] == 'a')
			output[pos_output] = '\a';
		else if(input[pos_input + 1] == 'b')
			output[pos_output] = '\b';
		else if(input[pos_input + 1] == 'f')
			output[pos_output] = '\f';
		else if(input[pos_input + 1] == 'n')
			output[pos_output] = '\n';
		else if(input[pos_input + 1] == 'r')
			output[pos_output] = '\r';
		else if(input[pos_input + 1] == 't')
			output[pos_output] = '\t';
		else if(input[pos_input + 1] == 'v')
			output[pos_output] = '\v';
		else if(input[pos_input + 1] == '\\')
			output[pos_output] = '\\';
		else if(input[pos_input + 1] == '"')
			output[pos_output] = '"';
		else if(input[pos_input + 1] == '\'')
			output[pos_output] = '\'';
		else {
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

