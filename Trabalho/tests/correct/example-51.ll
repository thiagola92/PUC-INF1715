define void @main() {
  %label1 = alloca i32
  %label2 = icmp slt i32 97, 98
  %label3 = zext i1 %label2 to i32
  store i32 %label3, i32* %label1
  ret void
}



