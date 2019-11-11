define void @main() {
  %label1 = icmp eq i32 (null), 1
  br i1 %label1, label %label2, label %label3

  label2:
  br label %label3

  label3:
  %label4 = icmp eq i32 (null), 1
  br i1 %label4, label %label5, label %label6

  label5:
  br label %label6

  label6:
  %label7 = alloca i32
  store i32 1, i32* %label7
  %label8 = load i32, i32* %label7
  %label9 = icmp eq i32 (null), %label8
  %label10 = zext i1 %label9 to i32
  %label11 = icmp eq i32 %label10, 1
  br i1 %label11, label %label12, label %label13

  label12:
  br label %label13

  label13:
  %label14 = alloca i32
  store i32 0, i32* %label14
  %label15 = load i32, i32* %label14
  %label16 = icmp eq i32 (null), %label15
  %label17 = zext i1 %label16 to i32
  %label18 = icmp eq i32 %label17, 1
  br i1 %label18, label %label19, label %label20

  label19:
  br label %label20

  label20:
  %label21 = icmp eq i32 (null), (null)
  %label22 = zext i1 %label21 to i32
  %label23 = icmp eq i32 %label22, 1
  br i1 %label23, label %label24, label %label25

  label24:
  br label %label25

  label25:
  ret void
}



