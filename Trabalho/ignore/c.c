#include<stdlib.h>
#include<stdio.h>

void test3() {
  int* a;
  a = malloc(4 * 3);

  a[0] = 10;
  printf("%d", a[0]);
}