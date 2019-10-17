// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#include"binding.h"

#define true 1
#define false 0

void print_symbols(Symbol* symbol) {
  while(symbol != NULL) {
    printf("Symbol: %s\n", symbol->node->content.n[0]->content.s);
    
    symbol = symbol->next;
  }
}

void print_scope(Scope* scope) {
  while(scope != NULL) {
    printf("Scope\n");
    print_symbols(scope->symbol);
    
    scope = scope->next;
  }
}

void print_scope_state(Scope* scope, const char* text) {
  print_scope(scope);
  printf("%s\n", text);
}

void throw_binding_error(const char* name) {
	printf("Bingind error: No definition for %s\n", name);
	exit(2);
}

void start_binding(Node* node) {
  Scope* scope = enter_scope(NULL);
  
  check_node(scope, node);
}

void binding(Scope* scope, Node* node) {
  const char* name = node->content.n[0]->content.s;
  Node* definition_node = get_symbol(scope, name);
  
  if(definition_node == NULL)
    throw_binding_error(name);
  
  node->definition = definition_node;
}

void check_node(Scope* scope, Node* node) {
  int leave_scope_at_end = false;

  switch(node->tag) {
    case DEFINE_VARIABLE:
      insert_symbol(scope, node);
      print_scope_state(scope, "=== DEFINE VARIABLE ===");
      break;
    case PARAMETER:
      insert_symbol(scope, node);
      print_scope_state(scope, "=== DEFINE PARAMETER ===");
      break;
    case VARIABLE:
      binding(scope, node);
      print_scope_state(scope, "=== BIND VARIABLE ===");
      break;
    case FUNCTION_CALL:
      binding(scope, node);
      print_scope_state(scope, "=== BIND FUNCTION CALL ===");
      break;
    case DEFINE_FUNCTION:
      insert_symbol(scope, node);
      print_scope_state(scope, "=== DEFINE FUNCTION ===");
      
      scope = enter_scope(scope);
      leave_scope_at_end = true;
      print_scope_state(scope, "=== ENTER FUNCTION ===");
      break;
    case BLOCK:      
      scope = enter_scope(scope);
      leave_scope_at_end = true;
      print_scope_state(scope, "=== ENTER BLOCK ===");
      break;
    default:
      break;
  }
  
  for(int i = 0; i < node->number_of_childs; i++)
    check_node(scope, node->content.n[i]);
    
  if(leave_scope_at_end == true) {
    scope = leave_scope(scope);
    print_scope_state(scope, "=== LEAVE SCOPE ===");
  }
}
