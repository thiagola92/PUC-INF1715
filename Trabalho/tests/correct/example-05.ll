define i1 @first() {
  ret i1 1
}

define i1 @seventh(i1) {
  %2 = alloca i1
  store i1 %0, i1* %2
  ret i1 %2
}


