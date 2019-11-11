define i32 @fn() {
  %label1 = alloca i32
  store i32 99, i32* %label1
  %label2 = load i32, i32* %label1
  ret i32 %label2
}

define void @main() {
  %label1 = alloca i32
  %label2 = alloca i32
  %label3 = alloca i32
  store i32 98, i32* %label3
  %label4 = load i32, i32* %label3
  store i32 %label4, i32* %label1
  %label5 = alloca i32
  store i32 97, i32* %label5
  %label6 = load i32, i32* %label5
  %label7 = load i32, i32* %label1
  %label8 = add i32 %label6, %label7
  %label9 = add i32 %label8, (null)
  store i32 %label9, i32* %label2
  ret void
}



