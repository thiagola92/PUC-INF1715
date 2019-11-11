define void @main() {
  %label1 = alloca i32
  %label2 = alloca i32
  store i32 32, i32* %label2
  %label3 = load i32, i32* %label2
  store i32 %label3, i32* %label1
  ret void
}



