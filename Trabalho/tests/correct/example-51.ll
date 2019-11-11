define void @main() {
  %label1 = alloca i32
  %label2 = alloca i32
  store i32 97, i32* %label2
  %label3 = load i32, i32* %label2
  %label4 = alloca i32
  store i32 98, i32* %label4
  %label5 = load i32, i32* %label4
  %label6 = icmp slt i32 %label3, %label5
  %label7 = zext i1 %label6 to i32
  store i32 %label7, i32* %label1
  ret void
}



