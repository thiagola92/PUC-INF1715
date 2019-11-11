define void @main() {
  %label1 = alloca i32
  store i32 1, i32* %label1
  %label2 = load i32, i32* %label1
  %label3 = alloca i32
  store i32 1, i32* %label3
  %label4 = load i32, i32* %label3
  %label5 = icmp eq i32 %label2, %label4
  %label6 = zext i1 %label5 to i32
  %label7 = icmp eq i32 %label6, 1
  br i1 %label7, label %label8, label %label9

  label8:
  br label %label9

  label9:
  %label10 = alloca i32
  store i32 2, i32* %label10
  %label11 = load i32, i32* %label10
  %label12 = alloca i32
  store i32 2, i32* %label12
  %label13 = load i32, i32* %label12
  %label14 = icmp ne i32 %label11, %label13
  %label15 = zext i1 %label14 to i32
  %label16 = icmp eq i32 %label15, 1
  br i1 %label16, label %label17, label %label18

  label17:
  br label %label18

  label18:
  %label19 = alloca i32
  store i32 1, i32* %label19
  %label20 = load i32, i32* %label19
  %label21 = alloca i32
  store i32 1, i32* %label21
  %label22 = load i32, i32* %label21
  %label23 = add i32 %label20, %label22
  %label24 = alloca i32
  store i32 1, i32* %label24
  %label25 = load i32, i32* %label24
  %label26 = icmp eq i32 %label23, %label25
  %label27 = zext i1 %label26 to i32
  %label28 = icmp eq i32 %label27, 1
  br i1 %label28, label %label29, label %label30

  label29:
  br label %label30

  label30:
  %label31 = alloca i32
  store i32 1, i32* %label31
  %label32 = load i32, i32* %label31
  %label33 = icmp eq i32 %label32, 1
  br i1 %label33, label %label34, label %label35

  label34:
  br label %label35

  label35:
  %label36 = alloca i32
  store i32 1, i32* %label36
  %label37 = load i32, i32* %label36
  %label38 = alloca i32
  store i32 1, i32* %label38
  %label39 = load i32, i32* %label38
  %label40 = icmp slt i32 %label37, %label39
  %label41 = zext i1 %label40 to i32
  %label42 = icmp eq i32 %label41, 1
  br i1 %label42, label %label43, label %label44

  label43:
  br label %label44

  label44:
  %label45 = alloca i32
  store i32 1, i32* %label45
  %label46 = load i32, i32* %label45
  %label47 = alloca i32
  store i32 1, i32* %label47
  %label48 = load i32, i32* %label47
  %label49 = alloca i32
  store i32 1, i32* %label49
  %label50 = load i32, i32* %label49
  %label51 = add i32 %label48, %label50
  %label52 = icmp slt i32 %label46, %label51
  %label53 = zext i1 %label52 to i32
  %label54 = icmp eq i32 %label53, 1
  br i1 %label54, label %label55, label %label56

  label55:
  br label %label56

  label56:
  ret void
}



