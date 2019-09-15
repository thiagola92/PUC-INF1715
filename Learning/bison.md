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

# shift/reduce
Para gerar o log: `bison -v example.y`  
Detectar conflitos de shift/reduce requerem muita dor de cabeça mas podem resolver problemas na gramática.  

1 shift/reduce conflict  
```
define_variables:	define_variable				{ ; }
			| define_variable define_variables	{ ; }
			;
```
Acredito que ocorra pois ele tenta resolver o lado direito primeiro.  
Mudando a parte da recursão para esquerda solucionou o problema.  
```
define_variables:	define_variable				{ ; }
			| define_variables define_variable	{ ; }
			;
```

Normalmente ajuda remover a opção de empty do final.  
```
block:		TOKEN_OPEN_BRACES define variables commands TOKEN_CLOSE_BRACES 	{ ; }
		;

commands:	/*empty*/		{ ; }
		| command	{ ; }
		| commands command	{ ; }
		;


define_variables:	/*empty*/				{ ; }
			| define_variable			{ ; }
			| define_variables define_variable	{ ; }
			;
```
Para isso resolva logo de cara as opções possíveis.  
```
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
```
