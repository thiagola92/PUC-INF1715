define void @main() {
  %label1 = alloca i32
  store i32 1, i32* %label1
  %label2 = load i32, i32* %label1
  %label3 = icmp eq i32 %label2, 1
  br i1 %label3, label %label4, label %label5

  label4:
  br label %label5

  label5:
  %label6 = alloca i32
  store i32 0, i32* %label6
  %label7 = load i32, i32* %label6
  %label8 = icmp eq i32 %label7, 1
  br i1 %label8, label %label9, label %label11

  label9:
  br label %label11

  label10:
  br label %label11

  label11:
  %label12 = alloca i32
  store i32 1, i32* %label12
  %label13 = load i32, i32* %label12
  %label14 = icmp eq i32 %label13, 1
  br i1 %label14, label %label15, label %label16

  label15:
  %label17 = alloca i32
  store i32 1, i32* %label17
  %label18 = load i32, i32* %label17
  %label19 = icmp eq i32 %label18, 1
  br i1 %label19, label %label20, label %label21

  label20:
  br label %label21

  label21:
  br label %label16

  label16:
  %label22 = alloca i32
  store i32 1, i32* %label22
  %label23 = load i32, i32* %label22
  %label24 = icmp eq i32 %label23, 1
  br i1 %label24, label %label25, label %label26

  label25:
  %label27 = alloca i32
  store i32 0, i32* %label27
  %label28 = load i32, i32* %label27
  %label29 = icmp eq i32 %label28, 1
  br i1 %label29, label %label30, label %label32

  label30:
  br label %label32

  label31:
  br label %label32

  label32:
  br label %label26

  label26:
  %label33 = alloca i32
  store i32 0, i32* %label33
  %label34 = load i32, i32* %label33
  %label35 = icmp eq i32 %label34, 1
  br i1 %label35, label %label36, label %label38

  label36:
  br label %label38

  label37:
  %label39 = alloca i32
  store i32 1, i32* %label39
  %label40 = load i32, i32* %label39
  %label41 = icmp eq i32 %label40, 1
  br i1 %label41, label %label42, label %label43

  label42:
  br label %label43

  label43:
  br label %label38

  label38:
  %label44 = alloca i32
  store i32 0, i32* %label44
  %label45 = load i32, i32* %label44
  %label46 = icmp eq i32 %label45, 1
  br i1 %label46, label %label47, label %label49

  label47:
  br label %label49

  label48:
  %label50 = alloca i32
  store i32 0, i32* %label50
  %label51 = load i32, i32* %label50
  %label52 = icmp eq i32 %label51, 1
  br i1 %label52, label %label53, label %label55

  label53:
  br label %label55

  label54:
  br label %label55

  label55:
  br label %label49

  label49:
  ret void
}



