define void @main() {
  %label1 = alloca i32
  %label2 = sub nsw i32 0, (null)
  store i32 %label2, i32* %label1
  ret void
}



