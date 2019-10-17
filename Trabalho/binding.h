// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#ifndef _BINDING_
#define _BINDING_

#include"symbol_table.h"

void throw_binding_error(const char* name);

void start_binding(Node* node);
void binding(Scope* scope, Node* node);
void check_node(Scope* scope, Node* node);

#endif
