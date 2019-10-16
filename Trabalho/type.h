#ifndef _TYPE_
#define _TYPE_

typedef enum TYPE {
  TYPE_BOOLEAN,
  TYPE_CHARACTER,
  TYPE_INTEGER,
  TYPE_FLOAT,
  TYPE_STRING,
  TYPE_ARRAY,
} type;

void type_node(Node* node);

#endif
