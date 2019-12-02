Nome: Thiago Lages de Alencar  
Matricula: 1721629  

## Arquivos

* binding.c
* binding.h
* code.c
* code.h
* main.c
* monga.h
* monga.l
* monga.y
* node.c
* node.h
* README.md
* script.sh
* symbol_table.c
* symbol_table.h
* test.c
* test.h
* type.c
* type.h
* util.c
* util.h
* tests/

## Requisitos

* flex
* bison
* gcc
* bash
* clang-6.0
* llvm-6.0
  * llvm-as-6.0
  * lli-6.0

## Instalando (ubuntu)

Flex: `sudo apt install flex`  
Bison: `sudo apt install bison`  
GCC: Incluso no Ubuntu  
Bash: Incluso no Ubuntu  
Clang: `sudo apt install clang-6.0`  
LLVM: `sudo apt install llvm-6.0`  

## Executando

Gerando o compilador monga:
```
$ bison -d monga.y;
$ flex monga.l;
$ gcc main.c test.c util.c lex.yy.c monga.tab.c node.c symbol_table.c binding.c type.c code.c -Wall -o compiler;
```

Compilando para código LLVM:  
```
$ ./compiler tests/correct/example-01.monga;
```

## Script de Teste
* Cria o compilador  
* Compilar todos os testes da pasta *tests* para LLVM (`file.ll`)  
* Cria o bytecode para LLVM (`file.bc`)  
* Remove arquivos gerados pelo bison/flex  

```
$ bash script.sh;
```

# Informações

## Sintático
Eu evitei criar caminhos que levassem a vazio achando que isto facilitaria minha vida nas etapas seguintes. Consequência disto foi criar mais que uma regra para certas situações.  

* `IF exp bloco [ ELSE bloco ]`  
  * Cria duas possibilidades:
    * `IF exp bloco`  
    * `IF exp bloco ELSE bloco`  
* `ID '(' parametros ')' [':' tipo] bloco`
  * Como parametros podem também ser opcional  
    * `ID() bloco`
    * `ID() : tipo bloco`
    * `ID(parametros) bloco`
    * `ID(parametros) : tipo bloco`
* `{ { def-variavel } { comando } }`
  * `{ }`
  * `{ { def-variavel } }`
  * `{ { comando } }`
  * `{ { def-variavel } { comando } }`

Por isto durante tipagem ou geração de código eu acabo criando funções para lidarem com cada uma dos casos.  

### Ordem de Prioridade

| Expressão                                 | Símbolo |
| :---:                                     | :---: |
| parentheses                               | `()` |
| variable, function call, new array        | `x`, `f()`, `new` |
| not                                       | `!` |
| negative                                  | `-` |
| cast                                      | `as` |
| mult, div                                 | `*`, `/`|
| add, sub                                  | `+`, `-` |
| greater, greater equal, less, less equal  | `>`, `>=`, `<`, `<=` |
| equal, not equal                          | `==`, `~=` |
| and                                       | `&&` |
| or                                        | <code>&#124;&#124;</code> |

## Costura

| Nó                    | Ação                                          |
| --------------------- | ------------------------                      |
| Definição de variável | Insere símbolo no escopo                      |
| Parâmetro             | Insere símbolo no escopo                      |
| Definição de função   | Insere símbolo no escopo <br>Cria novo escopo |
| Bloco                 | Cria novo escopo                              |
| Variável              | Linka com o símbolo definição da variável     |
| Variável de expressão | Linka com o símbolo definição da variável     |
| Chamada de função     | Linka com o símbolo definição da função       |
| Retorno               | Linka com o símbolo definição da função       |

## Tipagem

`if(x)`  
**x** precisa ser **boolean**  

`while(x)`  
**x** precisa ser **boolean**  

`y = x`  
**y** e **x** precisam ser **iguais**  
se necessário  
converte **char** para **int**  
converte **int** para **char**  
converte **int** para **float**  
converte **float** para **int**  

`return x`  
**x** precisa ser igual a **declaração**  
se necessário  
converte **char** para **int**  
converte **int** para **char**  

`x && y`  
`x || y`  
**x** e **y** precisam ser **booleans**  

`x == y`  
`x ~= y`  
**x** e **y** precisam ser **iguais**  
se necessário  
converte **char** para **int**  
converte **int** para **float**  

`x > y`  
`x >= y`  
`x < y`  
`x <= y`  
**x** e **y** precisam ser **números**  
se necessário  
converte **char** para **int**  
converte **int** para **float**  

`x + y`  
`x - y`  
`x * y`  
`x / y`  
**x** e **y** precisam ser **números**  
se necessário  
converte **char** para **int**  
converte **int** para **float**  

`-x`  
**x** precisa ser **número**  
se necessário  
converte **char** para **int**  

`!x`  
**x** precisa ser **boolean**  

`x[y]`  
**x** precisa ser **array**  
**y** precisa ser **int**  

`new int[x]`  
**x** precisa ser **int**  

## Geração de Código

### Tipos

| tipo      | armazenado  | valor inicial   |
| ----      | ----------  | --------------- |
| **bool**  | `i32`       | `0`             |
| **char**  | `i32`       | `0`             |
| **int**   | `i32`       | `0`             |
| **float** | `float`     | `0.000000e+00`  |
| **array** | `*`         | `null`          |

### Print String
Como estou armazenando os characteres dentro de `i32`, o ponteiro para array de chars vai ser um `i32*`. Por causa disto não posso utilizar `printf("%s", text);`, pois printf esperea receber um `i8*`.  

Para conseguir pelo menos printar um "hello world", fiz um loop percorrendo ponteiro `i32`.  

# Node

Foi feito um nó genérico.  

```C
typedef struct Node {
  TAG tag;

  int number_of_childs;

  union content {
    int i;
    float f;
    const char* s;

    struct Node** n;
  } content;
  
  struct Node* definition;  // binding
  struct Node* type;        // typing
  char* id;                 // coding
} Node;
```

* **tag**
  * Identifica aquele nó da árvore.   
* **number_of_childs**
  * Possui a quantidade de filhos que a árvore possui. Um `if x then y` possui 2 filhos, enquanto um `if x then y else z` possui 3 filhos.  
* **content**
  * O conteúdo daquele nó, ele pode carregar um valor constante (int/float/char*) ou ponteiro para outros filhos.  
* **definition**
  * Referência para o nó definição da variável/função  
* **type**
  * Apontam para um nó com o tipo da exp/variável/função... (TYPE_BOOLEAN, TYPE_CHARACTER, TYPE_INTEGER, TYPE_FLOAT ou TYPE_ARRAY)  
* **id**
  * Identificador utilizado durante a geração de código para recuperar em qual "registrador" foi armazenado a informações daquele nó.  