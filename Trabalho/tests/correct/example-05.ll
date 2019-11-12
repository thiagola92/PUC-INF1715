define i32 @first() {
  ret i32 1
}

define i32 @seventh(i32) {
  %label2 = alloca i32
  store i32 %0, i32* %label2
  %label3 = load i32, i32* %label2
  ret i32 %label3
}



