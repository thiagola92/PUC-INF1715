define void @main() {
  %label1 = alloca i32
  store i32 97, i32* %label1
  %label2 = load i32, i32* %label1
  %label3 = icmp eq i32 (null), %label2
  %label4 = zext i1 %label3 to i32
  %label5 = icmp eq i32 %label4, 1
  br i1 %label5, label %label6, label %label7

  label6:
  br label %label7

  label7:
  ret void
}



