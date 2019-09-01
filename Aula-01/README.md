# Compilador
* Front end
* Middle end
* Back end

A palavra compilação significa "conjunto dos textos de vários autores", compiladores recebeu esse nome pois as primeiras "coisas" parecidas com compiladores executavam quase todas suas operações com a utilização de funções de diversas bibliotecas.  

Hoje em dia, compiladores se refere a um código responsável por traduzir o código de uma linguagem de alto nível para uma linguagem de baixo nível (subjetivo).  

**Programa fonte**: Código inícial, antes de ser compilado.  
**Programa objeto**: Código após ser compilado.  

A ideia princípal é transformar preservando a semántica antes e depois.  

## Front end
* Análise léxica
* Análise sintática
* Análise semántica

Front end é responsável por lidar com a linguagem de entrada (leitura do programa fonte).  

### Análise léxica
Responsável por ler char a char e identificar os tokens (palavras que compõem o programa), retirando qualquer decorativo (espaço, comentário, etc).  

### Análise sintática
Responsável por identificar as estruturas do programa (loop, atribuições, blocos, declarações, etc).  

### Análise semántica
Responsável por casar declarações com as coisas declaradas, fazer tipagem, etc.  

## Middle end
* Otimizador

Middle end é responsável por otimizar a representação intermediária (intermediate representation).  

### Otimizador
A palavra otimização significa "tornar ótimo ou ideal", porém em software é muito utilizado para quando você tenta melhorar o software, não necessariamente obtém o ótimo/ideal.  

Otimizações populares:
* Tail call
* Tail recursion
* Inline expansion
* Dead code elimination
* Constant propagation
* Loop transformation
* Automatic parallelization
* Peephole optimization
* Propagação de constante
* Constante folding
* ...

## Back end
* Geração de código

Responsável por lidar com a linguagem de saida (criação do programa objeto)  

# Interpretador
Interpretador é um programa responsável por executar outros programas.  

Maioria dos interpretadores costumam ter um pré-compilador ou compilador embutido para transformar o código antes dele ser interpretado.  

# Wikipedia

https://en.wikipedia.org/wiki/Compiler  
https://pt.wikipedia.org/wiki/Compilador#Fases_da_compila%C3%A7%C3%A3o  
https://en.wikipedia.org/wiki/High-level_programming_language  
https://en.wikipedia.org/wiki/Low-level_programming_language  
https://en.wikipedia.org/wiki/Intermediate_representation  
https://en.wikipedia.org/wiki/Optimizing_compiler  
