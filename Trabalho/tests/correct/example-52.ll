define void @main() {
  %label1 = alloca i32
  %label2 = icmp slt float (null), 1.000000
  %label3 = zext i1 %label2 to i32
  store i32 %label3, i32* %label1
  ret void
}



