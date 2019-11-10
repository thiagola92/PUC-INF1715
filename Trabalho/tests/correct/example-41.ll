@c = global i32 0
define i32 @fn() {
  %1 = alloca i32
  store i32 97, i32* %1
  %2 = load i32, i32* %1
  ret i32 %2
}

define void @main() {
  ret void
}



