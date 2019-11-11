define void @main() {
  %label1 = alloca i32
  %label2 = alloca i32
  %label3 = alloca i32
  store i32 (null), i32* %label1
  store i32 (null), i32* %label2
  store i32 (null), i32* %label1
  store i32 (null), i32* %label2
  ret void
}



