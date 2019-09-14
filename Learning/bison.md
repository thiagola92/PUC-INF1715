# Structure

```
{declarations}
%%
{rules}
%%
{subroutines}
```

# Declarations
Existem 4 declarações que podem ser feitas no Bison  

Define o formato do yylval, utilizado para armazenar os valores durante a execução do flex.  
```
%union {
	char c;
	int i;
	float f;
	char* s;
};
```

Declara a regra inicial, apartir dessa regra o compilador deve ser capaz de chegar ao código do usuário.  
```
%start		initial_rule;
```

Define a existência de um token, gravando ele em um enum para que possa ser usado dentro do flex.  
Também é possível associar aquele token a um campo da union, dessa maneira o bison vai saber onde está armazenado o valor associado a aquele token.  
```
%token		TOKEN_ADD;
%token	<s>	TOKEN_STRING;
```

```
%type		initial_rule;
```

# Declarations - C code
Durante as declarações é possível utilizar código de C.  

```
%{

%}
```

# Rules
O lado esquerdo representa uma regra que pode se derivar a qualquer uma das que se encontram no lado direito.  

```
initial_rule:	expression text
		| text
```
Começando pela regra inicial você pode ir para a regra `expression` seguida pela regra `text` ou você pode ir para a regra que é apenas `text`.  

```
initial_rule:	expression text	
		| text			{ printf("End"); }
```
Ao detectar que você dentro de uma das regras, é possível executar código C.  


```
initial_rule:	expression print
		| print

print:		{ printf("End"); }

expression:	TOKEN_INTEGER TOKEN_PLUS TOKEN_INTEGER		{}
		| TOKEN_INTEGER TOKEN_MINUS TOKEN_INTEGER
		| TOKEN_INTEGER TOKEN_MULTIPLY TOKEN_INTEGER
		| TOKEN_INTEGER
```

# Subroutines

# Compile (normal)
Compilar código Bison: `bison -d example.y`  
Compilar código Flex: `flex example.l`  
Compilar código C: `gcc main.c lex.yy.c y.tab.c -o example`  
Executar código: `./example.out`  

