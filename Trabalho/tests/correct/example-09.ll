define void @first() {
  ret void
}

define void @main() {
  %label1 = alloca i32
  store i32 1, i32* %label1
  %label2 = load i32, i32* %label1
  %label3 = icmp eq i32 %label2, 1
  br i1 %label3, label %label4, label %label5

  label4:
  %label6 = alloca i32
  br label %label5

  label5:
  %label7 = alloca i32
  store i32 0, i32* %label7
  %label8 = load i32, i32* %label7
  %label9 = icmp eq i32 %label8, 1
  br i1 %label9, label %label10, label %label12

  label10:
  %label13 = alloca i32
  br label %label12

  label11:
  %label14 = alloca i32
  br label %label12

  label12:
  %label15 = alloca i32
  store i32 1, i32* %label15
  %label16 = load i32, i32* %label15
  %label17 = icmp eq i32 %label16, 1
  br i1 %label17, label %label18, label %label19

  label18:
  %label20 = alloca i32
  %label21 = alloca i32
  store i32 1, i32* %label21
  %label22 = load i32, i32* %label21
  %label23 = icmp eq i32 %label22, 1
  br i1 %label23, label %label24, label %label25

  label24:
  %label26 = alloca i32
  br label %label25

  label25:
  br label %label19

  label19:
  %label27 = alloca i32
  store i32 1, i32* %label27
  %label28 = load i32, i32* %label27
  %label29 = icmp eq i32 %label28, 1
  br i1 %label29, label %label30, label %label31

  label30:
  %label32 = alloca i32
  %label33 = alloca i32
  store i32 0, i32* %label33
  %label34 = load i32, i32* %label33
  %label35 = icmp eq i32 %label34, 1
  br i1 %label35, label %label36, label %label38

  label36:
  %label39 = alloca i32
  br label %label38

  label37:
  %label40 = alloca i32
  br label %label38

  label38:
  br label %label31

  label31:
  %label41 = alloca i32
  store i32 0, i32* %label41
  %label42 = load i32, i32* %label41
  %label43 = icmp eq i32 %label42, 1
  br i1 %label43, label %label44, label %label46

  label44:
  %label47 = alloca i32
  br label %label46

  label45:
  %label48 = alloca i32
  %label49 = alloca i32
  store i32 1, i32* %label49
  %label50 = load i32, i32* %label49
  %label51 = icmp eq i32 %label50, 1
  br i1 %label51, label %label52, label %label53

  label52:
  %label54 = alloca i32
  br label %label53

  label53:
  br label %label46

  label46:
  %label55 = alloca i32
  store i32 0, i32* %label55
  %label56 = load i32, i32* %label55
  %label57 = icmp eq i32 %label56, 1
  br i1 %label57, label %label58, label %label60

  label58:
  %label61 = alloca i32
  br label %label60

  label59:
  %label62 = alloca i32
  %label63 = alloca i32
  store i32 0, i32* %label63
  %label64 = load i32, i32* %label63
  %label65 = icmp eq i32 %label64, 1
  br i1 %label65, label %label66, label %label68

  label66:
  %label69 = alloca i32
  br label %label68

  label67:
  %label70 = alloca i32
  br label %label68

  label68:
  br label %label60

  label60:
  ret void
}



