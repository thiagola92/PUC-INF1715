@c = global i32 0
define i32 @fn() {
  %label1 = alloca i32
  store i32 97, i32* %label1
  %label2 = load i32, i32* %label1
  ret i32 %label2
}

define void @main() {
  %label1 = alloca i32
  store i32 98, i32* %label1
  %label2 = load i32, i32* %label1
  %label3 = add i32 %label2, (null)
  store i32 %label3, i32* @c
  ret void
}



