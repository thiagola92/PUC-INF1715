@c = global i32 0
define i32 @fn() {
  ret i32 97
}

define void @main() {
  %label1 = add i32 98, (null)
  store i32 %label1, i32* @c
  ret void
}



