#include"binding.h"

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
  Node* define_node = get_symbol(scope, name);
  
  if(define_node == NULL)
    throw_binding_error(node->content.s);
    
  //todo
  //binde with define_node
}

void check_node(Scope* scope, Node* node) {
  switch(node->tag) {
    case DEFINE_VARIABLE:
      insert_symbol(scope, node);
      break;
    case DEFINE_FUNCTION:
      insert_symbol(scope, node);
      break;
    case VARIABLE:
      binding(scope, node);
      break;
    case FUNCTION_CALL:
      binding(scope, node);
      break;
    default:
      for(int i = 0; i < node->number_of_childs; i++)
				check_node(scope, node->content.n[i]);
      break;
  }
}
