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

# Subroutines

# Compile (normal)
Compilar código Bison: `bison -d example.y`  
Compilar código Flex: `flex example.l`  
Compilar código C: `gcc main.c lex.yy.c y.tab.c -o example`  
Executar código: `./example.out`  

