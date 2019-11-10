define i32 @first() {
  %1 = alloca i32
  store i32 1, i32* %1
  %2 = load i32, i32* %1
  ret i32 %2
}

define i32 @seventh(i32) {
  %2 = alloca i32
  store i32 %0, i32* %2
  %3 = load i32, i32* %2
  ret i32 %3
}



