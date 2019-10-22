// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#include"node.h"

Node* malloc_node() {
	Node* node = (Node*)safe_malloc(sizeof(Node));

	node->number_of_childs = 0;
	node->definition = NULL;
	node->type = VOID;
	
	return node;
}

Node* create_node_bool(const int b) {
	Node* node = malloc_node();

	node->tag = DATA_BOOLEAN;
	node->content.b = b;

	return node;
}

Node* create_node_char(const char c) {
	Node* node = malloc_node();

	node->tag = DATA_CHARACTER;
	node->content.c = c;

	return node;
}

Node* create_node_int(const int i) {
	Node* node = malloc_node();

	node->tag = DATA_INTEGER;
	node->content.i = i;

	return node;
}

Node* create_node_float(const int f) {
	Node* node = malloc_node();

	node->tag = DATA_FLOAT;
	node->content.f = f;

	return node;
}

Node* create_node_string(const char* s) {
	Node* node = malloc_node();

	node->tag = DATA_STRING;
	node->content.s = s;

	return node;
}

Node* create_node_zero_child(TAG tag) {
	Node* node = malloc_node();

	node->tag = tag;

	return node;
}

Node* create_node_one_child(TAG tag, Node* child) {
	Node* node = malloc_node();

	node->tag = tag;
	node->number_of_childs = 1;
	node->content.n = (Node**)safe_malloc(sizeof(Node*) * node->number_of_childs);

	node->content.n[0] = child;

	return node;
}

Node* create_node_two_child(TAG tag, Node* child0, Node* child1) {
	Node* node = malloc_node();

	node->tag = tag;
	node->number_of_childs = 2;
	node->content.n = (Node**)safe_malloc(sizeof(Node*) * node->number_of_childs);

	node->content.n[0] = child0;
	node->content.n[1] = child1;

	return node;
}

Node* create_node_three_child(TAG tag, Node* child0, Node* child1, Node* child2) {
	Node* node = malloc_node();

	node->tag = tag;
	node->number_of_childs = 3;
	node->content.n = (Node**)safe_malloc(sizeof(Node*) * node->number_of_childs);

	node->content.n[0] = child0;
	node->content.n[1] = child1;
	node->content.n[2] = child2;

	return node;
}

Node* create_node_four_child(TAG tag, Node* child0, Node* child1, Node* child2, Node* child3) {
	Node* node = malloc_node();

	node->tag = tag;
	node->number_of_childs = 4;
	node->content.n = (Node**)safe_malloc(sizeof(Node*) * node->number_of_childs);

	node->content.n[0] = child0;
	node->content.n[1] = child1;
	node->content.n[2] = child2;
	node->content.n[3] = child3;

	return node;
}

// not efficiency, should i exchange space for speed?
Node* append_node(TAG tag, Node* child0, Node* child1) {
	Node* node;
	
	if(child0->tag != tag)
	  return create_node_two_child(tag, child0, child1);
	
	node = malloc_node();
	
	node->tag = tag;
	node->number_of_childs = child0->number_of_childs + 1;
	node->content.n = (Node**)safe_malloc(sizeof(Node*) * node->number_of_childs);
  
  for(int i=0; i < child0->number_of_childs; i++)
    node->content.n[i] = child0->content.n[i];
  
  node->content.n[node->number_of_childs - 1] = child1;
  free(child0);
  
  return node;
}
