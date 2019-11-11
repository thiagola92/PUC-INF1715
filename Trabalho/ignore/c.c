#include<stdlib.h>
#include<stdio.h>

int nome(int a, int b) {
  while(a) {
    a = b;
  }
  while(b) {
    b = a;
  }
  return a;
}