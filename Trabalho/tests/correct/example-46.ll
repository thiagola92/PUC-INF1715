define void @main() {
  %label1 = alloca i32*
  store i32* (null), i32** %label1
  %label2 = alloca i32
  store i32 97, i32* %label2
  %label3 = load i32, i32* %label2
  %label4 = icmp eq i32 (null), %label3
  %label5 = zext i1 %label4 to i32
  %label6 = icmp eq i32 %label5, 1
  br i1 %label6, label %label7, label %label8

  label7:
  br label %label8

  label8:
  ret void
}



