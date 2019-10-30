// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#ifndef _UTIL_
#define _UTIL_

#include<stdlib.h>
#include<stdio.h>

void throw_malloc_error();
void* safe_malloc(size_t size);
void* safe_realloc(void* pointer, size_t size);

#endif
