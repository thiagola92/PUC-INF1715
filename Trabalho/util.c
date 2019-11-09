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

void safe_free(void* pointer) {
  if(pointer != NULL)
    free(pointer);
}

/*
Returns the string formated so you can print in the future.
Use only the size needed to hold the string.

Example:
char* str = format_string("%s = alloca %s\n", id, type);
char* str = format_string("store %s %s, %s* %s\n", type, id, type, id);
*/
char* format_string(char* format, ...) {
  int size;
  char* str;

  va_list arguments;
  va_list backup_arguments;

  va_start(arguments, format);
  va_copy(backup_arguments, arguments);

  size = vsnprintf(NULL, 0, format, arguments);
  size = size + 1;

  str = (char*)malloc(sizeof(char) * size);
  vsnprintf(str, size, format, backup_arguments);

  va_end(arguments);

  return str;
}