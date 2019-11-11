define void @main() {
  %label1 = alloca i32
  %label2 = alloca i32
  %label3 = alloca i32
  %label4 = alloca i32
  store i32 1, i32* %label4
  %label5 = load i32, i32* %label4
  %label6 = alloca i32
  store i32 1, i32* %label6
  %label7 = load i32, i32* %label6
  %label8 = icmp eq i32 %label5, %label7
  %label9 = zext i1 %label8 to i32
  store i32 %label9, i32* %label1
  %label10 = alloca i32
  store i32 1, i32* %label10
  %label11 = load i32, i32* %label10
  %label12 = alloca i32
  store i32 2, i32* %label12
  %label13 = load i32, i32* %label12
  %label14 = icmp eq i32 %label11, %label13
  %label15 = zext i1 %label14 to i32
  store i32 %label15, i32* %label2
  %label16 = alloca i32
  store i32 1, i32* %label16
  %label17 = load i32, i32* %label16
  %label18 = alloca i32
  store i32 1, i32* %label18
  %label19 = load i32, i32* %label18
  %label20 = icmp ne i32 %label17, %label19
  %label21 = zext i1 %label20 to i32
  store i32 %label21, i32* %label3
  %label22 = alloca i32
  store i32 1, i32* %label22
  %label23 = load i32, i32* %label22
  %label24 = alloca i32
  store i32 2, i32* %label24
  %label25 = load i32, i32* %label24
  %label26 = icmp ne i32 %label23, %label25
  %label27 = zext i1 %label26 to i32
  store i32 %label27, i32* %label1
  %label28 = alloca i32
  store i32 1, i32* %label28
  %label29 = load i32, i32* %label28
  %label30 = alloca i32
  store i32 1, i32* %label30
  %label31 = load i32, i32* %label30
  %label32 = icmp slt i32 %label29, %label31
  %label33 = zext i1 %label32 to i32
  store i32 %label33, i32* %label1
  %label34 = alloca i32
  store i32 1, i32* %label34
  %label35 = load i32, i32* %label34
  %label36 = alloca i32
  store i32 2, i32* %label36
  %label37 = load i32, i32* %label36
  %label38 = icmp slt i32 %label35, %label37
  %label39 = zext i1 %label38 to i32
  store i32 %label39, i32* %label2
  %label40 = alloca i32
  store i32 1, i32* %label40
  %label41 = load i32, i32* %label40
  %label42 = alloca i32
  store i32 0, i32* %label42
  %label43 = load i32, i32* %label42
  %label44 = icmp slt i32 %label41, %label43
  %label45 = zext i1 %label44 to i32
  store i32 %label45, i32* %label3
  %label46 = alloca i32
  store i32 1, i32* %label46
  %label47 = load i32, i32* %label46
  %label48 = alloca i32
  store i32 1, i32* %label48
  %label49 = load i32, i32* %label48
  %label50 = icmp sgt i32 %label47, %label49
  %label51 = zext i1 %label50 to i32
  store i32 %label51, i32* %label1
  %label52 = alloca i32
  store i32 1, i32* %label52
  %label53 = load i32, i32* %label52
  %label54 = alloca i32
  store i32 2, i32* %label54
  %label55 = load i32, i32* %label54
  %label56 = icmp sgt i32 %label53, %label55
  %label57 = zext i1 %label56 to i32
  store i32 %label57, i32* %label2
  %label58 = alloca i32
  store i32 1, i32* %label58
  %label59 = load i32, i32* %label58
  %label60 = alloca i32
  store i32 0, i32* %label60
  %label61 = load i32, i32* %label60
  %label62 = icmp sgt i32 %label59, %label61
  %label63 = zext i1 %label62 to i32
  store i32 %label63, i32* %label3
  %label64 = alloca i32
  store i32 1, i32* %label64
  %label65 = load i32, i32* %label64
  %label66 = alloca i32
  store i32 1, i32* %label66
  %label67 = load i32, i32* %label66
  %label68 = icmp sle i32 %label65, %label67
  %label69 = zext i1 %label68 to i32
  store i32 %label69, i32* %label1
  %label70 = alloca i32
  store i32 1, i32* %label70
  %label71 = load i32, i32* %label70
  %label72 = alloca i32
  store i32 2, i32* %label72
  %label73 = load i32, i32* %label72
  %label74 = icmp sle i32 %label71, %label73
  %label75 = zext i1 %label74 to i32
  store i32 %label75, i32* %label2
  %label76 = alloca i32
  store i32 1, i32* %label76
  %label77 = load i32, i32* %label76
  %label78 = alloca i32
  store i32 0, i32* %label78
  %label79 = load i32, i32* %label78
  %label80 = icmp sle i32 %label77, %label79
  %label81 = zext i1 %label80 to i32
  store i32 %label81, i32* %label3
  %label82 = alloca i32
  store i32 1, i32* %label82
  %label83 = load i32, i32* %label82
  %label84 = alloca i32
  store i32 1, i32* %label84
  %label85 = load i32, i32* %label84
  %label86 = icmp sge i32 %label83, %label85
  %label87 = zext i1 %label86 to i32
  store i32 %label87, i32* %label1
  %label88 = alloca i32
  store i32 1, i32* %label88
  %label89 = load i32, i32* %label88
  %label90 = alloca i32
  store i32 2, i32* %label90
  %label91 = load i32, i32* %label90
  %label92 = icmp sge i32 %label89, %label91
  %label93 = zext i1 %label92 to i32
  store i32 %label93, i32* %label2
  %label94 = alloca i32
  store i32 1, i32* %label94
  %label95 = load i32, i32* %label94
  %label96 = alloca i32
  store i32 0, i32* %label96
  %label97 = load i32, i32* %label96
  %label98 = icmp sge i32 %label95, %label97
  %label99 = zext i1 %label98 to i32
  store i32 %label99, i32* %label3
  ret void
}



