// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#include"node.h"

Node* malloc_node(TAG tag) {
  Node* node = (Node*)safe_malloc(sizeof(Node));

  node->tag = tag;
  node->number_of_childs = 0;
  node->definition = NULL;
  node->type = NULL;
  
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

Node* create_node_boolean(int b) {
  Node* node_boolean = malloc_node(DATA_BOOLEAN);
  Node* type_boolean = malloc_node(TYPE_BOOLEAN);
  
  node_boolean->content.i = b;
  node_boolean->type = type_boolean;
  
  return node_boolean;
}

Node* create_node_character(int c) {
  Node* node_character = malloc_node(DATA_CHARACTER);
  Node* type_character = malloc_node(TYPE_CHARACTER);
  
  node_character->content.i = c;
  node_character->type = type_character;
  
  return node_character;
}

Node* create_node_integer(int i) {
  Node* node_integer = malloc_node(DATA_INTEGER);
  Node* type_integer = malloc_node(TYPE_INTEGER);
  
  node_integer->content.i = i;
  node_integer->type = type_integer;
  
  return node_integer;
}

Node* create_node_float(float f) {
  Node* node_float = malloc_node(DATA_FLOAT);
  Node* type_float = malloc_node(TYPE_FLOAT);
  
  node_float->content.f = f;
  node_float->type = type_float;
  
  return node_float;
}

Node* create_node_string(TAG tag, const char* s) {
  Node* node_string = malloc_node(tag);
  Node* type_array = malloc_node(TYPE_ARRAY);
  Node* type_character = malloc_node(TYPE_CHARACTER);
  
  node_string->content.s = s;
  node_string->type = type_array;
  type_array->type = type_character;
  
  return node_string;
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
