define i32 @fn() {
  %1 = alloca i32
  store i32 99, i32* %1
  %2 = load i32, i32* %1
  ret i32 %2
}

define void @main() {
  %1 = alloca i32
  %2 = alloca i32
  ret void
}



