// Nome: Thiago Lages de Alencar
// Matricula: 1721629

#include"util.h"

void throw_malloc_error() {
  printf("malloc error: no memory space for malloc\n");
  exit(2);
}

void* safe_malloc(size_t size) {
  void* p = malloc(size);
  
  if(p != NULL)
    return p;
  
  throw_malloc_error();
  return NULL;
}

void* safe_realloc(void* pointer, size_t size) {
  void* p = realloc(pointer, size);
  
  if(p != NULL)
    return p;
  
  throw_malloc_error();
  return NULL;
}

void print_with_indentation(int indentation, const char* template, ...) {
  va_list list;
  va_start(list, template);

  for (int i = 0; i < indentation; i++)
    printf("  ");

  vprintf(template, list);
  puts("");

  va_end(list);
}