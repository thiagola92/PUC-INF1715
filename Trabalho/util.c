#include"util.h"

void throw_error() {
	printf("No memory space for malloc\n");
	exit(2);
}

void* safe_malloc(size_t size) {
	void* p = malloc(size);
	
	if(p != NULL)
	  return p;
	
  throw_error();
  return NULL;
}
