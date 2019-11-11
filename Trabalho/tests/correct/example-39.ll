define void @main() {
  %label1 = alloca i32
  %label2 = alloca i32
  store i32 97, i32* %label2
  %label3 = load i32, i32* %label2
  store i32 %label3, i32* %label1
  %label4 = load i32, i32* %label1
  %label5 = load i32, i32* %label1
  %label6 = icmp eq i32 %label4, %label5
  %label7 = zext i1 %label6 to i32
  %label8 = icmp eq i32 %label7, 1
  br i1 %label8, label %label9, label %label10

  label9:
  br label %label10

  label10:
  %label11 = alloca i32
  store i32 97, i32* %label11
  %label12 = load i32, i32* %label11
  %label13 = alloca i32
  store i32 97, i32* %label13
  %label14 = load i32, i32* %label13
  %label15 = icmp eq i32 %label12, %label14
  %label16 = zext i1 %label15 to i32
  %label17 = icmp eq i32 %label16, 1
  br i1 %label17, label %label18, label %label19

  label18:
  br label %label19

  label19:
  %label20 = alloca i32
  store i32 97, i32* %label20
  %label21 = load i32, i32* %label20
  %label22 = load i32, i32* %label1
  %label23 = icmp eq i32 %label21, %label22
  %label24 = zext i1 %label23 to i32
  %label25 = icmp eq i32 %label24, 1
  br i1 %label25, label %label26, label %label27

  label26:
  br label %label27

  label27:
  ret void
}



