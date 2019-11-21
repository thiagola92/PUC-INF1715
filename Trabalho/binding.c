// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#include"binding.h"

#define true 1
#define false 0

void throw_binding_error(const char* name) {
  printf("binding error: no definition for %s\n", name);
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

void binding_return(Scope* scope, Node* node) {
  Node* definition_node = get_last_symbol(scope, DEFINE_FUNCTION);
  
  if(definition_node == NULL)
    throw_binding_error("return");
    
  node->definition = definition_node;
}

void check_node(Scope* scope, Node* node) {
  int leave_scope_at_end = false;

  switch(node->tag) {
    case VARIABLE:
    case FUNCTION_CALL:
    case EXPRESSION_VARIABLE:
      binding(scope, node);
      break;
    case RETURN:
      binding_return(scope, node);
      break;
    case DEFINE_VARIABLE:
    case PARAMETER:
      insert_symbol(scope, node);
      break;
    case DEFINE_FUNCTION:
      insert_symbol(scope, node);
      scope = enter_scope(scope);
      leave_scope_at_end = true;
      break;
    case BLOCK:      
      scope = enter_scope(scope);
      leave_scope_at_end = true;
      break;
    default:
      break;
  }
  
  for(int i = 0; i < node->number_of_childs; i++)
    check_node(scope, node->content.n[i]);
    
  if(leave_scope_at_end == true)
    scope = leave_scope(scope);
}
