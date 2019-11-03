// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#ifndef _UTIL_
#define _UTIL_

#include<stdlib.h>
#include<stdio.h>
#include<stdarg.h>

void throw_malloc_error();

void* safe_malloc(size_t size);
void* safe_realloc(void* pointer, size_t size);

void print_with_indentation(int indentation, const char* template, ...);

#endif
