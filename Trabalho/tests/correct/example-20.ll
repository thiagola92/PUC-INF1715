define void @main() {
  %label1 = alloca i32
  %label2 = alloca i32
  %label3 = alloca i32
  br label %label4

  label4:
  %label5 = load i32, i32* 0
  %label6 = icmp ne i32 %label5, 0
  br i1 %label6, label %label7, label %label8

  label7:
  %label9 = load i32, i32* 1
  %label10 = icmp ne i32 %label9, 0
  br label label8

  label8:
  %label11 = phi i1 [ false, %label4 ], [ %label10, %label7 ]
  %label12 = zext i1 %label11 to i32
  br label %label13

  label13:
  %label14 = load i32, i32* 1
  %label15 = icmp ne i32 %label14, 0
  br i1 %label15, label %label17, label %label16

  label16:
  %label18 = load i32, i32* %label12
  %label19 = icmp ne i32 %label18, 0
  br label label17

  label17:
  %label20 = phi i1 [ true, %label13 ], [ %label19, %label16 ]
  %label21 = zext i1 %label20 to i32
  store i32 %label21, i32* %label1
  br label %label22

  label22:
  %label23 = load i32, i32* 1
  %label24 = icmp ne i32 %label23, 0
  br i1 %label24, label %label25, label %label26

  label25:
  %label27 = load i32, i32* 0
  %label28 = icmp ne i32 %label27, 0
  br label label26

  label26:
  %label29 = phi i1 [ false, %label22 ], [ %label28, %label25 ]
  %label30 = zext i1 %label29 to i32
  br label %label31

  label31:
  %label32 = load i32, i32* %label30
  %label33 = icmp ne i32 %label32, 0
  br i1 %label33, label %label35, label %label34

  label34:
  %label36 = load i32, i32* 1
  %label37 = icmp ne i32 %label36, 0
  br label label35

  label35:
  %label38 = phi i1 [ true, %label31 ], [ %label37, %label34 ]
  %label39 = zext i1 %label38 to i32
  store i32 %label39, i32* %label2
  br label %label40

  label40:
  %label41 = load i32, i32* 0
  %label42 = icmp ne i32 %label41, 0
  br i1 %label42, label %label43, label %label44

  label43:
  %label45 = load i32, i32* 1
  %label46 = icmp ne i32 %label45, 0
  br label label44

  label44:
  %label47 = phi i1 [ false, %label40 ], [ %label46, %label43 ]
  %label48 = zext i1 %label47 to i32
  br label %label49

  label49:
  %label50 = load i32, i32* 1
  %label51 = icmp ne i32 %label50, 0
  br i1 %label51, label %label53, label %label52

  label52:
  %label54 = load i32, i32* %label48
  %label55 = icmp ne i32 %label54, 0
  br label label53

  label53:
  %label56 = phi i1 [ true, %label49 ], [ %label55, %label52 ]
  %label57 = zext i1 %label56 to i32
  store i32 %label57, i32* %label1
  br label %label58

  label58:
  %label59 = load i32, i32* 1
  %label60 = icmp ne i32 %label59, 0
  br i1 %label60, label %label61, label %label62

  label61:
  %label63 = load i32, i32* 0
  %label64 = icmp ne i32 %label63, 0
  br label label62

  label62:
  %label65 = phi i1 [ false, %label58 ], [ %label64, %label61 ]
  %label66 = zext i1 %label65 to i32
  br label %label67

  label67:
  %label68 = load i32, i32* %label66
  %label69 = icmp ne i32 %label68, 0
  br i1 %label69, label %label71, label %label70

  label70:
  %label72 = load i32, i32* 1
  %label73 = icmp ne i32 %label72, 0
  br label label71

  label71:
  %label74 = phi i1 [ true, %label67 ], [ %label73, %label70 ]
  %label75 = zext i1 %label74 to i32
  store i32 %label75, i32* %label2
  ret void
}



