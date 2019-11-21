# Work
Foi possível compilar utilizando duas ferramentas do LLVM.  
`llvm-as`: Lê código LLVM e transforma em bytecode (bc) do LLVM.  
`lli-6.0`: Lê bytecode do LLVM e interpreta para a máquina.  

## .c para .ll
Como volta e meia é necessário estudar a sintaxe do LLVM, é normal escrever em C e transformar para LLVM. Você escreve em C aquilo que você quer aprender (if/while/printf/...) e transforma em LLVM para ver como deve ficar na linguagem do LLVM.  

```
$ clang-6.0 -emit-llvm -S -Wall -O0 file.c
```

Isto gera um arquivo `file.ll` no formato do LLVM.  

## .ll para .bc  
Do código LLVM você gera o bytecode que consegue ser interpretador pelo interpretador de LLVM.  

```
$ llvm-as-6.0 file.ll
```

Isto gera o arquivo `file.bc`.  

## executar .bc
Para executar o código LLVM, precisa do interpretador de LLVM  

```
$ lli-6.0 file.bc
```

# Fail
Não foi possível compilar corretamente utilizando ferramentas não ligadas ao LLVM.  

```
$ clang-6.0 -emit-llvm -S -Wall -O0 c.c
$ llc-6.0 c.ll
$ as c.s -o c.out
$ ld c.out -e main -o c
$ ./c
segmentation fault (core dumped)
```