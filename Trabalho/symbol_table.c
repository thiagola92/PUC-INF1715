// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#include"symbol_table.h"

Scope* enter_scope(Scope* scope) {
  Scope* new_scope = (Scope*)safe_malloc(sizeof(Scope));
  
  new_scope->symbol = NULL;
  new_scope->last_symbol = NULL;
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
  Symbol* new_symbol = (Symbol*)safe_malloc(sizeof(Symbol));
  Symbol* old_last_symbol = scope->last_symbol;
  
  scope->last_symbol = new_symbol;
  
  new_symbol->node = node;
  new_symbol->next = NULL;
  
  if(old_last_symbol == NULL) {
    scope->symbol = new_symbol;
    return;
  }
  
  old_last_symbol->next = new_symbol;
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

void free_scope(Scope* scope) {
  if(scope == NULL)
    return;
    
  free_scope(scope->next);
  free(scope);
}

Node* get_last_symbol(Scope* scope, TAG tag) {
  Symbol* last_symbol = scope->last_symbol;
  
  // last symbol exist and is the symbol wanted
  if(last_symbol != NULL && last_symbol->node->tag == tag)
    return last_symbol->node;
  
  // no symbol and no more scopes to search for
  if(last_symbol == NULL && scope->previous == NULL)
    return NULL;
    
  return get_last_symbol(scope->previous, tag);
}
