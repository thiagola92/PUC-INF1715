define void @nome() {
  %label1 = alloca i32
  %label2 = alloca i32
  store i32 97, i32* %label2
  %label3 = load i32, i32* %label2
  store i32 %label3, i32* %label1
  %label4 = alloca i32
  store i32 97, i32* %label4
  %label5 = load i32, i32* %label4
  store i32 %label5, i32* %label1
  ret void
}



