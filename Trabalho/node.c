// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#include"node.h"

Node* create_node_bool(const int b) {
	Node* node = (Node*)safe_malloc(sizeof(Node));

	node->tag = DATA_BOOLEAN;
	node->number_of_childs = 0;
	node->content.b = b;

	return node;
}

Node* create_node_char(const char c) {
	Node* node = (Node*)safe_malloc(sizeof(Node));

	node->tag = DATA_CHARACTER;
	node->number_of_childs = 0;
	node->content.c = c;

	return node;
}

Node* create_node_int(const int i) {
	Node* node = (Node*)safe_malloc(sizeof(Node));

	node->tag = DATA_INTEGER;
	node->number_of_childs = 0;
	node->content.i = i;

	return node;
}

Node* create_node_float(const int f) {
	Node* node = (Node*)safe_malloc(sizeof(Node));

	node->tag = DATA_FLOAT;
	node->number_of_childs = 0;
	node->content.f = f;

	return node;
}

Node* create_node_string(const char* s) {
	Node* node = (Node*)safe_malloc(sizeof(Node));

	node->tag = DATA_STRING;
	node->number_of_childs = 0;
	node->content.s = s;

	return node;
}

Node* create_node_zero_child(TAG tag) {
	Node* node = (Node*)safe_malloc(sizeof(Node));

	node->tag = tag;
	node->number_of_childs = 0;

	return node;
}

Node* create_node_one_child(TAG tag, Node* child) {
	Node* node = (Node*)safe_malloc(sizeof(Node));

	if(node == NULL)
		throw_error();

	node->tag = tag;
	node->number_of_childs = 1;
	node->content.n = (Node**)safe_malloc(sizeof(Node*) * node->number_of_childs);

	node->content.n[0] = child;

	return node;
}

Node* create_node_two_child(TAG tag, Node* child0, Node* child1) {
	Node* node = (Node*)safe_malloc(sizeof(Node));

	if(node == NULL)
		throw_error();

	node->tag = tag;
	node->number_of_childs = 2;
	node->content.n = (Node**)safe_malloc(sizeof(Node*) * node->number_of_childs);

	node->content.n[0] = child0;
	node->content.n[1] = child1;

	return node;
}

Node* create_node_three_child(TAG tag, Node* child0, Node* child1, Node* child2) {
	Node* node = (Node*)safe_malloc(sizeof(Node));

	if(node == NULL)
		throw_error();

	node->tag = tag;
	node->number_of_childs = 3;
	node->content.n = (Node**)safe_malloc(sizeof(Node*) * node->number_of_childs);

	node->content.n[0] = child0;
	node->content.n[1] = child1;
	node->content.n[2] = child2;

	return node;
}

Node* create_node_four_child(TAG tag, Node* child0, Node* child1, Node* child2, Node* child3) {
	Node* node = (Node*)safe_malloc(sizeof(Node));

	if(node == NULL)
		throw_error();

	node->tag = tag;
	node->number_of_childs = 4;
	node->content.n = (Node**)safe_malloc(sizeof(Node*) * node->number_of_childs);

	node->content.n[0] = child0;
	node->content.n[1] = child1;
	node->content.n[2] = child2;
	node->content.n[3] = child3;

	return node;
}
