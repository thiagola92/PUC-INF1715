define void @first(i32) {
  %label2 = alloca i32
  store i32 %0, i32* %label2
  ret void
}

define void @main() {
  %label1 = alloca i32
  %label2 = alloca i32
  store i32 1, i32* %label2
  %label3 = load i32, i32* %label2
  %label4 = alloca i32
  store i32 1, i32* %label4
  %label5 = load i32, i32* %label4
  %label6 = add i32 %label3, %label5
  store i32 %label6, i32* %label1
  ret void
}



