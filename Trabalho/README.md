Nome: Thiago Lages de Alencar  
Matricula: 1721629  

## Observações

* Faltando:
  * cast (x as y)
  * not (!x)
  * array position (x[i])
  * new array (new int[x])

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
  * llvm-as
  * lli-6.0

## Instalando (ubuntu)

Flex: `sudo apt install flex`  
Bison: `sudo apt install bison`  
GCC: Já vem incluso no Ubuntu  
Bash: Já vem incluso no Ubuntu  
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

## Ordem de Prioridade

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
| or                                        | `||` |

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

