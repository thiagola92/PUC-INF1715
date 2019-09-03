# Analisador léxico "na mão"

```C
for(;;) {
  switch(current) {
    case ' ':
    case '\t':
      next();
      break;
    case '<':
      next();
      if(current == '=') {
        next();
        return TOKEN_LESS_EQUAL;
      } else if(current == '<') {
        next();
        if(current == '=') {
          next();
          return TOKEN_SHIFT_LEFT_EQUAL;
        } else {
          return TOKEN_SHIFT_LEFT;
        }
      }
      break;
    case '/':
      next();
      if(current == '/') {
        do {
          next();
        } while(current == '\n' && current != EOF);
      }
    .
    .
    .
  }
}
```

Note como em todo `else` nós **não** damos `next()`, pois se entramos no `else` nós sabemos que é o começo de um novo token e já identificamos o token anterior.

## Tokens
Alguns analisadores léxicos retornam o próprio char quando o token retornado é um único char existente na linguagem.  

`EXP = EXP TOKEN_ADD EXP`  
TOKEN_ADD é apenas uma representação do token de sinal de mais.  
`EXP = EXP '+' EXP`  

## Palavras reservadas
Para palavras reservadas como `if`, `while`, `int`, etc. Nós não implementamos vários if's para cada letra da palavra.  

**INCORRETO**  
```C
switch() {
  case 'w':
    next();
    if(current == 'h') {
      next();
      if(current == 'i') {
        next();
        if(current == 'l') {
          next();
          if(current == 'e') {
            next();
            return TOKEN_WHILE;
          } else {
            return TOKEN_STRING;
          }
        } else {
          return TOKEN_STRING;
        }
      } else {
        return TOKEN_STRING;
      }
    } else {
      return TOKEN_STRING;
    }
    break;
}
```

Fazer uma sequência de if's para cada palavra reservada é complicado e desnecessário.  

**CORRETO**  
Em vez de tentar identificar o `while`, é mais fácil identificar que é uma palavra, retorna-la e verificar se bate com alguma palavra reservada.  

```C
if(strcmp(word, "while"))
  return TOKEN_WHILE;
else if(strcmp(word, "if"))
  return TOKEN_IF;
else if(strcmp(word, "int"))
  return TOKEN_INT;
...
```

## Limite de tamanho

* Identificadores
  * Nome de funções/variáveis/...
  * Normalmente 80 é razoável
* Numerais
  * Normalmente 80 é razoável
  * Se tiver BIGINT tem que ser dinâmico
* Literais
  * Buffer dinâmico

# Analisador Léxico com Lex/Flex
Baseado em expressões regulares.

- Linguagem vazia
  - ∅
- String vazia
  - ε
- Simbolo individuais
  - a
  - b
  - c
  - d
  - e
  - ...
- Concatenação de expressões
  - e<sub>1</sub>e<sub>2</sub>
- União
  - e<sub>1</sub> + e<sub>2</sub>
- Fecho de Kleene
  - e<sup>\*</sup>

## Lex/Flex
  - Ponto de interrogação `?`
    - Expressão antes do ponto de interrogação ou não existir
  - Barra vertical `|`
    - Expressão antes ou expressão após a barra
    - `gato|a`
    - `busque pela letra: a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z`
      - Pode acabar sendo cansativo botar todas possibilidades e barra entre elas
      - Por isso foi definido que tudo dentro de colchetes `[]` é tratado como ou
      - `[abcdefghijklmnopqrstuvwxyz]`
        - Como escrever isso ainda pode cansativo, fizeram que você pode definir range dentro dos colchetes
        - `[a-z]`
	- `[A-Z]`
	- `[a-Z]`
	- `[h-y]`
	- `[0-9]`
	- `[5-9]`
	  - Também é possível fazer a negação de tudo que estiver dentro dos colchetes
	  - `[^abcd]`
	  - `[^a-z]`
	  - `[^2-9]`
  - Asteristicos `*`
    - Uma ou mais vezes a expressão antes do asteristico
  - Contra barra `\`
    - Escapa o caracter especial, ou seja, ele é utilizado como caracter normal
    - `\?`
    - `\[`
    - `\|`
    - `\(`
    - `\\`
  - Entre aspas `"expressao"`
    - Literalmente os caracteres entre as aspas
    - `"texto qualquer"`
      - Pode ser usado para escapar caracteres especiais
      - `"\n"`

### Regras
Expressão regular: `[a-zA-Z_]*`  
Entrada: "count"  

Essa expressão vai casar várias vezes com essa entrada, pois as seguintes substrings batem com a expressão regular:  
""  
"c"  
"co"  
"cou"  
"coun"  
"count"  
Caso ocorra mais que um casamento com a expressão regular, retorna o maior deles. No nosso caso "count".  

---

Expressão regular: `[a-zA-Z_]*`  
Entrada: "count point"  

Essa expressão vai casar duas vezes com essa entrada, pois duas substrings batem com a expressão regular:  
"count"  
"point"  
Caso ocorra mais que um casamento com a expressão regular, retorna o primeiro casamento. No nosso caso "count".  

---

Primeiro deve se analisar a regra do maior casamento e depois a regra do primeiro casamento.  

