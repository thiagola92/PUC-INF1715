define i32 @nome(i32) {
  %2 = alloca i32
  store i32 %0, i32* %2
  %3 = alloca i32
  %4 = load i32, i32* %3
  ret i32 %4
}



