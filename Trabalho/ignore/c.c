#include<stdlib.h>

void test3() {
  int* a;
  a = malloc(4 * 3);

  a[0] = 10;
}

void test2() {
  float* a;
  a = malloc(4 * 3);

  a[0] = 10;
}

void test1() {
  char* a;
  a = malloc(4 * 3);
}