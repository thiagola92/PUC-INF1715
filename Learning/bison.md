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

# shift/reduce again
Normalmente ajuda remover a opção de empty do final.  
```
block:		'{' define_variables commands '}' 	{ ; }
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
block:		'{' define_variables commands '}' 	{ ; }
		| '{' define_variables '}' 	{ ; }
		| '{' commands '}' 		{ ; }
		| '{' '}' 				{ ; }
		;

define_variables:	define_variable				{ ; }
			| define_variables define_variable	{ ; }
			;

commands:	command			{ ; }
		| commands command	{ ; }
		;
```

# shift/reduce again
Expressões podem dar bastante dor de cabeça.  
```
exp:	exp '+' exp	{ ; }
	| exp '-' exp	{ ; }
	| exp '*' exp	{ ; }
	| exp '/' exp	{ ; }
	| number	{ ; }
	;
```

Você consegue ver de longe como isso pode causar ambiguidade, não saber qual deles utilizar primeiro. Para resolver isso, ordene o caminho do ultimo a ser resolvido para o primeiro a ser resolvido.  
```
exp:	exp_add		{ ; }
	;

exp_add:	exp '+' exp	{ ; }
		| exp_sub	{ ; }
		;

exp_sub:	exp '-' exp	{ ; }
		| exp_mul	{ ; }
		;

exp_mul:	exp '*' exp	{ ; }
		| exp_div	{ ; }
		;

exp_div:	exp '/' exp	{ ; }
		| number	{ ; }
		;
```

Ainda pode se causar ambiguidade pois você pode chegar a `number + number + number` de duas maneiras.  
`exp >> exp_add` >> `exp '+' exp` >> `exp_add '+' exp` >> `exp '+' exp '+' exp` >> `number + number + number`  
`exp >> exp_add` >> `exp '+' exp` >> `exp '+' exp_add` >> `exp '+' exp '+' exp` >> `number + number + number`  
Uma maneira de solucionar isso é deixar uma linha responsável por adicionar várias vezes o sinal da expressão.  
Essa mesma linha tem que ser capaz de transformar em número depois, ou seja, seguir o caminho normal.  
```
exp:	exp_add		{ ; }
	;

exp_add:	exp_add '+' exp_sub	{ ; }
		| exp_sub		{ ; }
		;

exp_sub:	exp_sub '-' exp_mul	{ ; }
		| exp_mul		{ ; }
		;

exp_mul:	exp_mul '*' exp_div	{ ; }
		| exp_div		{ ; }
		;

exp_div:	exp_div '/' number	{ ; }
		| number		{ ; }
		;
```
