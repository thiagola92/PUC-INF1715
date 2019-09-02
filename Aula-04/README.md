# Resposta do Exercicio para casa
* String literal
  * `\"([^"\\]|\\.)*\"`  
* Numerais de pontos flutuantes
  * `([0-9]+("."[0-9]*)?|"."[0-9]+)([eE][-+]?[0-9]+)?`

# Regra do Inteiro Antes
Lembre que essas expressões regulares são utilizadas para encontrar um token específico, ou seja, a regra para string literal retorna TOKEN_STRING e a regra para ponto flutuantes retorna TOKEN_FLOAT.  
O problema é que a regra utilizada para ponto flutuante também casa com números inteiros, você não quer que retorna TOKEN_FLOAT quando deveria retornar TOKEN_INT.  
Para evitar isso você deve botar a regra de inteiro antes da regra de ponto flutuante, pois a expressão regular de inteiro deve encontrar e retornar TOKEN_INT.  

# Nenhum match
Uma sutiliza do Lex é que caso não de match com nada, retorna a própria string.  

# Ferramenta Lex
A ferramenta recebe um arquivo e gera um código C.  
Esse código possui uma função que quando chamada retorna o próximo token.  

## Formato
Basicamente `%%` marca a separação de cada categoria.  

```
{definições}
%%
{regras}
%%
{subrotinas do usuário}
```

## Regras
Se associa uma expressão regular a um código C a ser executado quando esse padrão for encontrado.  

```C
%%
"hello" 	{ printf("Hello world"); }
"[0-9]*"	{ printf("NUMBER");}
%%
```

Entrada: `hello, i am 10 years old and i hope that you continue being my friend for 1 more year`  
Saída: `Hello world, i am NUMBER years old and i hope that you continue being my friend for NUMBER more year`  

```C
%%
"hello" 	;
%%
```

Entrada: `hello my friend`  
Saída: `my friend`  

```C
%%
%%
```

Entrada: `hello world`  
Saída: ``  

## Tokens

```C
%%
"while"		{ return TOKEN_WHILE; }  
"<="		{ return TOKEN_LESS_EQUAL; }  
.		{ return yytext[0]; }
%%
```

Alguns casos é necessário acessar a string que deu match com o pattern.  
`yytext` é um buffer global que Lex utiliza para armazenar o match ocorrido.  
Deixamos como ultimo pattern `.`, dessa maneira qualquer coisa que não dermos match iremos retornar o próprio match (dessa forma o analisador sintático recebe exatamente aquele caracter).  

## Informação semântica

Dado que você identificou, você precisa descobrir exatamente o que se trata.  
```C
union {
  long l;
  double d;
  const char *s;
} yyval;
```

Para converter você provávelmente vai querer utilizar uma função de C. Por exemplo, `strtod` para converter de string para double.  
```
{
  yyval = converte(yytext);
  return TOKEN_FLOAT;
}
```

Erro extremamente comum, você apontar para o buffer que fica mudando todo o tempo.  
```
{
  yyval.s = yytext;
  return TOKEN_ID;
}
```

O certo seria tirar uma cópia da string.  
```
{
  yyval.s = strdup(yytext);
  return TOKEN_ID;
}
```

# Conversão string
É preciso transformar a string recebida, removendo os escapes.  
Como é preciso dar malloc, você precisa ter uma idéia do tamanho da string final.  
String final no máximo é igual, no minímo é metade (se tudo for escape),

|       |       |       |       |       |       |
| ----- | ----- | ----- | ----- | ----- | ----- |
| `"`   | `a`   | `\`   | `n`   | `b`   | `"`   |
| `a`   | `\n`  | `b`   |       |       |       |


|       |       |       |       |       |       |       |       |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| `"`   | `a`   | `\`   | `n`   | `b`   | `\`   | `"`   | `"`   |
| `a`   | `\n`  | `b`   | `"`   |       |       |       |       |

# Trabalho parte 1
Uma entrada para o Lex com os items léxicos da linguagem Monga.  
[Linguagem monga](http://www.inf.puc-rio.br/~roberto/comp/lang.html)  
Arquivo de entrada do Lex tem extensão `.l`.  
Nome da função: `yylex`  

Fazer em outro arquivo a função main, responsável por chamar em loop a função `yylex()`.  
Imprimindo de forma legível o resultado.  

Basicamente um programa que vai ler um arquivo e imprimir os tokens que forem lidos.  
Entrada: `int x(int a12);`  
Saida:  
```
INT
ID	"x"
(
INT
ID	"a12"
)
;
```
