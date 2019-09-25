#include"node.h"

struct Node {
	Node* left;
	Node* right;
};

Node* create_node() {
	Node* n = (Node*)malloc(sizeof(Node));
	return n;
}

Node* create_node_bool(const int b) {
	Node* n = (Node*)malloc(sizeof(Node));
	return n;
}

Node* create_node_char(const char c) {
	Node* n = (Node*)malloc(sizeof(Node));
	return n;
}

Node* create_node_int(const int i) {
	Node* n = (Node*)malloc(sizeof(Node));
	return n;
}

Node* create_node_float(const int f) {
	Node* n = (Node*)malloc(sizeof(Node));
	return n;
}

Node* create_node_string(const char* s) {
	Node* n = (Node*)malloc(sizeof(Node));
	return n;
}
