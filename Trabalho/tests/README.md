# Correct Tests

00: Comentários  
01: Variáveis com diversos nomes  
02: Variáveis com diversos tipos  
03: Funções com diversas quantidades de parâmetros  
04: Funções com diversos númereos de variáveis  
05: Funções retornando  
06: Declarar variáveis e chamar funções com diversos parâmetros  
07: Declarar variáveis e chamar função recursivamente  
08: if e else sem parênteses e vazios
09: Escopo de if e else com conteúdo  
10: if e else com parênteses  
11: while vazio, while com declaração, while com chamada de função, while com ambos  
12: assignment de variáveis de todos os tipos (bool, char, int, float, array, 'string')  
13: Matemática básica de inteiros com +, -, * e /  
14: Matemática básica de float com +, -, * e /  
15: Declarando hexadecimal float  
16: Expressões matemática com 3 de inteiros (com e sem parênteses)  
17: ==, ~=, <, >, <= e >= entre 2 inteiros  
18: Ordem de priorização entre && e ==, ~=, <, >, <= e >=  
19: Ordem de priorização entre calculos matemáticos e comparações  
20: Ordem de priorização entre && e ||  
21: Ordem de priorização entre * e +  
22: Escopo reconhecendo função declarada anteriormente  
23: Escopo entrando e saindo de funções  
24: Escopo chamando funções sem/com parâmetros  
25: Array de todos os tipos  
26: Cast entre float e inteiro utilizando constantes e variáveis  
27: Priorizar resolver cast do que matemática  
28: Parênteses não atrapalharem o cast final  
29: Utilizando array nas operações  
30: Chamar return sem nada  
31: Utilizando operações not dentro de if e else  
32: Criar array de arrays e armazena-lo  
33: Array de array de int receber um valor array de array de int  
34: Atribuir um char a um int  
35: Atribuir um int a um char  
36: Aritmética entre int e char  
37: Acessando posição de um (new [int]) sem botar numa variável  
38: Condição boolean dentro de if  
39: Cast automatico de character para integer  
40: Referenciar global  
41: Dentro da expressão 'a' é convertido para int e em um assignment é convertido para char  
42: Não precisa converter de int para char se lado esquerdo já for char  
43: cast em uma posição do array  
44: cast para o mesmo tipo em uma posição do array  
45: char é transformado para int automaticamente e transformado para char após o cast mas é aceito durante comparação int com char  
46: Comparando posição do array com char  
47: Sinal de negativo em int  
48: Sinal de negativo em char (pois é convertido para int)  
49: Sinal de negativo em float  
50: Sinal de negativo em uma expressão cast  
51: Operação de < com char  
52: Operação de < com char e float  
53: Olhar a geração de código para vários parametros e variáveis  
54: Olhar a geração de código para parametros, retorno e store  
55: Olhar a geração de código para strings  
56: Olhar a geração de código para string definindo char por char (como array faria)  
57: Olhar a geração de código para retorno de array  
58: Olhar a geração de código para retorno de string  
59: Olhar a geração de código para armazenar float  

# Wrongs Tests

00: Não comentar  
01: Nome de variável começar com número  
02: Nome de variável começando com aspas (como se fosse uma string)  
03: Espaço no nome de variável  
04: Variável sem ; no final  
05: Esquecer de botar : durante declaração  
06: Tentando declarar uma variável dentro do tipo do array  
07: Esquecer de fechar colchetes  
08: Nome de função começando com número  
09: Função sem parênteses nos parâmetros  
10: Terminar a lista de parâmetros com virgula  
11: Retornando expressão vazia  
12: Chamada de função com virgula a mais que necessário  
13: Chamada de função antes da declaração  
14: if sem chaves  
15: if e else sem chaves  
16: Chamada de função antes de declaração, dentro do if escopo  
17: Chamada de função antes de declaração, dentro do while escopo  
18: String sem fechar aspas  
19: Esquecer valor no final da matemática  
20: Hexadecimal com letras inválidas  
21: Character desconhecido  
22: Valor entre os colchetes do array deve ser do tipo inteiro  
23: Array de array de int receber um valor int  
24: Array de array de int receber um valor array de int  
25: Array de array de int receber um valor array de int  
26: Array de array de int receber um valor array de char  
27: Igualdade entre tipos diferentes e que não é possível converter  
28: Desigualdade entre tipos diferentes e que não é possível converter  
29: Aritimética entre tipos diferentes e que não é possível converter  
30: Condição do if não sendo boolean  
31: Conidção do while não sendo boolean  
32: Função void retornando valor e assignment esperando valor  
33: array de float armazenando array de int  
34: Comparando com < int com um new array  
35: Comparando com < int com boolean  
