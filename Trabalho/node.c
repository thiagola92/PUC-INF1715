// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#include"node.h"

Node* malloc_node(TAG tag) {
  Node* node = (Node*)safe_malloc(sizeof(Node));

  node->tag = tag;
  node->number_of_childs = 0;
  node->definition = NULL;
  node->type = VOID;
  
  return node;
}

Node* create_node(TAG tag, int number_of_childs, ...) {
  Node* node = malloc_node(tag);
  
  va_list childs_list;
  va_start(childs_list, number_of_childs);

  node->tag = tag;
  node->number_of_childs = number_of_childs;
  node->content.n = (Node**)safe_malloc(sizeof(Node*) * number_of_childs);
  
  for(int i = 0; i < number_of_childs; i++)
    node->content.n[i] = (Node*)va_arg(childs_list, void*);
    
  va_end(childs_list);
  
  return node;
}

Node* create_data_node(TAG tag, ...) {
  Node* node = malloc_node(tag);
  
  va_list list;
  va_start(list, tag);
  
  switch(tag) {
    case DATA_BOOLEAN:
    case DATA_CHARACTER:
    case DATA_INTEGER:
      node->content.i = va_arg(list, int);
      break;
    case DATA_FLOAT:
      node->content.f = va_arg(list, double);
      break;
    case IDENTIFIER:
    case DATA_STRING:
      node->content.s = va_arg(list, char*);
      break;
    default:
      va_end(list);
      return NULL;
  }
    
  va_end(list);
  
  return node;
}

// not efficiency
Node* append_node(TAG tag, Node* child0, Node* child1) {  
  if(child0->tag != tag)
    return create_node(tag, 2, child0, child1);
  
  child0->number_of_childs += 1;
  child0->content.n = (Node**)safe_realloc(child0->content.n, sizeof(Node*) * child0->number_of_childs);
  child0->content.n[child0->number_of_childs - 1] = child1;
  
  return child0;
}
