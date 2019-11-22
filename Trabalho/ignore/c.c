#include<stdlib.h>
#include<stdio.h>

int main() {
  char* a;
  a = malloc(4 * 3);

  a[0] = 'o';
  a[1] = 'i';
  a[2] = '\0';

  printf("%s", a);
}