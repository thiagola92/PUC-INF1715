# Yacc (Bison)
LALR  

Igual ao Flex  
```
%%
.
. gramática
.
%%
```

## Gramática
Uma regra da gramática é composta pelo nome da regra e os tokens/regras a qual ela gera.  
```
%%
sum:	VALUE '+' VALUE;
%%
```

Cada regra pode levar a gerar diversos tokens/regras.  
```
%%
math: 	VALUE '+' VALUE
	| VALUE '-' VALUE
	| VALUE '*' VALUE
	;
%%
```
## Tokens
Tokens são declarados antes da gramática.  
```
%token VALUE

%%
sum:	VALUE '+' VALUE;
%%
```

Também é preciso declarar a regra inicial.  
```
%start sum

%token VALUE

%%
sum:	VALUE '+' VALUE;
%%
```
