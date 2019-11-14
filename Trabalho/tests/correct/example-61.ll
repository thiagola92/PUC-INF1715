define i32 @nome(i32, i32) {
  %label3 = alloca i32
  store i32 %0, i32* %label3
  %label4 = alloca i32
  store i32 %1, i32* %label4
  br label %label5

  label5:
  %label8 = load i32, i32* %label3
  %label9 = icmp ne i32 %label8, 0
  br i1 %label9, label %label7, label %label6

  label6:
  %label10 = load i32, i32* %label4
  %label11 = icmp ne i32 %label10, 0
  br label %label7

  label7:
  %label12 = phi i1 [ true, %label5 ], [ %label11, %label6 ]
  %label13 = zext i1 %label12 to i32
  ret i32 %label13
}



