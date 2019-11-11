define void @first() {
  ret void
}

define void @main() {
  br label %label1

  label1:
  %label2 = alloca i32
  store i32 1, i32* %label2
  %label3 = load i32, i32* %label2
  %label4 = icmp eq i32 %label3, 1
  br i1 %label4, label %label5, label %label6

  label5:
  br label %label1

  label6:
  br label %label7

  label7:
  %label8 = alloca i32
  store i32 1, i32* %label8
  %label9 = load i32, i32* %label8
  %label10 = icmp eq i32 %label9, 1
  br i1 %label10, label %label11, label %label12

  label11:
  %label13 = alloca i32
  br label %label7

  label12:
  br label %label14

  label14:
  %label15 = alloca i32
  store i32 1, i32* %label15
  %label16 = load i32, i32* %label15
  %label17 = icmp eq i32 %label16, 1
  br i1 %label17, label %label18, label %label19

  label18:
  br label %label14

  label19:
  br label %label20

  label20:
  %label21 = alloca i32
  store i32 1, i32* %label21
  %label22 = load i32, i32* %label21
  %label23 = icmp eq i32 %label22, 1
  br i1 %label23, label %label24, label %label25

  label24:
  %label26 = alloca i32
  br label %label20

  label25:
  ret void
}



