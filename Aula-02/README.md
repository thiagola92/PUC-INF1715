# Análise léxica
Identificar as "palavras" (tokens).  
Utilizaremos C nos exemplos, ignorando o pré-processador

```C
#include "dir\file.h"
```

O `#include "dir/file.h"` pertence ao pré-processador, então possui regras léxicas diferentes de C. Note que a barra inversa não é escapada (`\\`) pois aquela string não é uma string igual a de C.  

## Exemplo 1

```C
int foo(void) {
  x = -24;
}
```

Tokens
* int
* foo
* (
* void
* )
* {
* x
* =
* \-
* 24
* ;
* }

### Passo a passo
Análisado léxico vai fazendo leitura de char a char para identificar o token.  

* Lê `i`
* Lê `n`
* Lê `t`
* Lê espaço

A cada leitura de caracter é verificado se pode ser formado um token com aquele caracter, se não for possível devemos pegar o ultimo que conseguimos formar.  
Ao terminar de ler o espaço, notamos que não é possível formar nenhum token iniciando com "int " mas podemos formar um token com "int".  

Continuamos logo após o token encontrado, ou seja, depois do token `int` vem espaço.  

* Lê espaço

Espaços são apenas cosméticos por isso não são tokens, quando lidos são jogados fora e começamos outra leitura.  

* Lê `f`
* Lê `o`
* Lê `o`
* Lê `(`

Não é possível formar nenhum token que seja formado de letras e depois venha um parênteses, novamente paramos e pegamos o ultimo token que conseguimos formar: "foo".  

Continuamos com esse processo até o fim do código...  

### Número negativo
Por que `-24` é formado de dois tokens mesmo sendo apenas um número?  

Lembre que durante a análise não é possível olhar o contexto (tokens anteriores). Então não conseguimos saber se `-` está sendo usado para número negativo (`-24`) ou operador menos (`10-24`).  

O trabalho de olhar o contexto é do análisador sintático.  

## Exemplo 2

```C
x = ++x >= y; /* bla */
```

Tokens
* x
* =
* ++
* x
* \>=
* y
* ;

### Comentário
Comentário também é cosmético, então uma vez identificado que está dentro de um comentário, continuamos lendo até o fim dele. Jogamos fora todo o comentário e voltamos a tentar pegar tokens.  

## Exemplo 3

```C
x = -25.3e-17;
```

Tokens
* x
* =
* \-
* 25.3e-17
* ;

### Números com e
Por que `25.3e-17` é apenas um token?  

Normalmente você só separa em tokens quando pode ocorrer alguma ambiguidade. Nesse caso é possível ler tranquilamente até o fim.  

Imagina se enviassemos lá para cima 4 tokens ou mais: `25.3`, `e`, `-`, `17`  
O analisado sintático teria que fazer toda uma verificação para saber se é uma expressão sendo que só tem uma opção considerando que começamos a ler número no inicio.  

## Exemplo 4

```C
x = "hello\n world";
```

Tokens
* x
* =
* "hello\n world"
* ;

## Palavras reservadas
São palavras que são tratadas como símbolos. Da mesma forma que o símbolo de igual é sempre representado pelo símbolo `=`, o armazenamento de um conjunto de bytes vai ser sempre representado pelo símbolo/palavra `int`.  
Da mesma forma que um símbolo(+ = / - \*) é representado por um token, uma palavra reservada é representada por um token.  

## Tokens
* Palavras Reservadas
* Identificadores
* Símbolos
  * `=`
  * `+` `-` `*` `/` `<<` `>>`
  * `++` `--`
  * `>` `<` `>=` `<=` `==`
  * `+=` `-=` `*=` `/=` `<<=` `>>=`
* Constantes
  * Inteiros (decimal, hexa, ...)
  * Floats
  * String literais

## Implementação

* getToken()
  * retorna próximo token
    * informação semântica
