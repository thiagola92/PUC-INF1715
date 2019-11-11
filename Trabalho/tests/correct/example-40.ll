@c = global i32 0
define void @main() {
  %label1 = alloca i32
  store i32 1, i32* %label1
  %label2 = load i32, i32* %label1
  store i32 %label2, i32* @c
  ret void
}



