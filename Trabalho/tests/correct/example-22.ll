define void @first(i32) {
  %2 = alloca i32
  store i32 %0, i32* %2
  ret void
}
define void @main() {
  %1 = alloca i32
  ret void
}


