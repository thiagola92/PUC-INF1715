%{
	#include<stdio.h>
	#include<string.h>
%}

CHAR		\"([^"\\]|\\.)\"
INTEGER		[0-9]+
FLOAT		([0-9]+("."[0-9]*)?|"."[0-9]+)([eE][-+]?[0-9]+)?
HEXADECIMAL	0x[0-9a-fA-F]+

STRING		\"([^"\\]|\\.)*\"

IDENTIFIER	[a-zA-Z_][a-zA-Z0-9_]*

COMMENT		#[^\n]*

%%

[ \t]		; // ignore

\n		; // count line

"new"		{ printf("%s\n", "TOKEN_NEW"); }

"char"		{ printf("%s\n", "TOKEN_WORD_CHAR"); }
"float"		{ printf("%s\n", "TOKEN_WORD_FLOAT"); }
"int"		{ printf("%s\n", "TOKEN_WORD_INT"); }
"void"		{ printf("%s\n", "TOKEN_WORD_VOID"); }

"if"		{ printf("%s\n", "TOKEN_IF"); }
"else"		{ printf("%s\n", "TOKEN_ELSE"); }

"while"		{ printf("%s\n", "TOKEN_WHILE"); }

"as"		{ printf("%s\n", "TOKEN_AS"); }

"return"	{ printf("%s\n", "TOKEN_RETURN"); }

"("		{ printf("%s\n", "TOKEN_OPEN_PARENTHESES"); }
")"		{ printf("%s\n", "TOKEN_CLOSE_PARENTHESES"); }
"["		{ printf("%s\n", "TOKEN_OPEN_BRACKETS"); }
"]"		{ printf("%s\n", "TOKEN_CLOSE_BRACKETS"); }
"{"		{ printf("%s\n", "TOKEN_OPEN_BRACES"); }
"}"		{ printf("%s\n", "TOKEN_CLOSE_BRACES"); }

"=="		{ printf("%s\n", "TOKEN_EQUAL"); }
"~="		{ printf("%s\n", "TOKEN_NOT_EQUAL"); }
"<="		{ printf("%s\n", "TOKEN_LESS_EQUAL"); }
">="		{ printf("%s\n", "TOKEN_GREATER_EQUAL"); }
"&&"		{ printf("%s\n", "TOKEN_AND"); }
"||"		{ printf("%s\n", "TOKEN_OR"); }

"-"		{ printf("%s\n", "TOKEN_MINUS"); }
"+"		{ printf("%s\n", "TOKEN_PLUS"); }
"*"		{ printf("%s\n", "TOKEN_MULTIPLY"); }
"/"		{ printf("%s\n", "TOKEN_DIVIDE"); }
"="		{ printf("%s\n", "TOKEN_ASSIGNMENT"); }
"<"		{ printf("%s\n", "TOKEN_LESS"); }
">"		{ printf("%s\n", "TOKEN_GREATER"); }
"!"		{ printf("%s\n", "TOKEN_NOT"); }

":"		{ printf("%s\n", "TOKEN_COLON"); }
";"		{ printf("%s\n", "TOKEN_SEMICOLON"); }

{CHAR}		{ printf("%s\t%s\n", "TOKEN_CHAR", yytext); }
{INTEGER}	{ printf("%s\t%s\n", "TOKEN_INTEGER", yytext); }
{FLOAT}		{ printf("%s\t%s\n", "TOKEN_FLOAT", yytext); }
{HEXADECIMAL}	{ printf("%s\t%s\n", "TOKEN_HEXADECIMAL", yytext); }

{STRING}	{ printf("%s\t\t%s\n", "TOKEN_STRING", yytext); }

{IDENTIFIER}	{ printf("%s\t%s\n", "TOKEN_IDENTIFIER", yytext); }

{COMMENT}	{ printf("%s\t%s\n", "TOKEN_COMMENTARY", yytext); }

.		{ printf("%c\n", yytext[0]); }

%%
