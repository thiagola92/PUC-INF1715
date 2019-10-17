// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#include"util.h"

void throw_malloc_error() {
	printf("Malloc error: No memory space for malloc\n");
	exit(2);
}

void* safe_malloc(size_t size) {
	void* p = malloc(size);
	
	if(p != NULL)
	  return p;
	
  throw_malloc_error();
  return NULL;
}
