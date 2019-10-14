// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#include"symbol_table.h"

Scope* enter_scope(Scope* scope) {
  Scope* new_scope = (Scope*)safe_malloc(sizeof(Scope));
  
  new_scope->symbol = NULL;
  new_scope->next = NULL;
  new_scope->previous = NULL;
  
  if(scope != NULL) {
    scope->next = new_scope;
    new_scope->previous = scope;
  }
  
  return new_scope;
}

Scope* leave_scope(Scope* scope) {
  Scope* old_scope = scope->previous;
  
  free_symbols(scope->symbol);
  free(scope);
  
  old_scope->next = NULL;
  
  return old_scope;
}

void insert_symbol(Scope* scope, Node* node) {
  Symbol* symbol = scope->symbol;
  Symbol* new_symbol = (Symbol*)safe_malloc(sizeof(Symbol));
  
  new_symbol->node = node;
  new_symbol->next = NULL;
  new_symbol->previous = NULL;
  
  if(scope->symbol == NULL) {
    scope->symbol = new_symbol;
    return;
  }
  
  while(symbol->next != NULL)
    symbol = symbol->next;
  
  symbol->next = new_symbol;
}

Node* get_symbol(Scope* scope, const char* name) {
  Symbol* symbol = scope->symbol;
  
  while(symbol != NULL) {
    const char* symbol_name = symbol->node->content.n[0]->content.s;
    
    if(strcmp(symbol_name, name) == 0)
      return symbol->node;
      
    symbol = symbol->next;
  }
  
  if(scope->previous == NULL)
    return NULL;
  
  return get_symbol(scope->previous, name);
}

void free_symbols(Symbol* symbol) {
  if(symbol == NULL)
    return;
    
  free_symbols(symbol->next);
  free(symbol);
}
