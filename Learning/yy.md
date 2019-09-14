# yy
Função/variáveis que são utilizadas durante flex.  
Para acessar elas é necessário declarar no seu código C que elas estão presentes em outro código  
Ex: `extern int yylex();`  

### yylex()
Função para fazer a leitura de um token.  
Retorna quando encontrar o fim do arquivo ou encontrar um return.  
Uma chamada seguinte a função iria continuar a busca pelo próximo token.  

```
%%
"a"	{ printf("Don't stop\n"); }
"b"	{ return 10; }
.	;
%%
```
A função não iria finalizar ao ler "a" mas iria finalizar ao ler "b".  

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
Função chamada sempre que termina der ler um arquivo.  
Deve se aproveitar essa função para atualizar o `yyin` se possuir mais arquivos para ler.  

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

### yyparse
Função chamada para tentar fazer um parse da gramática que você montou.  
Não é preciso mais chamar o `yylex()` pois o método chama sempre que necessário para reconhecer a gramática.  

```C
yyparse();
```

### yylval
Union onde deve ser armazenado os valores associados aos tokens encontrados.  

```
%%
"a"		{ yylval.c = 'a'; return TOKEN_LETTER; }
{STRING}	{ yylval.s = strdup(yylex); return TOKEN_STRING; }
.		;
%%
```

Antes disso deve ser declarado no bison o formato da union  
```
%union {
	char c;
	char* s;
}
```

### yyerror
Função chamada em caso de erro durante o `yyparse()`.  
Após a execução da função o bison supõe que você corrigiu o problema e continua normalmente.  

```C
void yyerror(char* s) {
	printf("%s\n", s);
}
```
