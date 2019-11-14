define void @nome(i32, i32) {
  %label3 = alloca i32
  store i32 %0, i32* %label3
  %label4 = alloca i32
  store i32 %1, i32* %label4
  %label5 = alloca i32
  br label %label6

  label6:
  %label9 = load i32, i32* %label3
  %label10 = icmp ne i32 %label9, 0
  br i1 %label10, label %label8, label %label7

  label7:
  %label11 = load i32, i32* %label4
  %label12 = icmp ne i32 %label11, 0
  br label %label8

  label8:
  %label13 = phi i1 [ true, %label6 ], [ %label12, %label7 ]
  %label14 = zext i1 %label13 to i32
  store i32 %label14, i32* %label5
  br label %label15

  label15:
  %label18 = load i32, i32* %label3
  %label19 = icmp ne i32 %label18, 0
  br i1 %label19, label %label16, label %label17

  label16:
  %label20 = load i32, i32* %label4
  %label21 = icmp ne i32 %label20, 0
  br label %label17

  label17:
  %label22 = phi i1 [ false, %label15 ], [ %label21, %label16 ]
  %label23 = zext i1 %label22 to i32
  store i32 %label23, i32* %label5
  ret void
}



