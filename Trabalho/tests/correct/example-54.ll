define i32 @nome(i32) {
  %label2 = alloca i32
  store i32 %0, i32* %label2
  %label3 = alloca i32
  %label4 = load i32, i32* %label2
  store i32 %label4, i32* %label3
  %label5 = load i32, i32* %label3
  ret i32 %label5
}



