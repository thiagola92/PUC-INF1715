# Análise Sintática

## Relembrando
Gramática Livre de Contexto (**C**ontext **F**ree **G**rammer).  
Automato com Pilha (**P**ush**d**own **A**utomaton).  
Autômatos podem ser determinístico ou indeterminístico.  

Formato da CFG:  
`S => (V U T)*`  
Um não-terminal pode levar a qualquer combinação de não-terminais e terminais.  

## Introdução
Basicamente é casar os tokens que você leu com a gramática da sua linguagem de programação, após isso você monta a árvore que descreve o programa lido.  
Essa gramática é baseada em CFG, ou seja, possui o mesmo formato.  

Uma CFG pode ser transformada em um PDA que reconhece justamente aquela gramática, único problema sendo que esse PDA é não deterministico.  
Ser deterministico quer dizer que você consegue dizer a transição tomada de um estado para outro.  
Como é não deterministico então quer dizer que você deve tentar cada caminho até acertar (tenta um caminho, volta e tenta outro...).  

Todo compilador precisa de um automato deterministico para descobrir se a syntax está válida.  
Como não existe nenhum teorema que mostre que dada uma CFG existe um PDA para representa-la, foram desenvolvidas técnicas para "possívelmente" contruir um PDA.  
Em outras palavras, essas técnicas tentam criar o PDA mas se não conseguirem não quer dizer que não exista.  

Técnicas famosas:
LL (**L**eft **L**eft)  
LR (**L**eft **R**ight)  

LR é dita muito mais poderosa do que a LL e bem mais complicada.  

## Exemplos
Representando uma lista (L) de identificadores (ID) separados por virgula, sendo que essa lista pode ser vazia (LV).  
`LV = ε | L`  
`L = ID | ID ',' L`  
Essa estrutura é problemática para o LL mas não para o LR.  

Outras maneiras de representar lista.  
`LV = ε | L`  
`L = ID | L ',' ID`  
Essa estrutura não melhora o problema do LL, apenas piora.  

Outra maneira de representar lista, onde L1 é uma lista não vaiza.  
`LV = ε | L`  
`L = ID | L1 ',' L1`  
O problema dessa é ambiguidade, várias formas de chegar na mesma resposta.  

### LL
Esse método envolve observar o próximo token esperado  
`S = value '+' value | '-' value`  
Ele vai ler o primeiro token, ver se é `value` ou ver se é `-` e seguir o caminho desse token.  

O problema da técnica envolve ambiguidade.  
`S = value '+' value | value '-' value`  
Essa técnica vai dar erro pois não sabera qual caminho tomar nesse caso que a leitura esperada de ambos é um value.  

Outro problema dessa técnica é a recursão a esquerda.  
`expression_list = expression | expression\_list ',' expression`  
Neste caso se você receber como entrada: `expression , expression`  
Iria tomar o seguinte caminho: `expression_list` >> `expression_list ',' expression` >> `expression_list ',' expression ',' expression` >> ...  

### LR
Consegue aceitar quase todos os casos que a LL não conseguia aceitar.  

### Baseados em automato de pilha
LL - Mantem na pilha o que falta ler  
LR - Mantem na pilha o que já foi lido  

#### Exemplo LL
Gramática usada:  
`S = L$`  
`L = ε | L1`  
`L1 = ID | ID ',' L1`  
`ID = a | b | c | d`  

Entrada: `a,b,c,d`  

No começo do LL a pilha contém o que se deseja ler.  

| Pilha |
| ----- |
| d     |
| ,     |
| c     |
| ,     |
| b     |
| ,     |
| a     |

| Pilha |
| ----- |
| ID    |
| ,     |
| c     |
| ,     |
| b     |
| ,     |
| a     |

| Pilha |
| ----- |
| L1    |
| ,     |
| c     |
| ,     |
| b     |
| ,     |
| a     |

| Pilha |
| ----- |
| L1    |
| ,     |
| ID    |
| ,     |
| b     |
| ,     |
| a     |

| Pilha |
| ----- |
| L1    |
| ,     |
| b     |
| ,     |
| a     |

| Pilha |
| ----- |
| L1    |
| ,     |
| ID    |
| ,     |
| a     |

| Pilha |
| ----- |
| L1    |
| ,     |
| a     |

| Pilha |
| ----- |
| L1    |
| ,     |
| ID    |

| Pilha |
| ----- |
| L1    |

| Pilha |
| ----- |
| L     |

#### Exemplo LR
LR faz a leitura dos estados e cria uma máquina de estados justamente das possibilidade que poderia ir, então ele não tem o problema de ir abrindo e apenas depois descobrir que não consegue fazer pois de um estado ele sabe qual as possibilidades para quais ele pode expandir.  

No começo do LL a pilha contém o que já foi lido.  

| Pilha |
| ----- |
|       |

![LR Exemplo](LRExample.jpg)  

SLR  
LALR  
LR(1)  
