#include<stdlib.h>

int nome0 = 1;
int nome1 = 1;
float nome2 = 2.0;
char nome3 = '0';
int* nome4 = NULL;
int nome5[] = {1,2,3};
int** nome6 = NULL;

void nome7() {
}

int nome8() {
  return 1;
}

int nome9() {
  return nome0;
}

int nome10(int a) {
  return nome0;
}

int nome11(int a, float b) {
  return nome0;
}

int nome12() {
  return nome9();
}

int nome13() {
  return nome13();
}

void nome14() {
  int a;
  {
    int a;
  }
}

void nome15(int a) {

}

void nome16() {
  int a = 16;
}

void nome17(int a) {
  int b;
}

void nome18(int a) {
  int b = 1;
}