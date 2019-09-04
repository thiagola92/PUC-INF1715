%{
	#include<stdio.h>
	#include<string.h>

	const char* token_identifier(char* identifier);
%}

IDENTIFIER	[a-zA-Z_][a-zA-Z0-9_]*

%%

[ \t\n]		;
{IDENTIFIER}	{ printf("%s\n", token_identifier(yytext)); }
"("		{ printf("%s\n", "TOKEN_OPEN_PARENTHESES"); }
")"		{ printf("%s\n", "TOKEN_CLOSE_PARENTHESES"); }
"["		{ printf("%s\n", "TOKEN_OPEN_BRACKETS"); }
"]"		{ printf("%s\n", "TOKEN_CLOSE_BRACKETS"); }
"-"		{ printf("%s\n", "TOKEN_MINUS"); }
"+"		{ printf("%s\n", "TOKEN_PLUS"); }
"*"		{ printf("%s\n", "TOKEN_MULTIPLY"); }
"/"		{ printf("%s\n", "TOKEN_DIVIDE"); }
"=="		{ printf("%s\n", "TOKEN_EQUAL"); }
"~="		{ printf("%s\n", "TOKEN_NOT_EQUAL"); }
"<="		{ printf("%s\n", "TOKEN_LESS_EQUAL"); }
">="		{ printf("%s\n", "TOKEN_GREATER_EQUAL"); }
"<"		{ printf("%s\n", "TOKEN_LESS"); }
">"		{ printf("%s\n", "TOKEN_GREATER"); }
"!"		{ printf("%s\n", "TOKEN_NOT"); }
"&&"		{ printf("%s\n", "TOKEN_AND"); }
"||"		{ printf("%s\n", "TOKEN_OR"); }
.		{ printf("%c\n", yytext[0]); }

%%

const char* token_identifier(char* identifier) {
	char token[] = "TOKEN_IDENTIFIER\t";

	int length = strlen(token) + strlen(identifier) + 1;
	char* token_and_id = (char*)malloc(length);

	if(strcmp(identifier, "as") == 0)
		return "TOKEN_IDENTIFIER_AS";
	else if(strcmp(identifier, "char") == 0)
		return "TOKEN_IDENTIFIER_CHAR";
	else if(strcmp(identifier, "else") == 0)
		return "TOKEN_IDENTIFIER_ELSE";
	else if(strcmp(identifier, "float") == 0)
		return "TOKEN_IDENTIFIER_FLOAT";
	else if(strcmp(identifier, "if") == 0)
		return "TOKEN_IDENTIFIER_IF";
	else if(strcmp(identifier, "int") == 0)
		return "TOKEN_IDENTIFIER_INT";
	else if(strcmp(identifier, "new") == 0)
		return "TOKEN_IDENTIFIER_NEW";
	else if(strcmp(identifier, "return") == 0)
		return "TOKEN_IDENTIFIER_RETURN";
	else if(strcmp(identifier, "void") == 0)
		return "TOKEN_IDENTIFIER_VOID";
	else if(strcmp(identifier, "while") == 0)
		return "TOKEN_IDENTIFIER_WHILE";

	strcat(token_and_id, token);
	strcat(token_and_id, identifier);
	
	return token_and_id;
}
