define i32 @nome() {
  %label1 = alloca i32
  %label2 = alloca i32
  br label %label3

  label3:
  %label6 = load i32, i32* %label1
  %label7 = icmp ne i32 %label6, 0
  br i1 %label7, label %label5, label %label4

  label4:
  %label8 = load i32, i32* %label2
  %label9 = icmp ne i32 %label8, 0
  br label %label5

  label5:
  %label10 = phi i1 [ true, %label3 ], [ %label9, %label4 ]
  %label11 = zext i1 %label10 to i32
  ret i32 %label11
}



