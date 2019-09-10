# Structure
A estrutura de um programa Flex é dividido em 3 partes.  

```
{definitions}
%%
{rules}
%%
{subroutines}
```

# Rules
Obrigatório para todo código Flex.  
Defini os patterns é o código que deve ser executado ao dar match.  

```
%%
"as"		{ printf("TOKEN_AS "); }
"char"		{ printf("TOKEN_CHAR "); }
"else"		{ printf("TOKEN_ELSE "); }
"float"		{ printf("TOKEN_FLOAT "); }
"if"		{ printf("TOKEN_IF "); }
"int"		{ printf("TOKEN_INT "); }
"new"		{ printf("TOKEN_NEW "); }
"return"	{ printf("TOKEN_RETURN "); }
"void"		{ printf("TOKEN_VOID "); }
"while"		{ printf("TOKEN_WHILE "); }
[0-9]*		{ printf("TOKEN_NUMBER "); }
.		;
%%
```

`"as"		{ printf("TOKEN_AS "); }`  
Pattern: match com qualquer sequência consecutiva de "as".  
Código: Exibir na tela "TOKEN_AS ".  
Observação: Se for escrito "asdf", irá dar match e exibirá na tela "TOKEN_AS ".  

`.		;`  
Pattern: Match com qualquer caracter.  
Código: Vazio, nada ocorre.  

Entrada: `as char else if blablabla void`.  
Saida: `TOKEN_AS TOKEN_CHAR TOKEN_ELSE TOKEN_IF TOKEN_VOID`.  
Observação: O texto "blablabla" é ignorado pois não da match com nenhum dos casos.  

# Regular Expression

| Pattern | Match | Examples |
| ------- | ----- | -------- |
| where   | Match na sequência de caracteres `w`, `h`, `e`, `r`, `e` | `where` |
| hello+  | Match na sequência de caracteres `h`, `e`, `l`, `l`, uma ou mais ocorrências de `o` | `hello`, `helloo`, `hellooo` |
| hello\* | Match na sequência de caracteres `h`, `e`, `l`, `l`, zero ou mais ocorrências de `o` | `hell`, `hello`, `helloo` |
| h?ello     | Match na sequência de caracteres zero ou um `h`, `e`, `l`, `l`, `o` | `hello`, `ello` | 
| "1+1"   | Match na exata sequência de caracteres `1`, `+`, `1` | `1+1` |
| a|b|c   | Match com qualquer um dos caracteres `a`, `b`, `c` | `a`, `b`, `c` |
| [abc]   | Match com qualquer um dos caracteres `a`, `b`, `c` | `a`, `b`, `c` |
| [^abc]  | Match com qualquer caracter menos `a`, `b`, `c` | `d`, `e`, `1` |
| [0-9]   | Match com qualquer número indo de 0 até 9 | `0`, `5`, `9` |
| [a-z]   | Match com qualquer letra minúscula indo de a até z | `a`, `m`, `z` |
| [A-Z]   | Match com qualquer letra maiúscula de A até Z | `A`, `M`, `Z` |
| (ab|bc) | Match com a sequência de caracteres `a`, `b` ou com a sequência de caracteres `b`, `c` | `ab`, `bc` |
| ab/cd   | Match com a sequência de caracteres `a`, `b` mas apenas se for seguida por `b`, `c` | `abcd` |
| ab$     | Match com a sequência de caracteres `a`, `b` seguido por um `\n` | `ab\n` |
| a{1-3}  | Match com a sequência de caracteres um até três `a` | `a`, `aa`, `aaa` |
| <ONE>   | ? | ? |
| .       | Match com qualquer caracter | `a`, `b`, `c`, `1`, `!`, `\n` |
| {digit} | Match com a definição de digit criada na primeira parte do Flex | |

# Definitions
Definições que podem ser constantemente usadas durante a etapa de regras.  

```
DIGIT			[0-9]
LETTER			[a-zA-Z]
%%
{DIGIT}+{DIGIT}		{ printf("SUM"); }
{DIGIT}-{DIGIT} 	{ printf("SUB"); }
{LETTER}		{ printf("LETTER"); }
%%
```

Pattern: Soma de dois números de 1 digito.  
Pattern: Subtração de dois números de 1 digito.  
Pattern: Uma única letra.  

# Compile - Fast
Compilar código Flex: `flex FILE.l`  
Compilar código C: `gcc lex.yy.c -ll`  
Executar código: `./a.out`  

Observação: `-ll` linka com a biblioteca lex.  
https://stackoverflow.com/questions/15732155/what-is-ll-gccs-flag  

Toda string após enter será mandado como entrada.  

# Definitions - C code
Durante a definições é possível incluir código de C.  

```
%{
#include <math.h>
#include <stdio.h>
%}
DIGIT			[0-9]
LETTER			[a-zA-Z]
%%
{DIGIT}+{DIGIT}		{ printf("SUM"); }
{DIGIT}-{DIGIT} 	{ printf("SUB"); }
{LETTER}		{ printf("LETTER"); }
2^2			{ printf(pow(2.0,2.0)); }
%%
```

# Subroutines
Funções definidas dentro de definições.  

```
%{
void hi();
%}
DIGIT			[0-9]
LETTER			[a-zA-Z]
%%
{DIGIT}+{DIGIT}		{ printf("SUM"); }
{DIGIT}-{DIGIT} 	{ printf("SUB"); }
{LETTER}		{ printf("LETTER"); }
"hi"			{ hi(); }
%%
void hi() {
	printf("hi, i am a function");
}
```

# yy

### yylex()
Método para fazer a leitura de um token.  
Retorna quando encontrar o fim do arquivo ou encontrar um return.  
Uma chamada seguinte ao método iria continuar a busca pelo próximo token.  

```
%%
"a"	{ printf("Don't stop\n"); }
"b"	{ return 10; }
.	;
%%
```
O método não iria finalizar ao ler "a" mas iria finalizar ao ler "b".  

### yytext
Variável que armazena o token encontrado.  

### yyleng
Variável que armazena o tamanho do token encontrado.  

### yyin
Variável que define o arquivo/entrada a ser lido.  

```C
yyin = fopen("filename.txt", "r");
```

### yywrap()
Método chamado sempre que termina der ler um arquivo.  
Deve se aproveitar esse método para atualizar o `yyin` se possuir mais arquivos para ler.  

É necessária uma implementação mínima.  
```C
int yywrap() {
	return 1;
}
```

Se retornar 0, continuar a execução do programa.  
Se retornar um valor diferente de 0, finaliza a execução do programa.  

### yyout
Variável que define o arquivo/saida onde escrever.

```C
yyout = fopen("filename.txt", "w");
```

# Condição de inicialização
Apenas irá verificar uma regra se estiver naquela condição.  
Condições são representadas como "<example>" dentro das regras.  
Condições são criadas antes das regras utilizando "%x" ou "%s" seguida pelas condições.  
Condições inicializam com a chamada do método "BEGIN()".  
Condições finalizam com a chamada do método "BEGIN()".  

Essa regra iria deletar tudo que não for aspas.  
```
%%

[^"]*		;

%%
```

Essa regra irá deletar tudo que não for aspas **se** estiver dentro da condição "INSIDE_STRING".  
```
%x INSIDE_STRING

%%

<INSIDE_STRING>[^"]* 	;
"["]"			{ BEGIN(INSIDE_STRING); }

%%
```

Multiplas condições, se uma delas for verdade a regra será executada.    
```
<INSIDE_STRING, INSIDE_WHILE>	;
```

"BEGIN(0)" reseta para o estado inicial de "nenhuma condição ativa".  

