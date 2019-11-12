define void @main() {
  %label1 = alloca i32
  %label2 = add i32 97, 1
  store i32 %label2, i32* %label1
  ret void
}



