// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#include<string.h>
#include"node.h"

typedef struct scope {
  struct symbol* symbol;
  
  struct scope* previous;
  struct scope* next;
} Scope;

typedef struct symbol {
  Node* node;
  
  struct symbol* previous;
  struct symbol* next;
} Symbol;

Scope* enter_scope(Scope* scope);
Scope* leave_scope(Scope* scope);

void insert_symbol(Scope* scope, Node* node);
Node* get_symbol(Scope* scope, const char* name);
void free_symbols(Symbol* symbol);
