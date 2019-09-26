// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#include<stdio.h>
#include<stdlib.h>
#include<string.h>

#include"node.h"

struct Node {
	char* tag;

	union content {
		char c;
		int i;
		float f;
		char* s;
	} content;

	Node* childs;
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
