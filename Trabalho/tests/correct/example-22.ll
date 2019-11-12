define void @first(i32) {
  %label2 = alloca i32
  store i32 %0, i32* %label2
  ret void
}

define void @main() {
  %label1 = alloca i32
  %label2 = add i32 1, 1
  store i32 %label2, i32* %label1
  ret void
}



