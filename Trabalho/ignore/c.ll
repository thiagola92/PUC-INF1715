define void @main() {
  %label1 = alloca i32
  %label2 = alloca i32
  %label3 = alloca i32
  br label %label4

  label4:
  br label %label7

  label7:
  %label10 = icmp ne i32 1, 0
  br i1 %label10, label %label8, label %label9

  label8:
  %label11 = icmp ne i32 0, 0
  br label %label9

  label9:
  %label12 = phi i1 [ false, %label7 ], [ %label11, %label8 ]
  %label13 = zext i1 %label12 to i32
  %label14 = icmp ne i32 %label13, 0
  br i1 %label14, label %label6, label %label5

  label5:
  %label15 = icmp ne i32 1, 0
  br label %label6

  label6:
  %label16 = phi i1 [ true, %label9 ], [ %label15, %label5 ]
  %label17 = zext i1 %label16 to i32
  store i32 %label17, i32* %label2
  ret void
}