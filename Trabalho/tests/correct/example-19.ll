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
  %label8 = alloca i32
  store i32 1, i32* %label8
  %label9 = load i32, i32* %label8
  %label10 = add i32 %label7, %label9
  %label11 = icmp eq i32 %label5, %label10
  %label12 = zext i1 %label11 to i32
  store i32 %label12, i32* %label1
  %label13 = alloca i32
  store i32 1, i32* %label13
  %label14 = load i32, i32* %label13
  %label15 = alloca i32
  store i32 1, i32* %label15
  %label16 = load i32, i32* %label15
  %label17 = alloca i32
  store i32 0, i32* %label17
  %label18 = load i32, i32* %label17
  %label19 = add i32 %label16, %label18
  %label20 = icmp eq i32 %label14, %label19
  %label21 = zext i1 %label20 to i32
  store i32 %label21, i32* %label2
  %label22 = alloca i32
  store i32 1, i32* %label22
  %label23 = load i32, i32* %label22
  %label24 = alloca i32
  store i32 2, i32* %label24
  %label25 = load i32, i32* %label24
  %label26 = alloca i32
  store i32 1, i32* %label26
  %label27 = load i32, i32* %label26
  %label28 = sub i32 %label25, %label27
  %label29 = icmp eq i32 %label23, %label28
  %label30 = zext i1 %label29 to i32
  store i32 %label30, i32* %label3
  %label31 = alloca i32
  store i32 1, i32* %label31
  %label32 = load i32, i32* %label31
  %label33 = alloca i32
  store i32 1, i32* %label33
  %label34 = load i32, i32* %label33
  %label35 = alloca i32
  store i32 1, i32* %label35
  %label36 = load i32, i32* %label35
  %label37 = add i32 %label34, %label36
  %label38 = icmp ne i32 %label32, %label37
  %label39 = zext i1 %label38 to i32
  store i32 %label39, i32* %label1
  %label40 = alloca i32
  store i32 1, i32* %label40
  %label41 = load i32, i32* %label40
  %label42 = alloca i32
  store i32 1, i32* %label42
  %label43 = load i32, i32* %label42
  %label44 = alloca i32
  store i32 0, i32* %label44
  %label45 = load i32, i32* %label44
  %label46 = add i32 %label43, %label45
  %label47 = icmp ne i32 %label41, %label46
  %label48 = zext i1 %label47 to i32
  store i32 %label48, i32* %label2
  %label49 = alloca i32
  store i32 1, i32* %label49
  %label50 = load i32, i32* %label49
  %label51 = alloca i32
  store i32 2, i32* %label51
  %label52 = load i32, i32* %label51
  %label53 = alloca i32
  store i32 1, i32* %label53
  %label54 = load i32, i32* %label53
  %label55 = sub i32 %label52, %label54
  %label56 = icmp ne i32 %label50, %label55
  %label57 = zext i1 %label56 to i32
  store i32 %label57, i32* %label3
  %label58 = alloca i32
  store i32 1, i32* %label58
  %label59 = load i32, i32* %label58
  %label60 = alloca i32
  store i32 1, i32* %label60
  %label61 = load i32, i32* %label60
  %label62 = alloca i32
  store i32 1, i32* %label62
  %label63 = load i32, i32* %label62
  %label64 = add i32 %label61, %label63
  %label65 = icmp slt i32 %label59, %label64
  %label66 = zext i1 %label65 to i32
  store i32 %label66, i32* %label1
  %label67 = alloca i32
  store i32 1, i32* %label67
  %label68 = load i32, i32* %label67
  %label69 = alloca i32
  store i32 1, i32* %label69
  %label70 = load i32, i32* %label69
  %label71 = alloca i32
  store i32 0, i32* %label71
  %label72 = load i32, i32* %label71
  %label73 = add i32 %label70, %label72
  %label74 = icmp slt i32 %label68, %label73
  %label75 = zext i1 %label74 to i32
  store i32 %label75, i32* %label2
  %label76 = alloca i32
  store i32 1, i32* %label76
  %label77 = load i32, i32* %label76
  %label78 = alloca i32
  store i32 2, i32* %label78
  %label79 = load i32, i32* %label78
  %label80 = alloca i32
  store i32 1, i32* %label80
  %label81 = load i32, i32* %label80
  %label82 = sub i32 %label79, %label81
  %label83 = icmp slt i32 %label77, %label82
  %label84 = zext i1 %label83 to i32
  store i32 %label84, i32* %label3
  %label85 = alloca i32
  store i32 1, i32* %label85
  %label86 = load i32, i32* %label85
  %label87 = alloca i32
  store i32 1, i32* %label87
  %label88 = load i32, i32* %label87
  %label89 = alloca i32
  store i32 1, i32* %label89
  %label90 = load i32, i32* %label89
  %label91 = add i32 %label88, %label90
  %label92 = icmp sgt i32 %label86, %label91
  %label93 = zext i1 %label92 to i32
  store i32 %label93, i32* %label1
  %label94 = alloca i32
  store i32 1, i32* %label94
  %label95 = load i32, i32* %label94
  %label96 = alloca i32
  store i32 1, i32* %label96
  %label97 = load i32, i32* %label96
  %label98 = alloca i32
  store i32 0, i32* %label98
  %label99 = load i32, i32* %label98
  %label100 = add i32 %label97, %label99
  %label101 = icmp sgt i32 %label95, %label100
  %label102 = zext i1 %label101 to i32
  store i32 %label102, i32* %label2
  %label103 = alloca i32
  store i32 1, i32* %label103
  %label104 = load i32, i32* %label103
  %label105 = alloca i32
  store i32 2, i32* %label105
  %label106 = load i32, i32* %label105
  %label107 = alloca i32
  store i32 1, i32* %label107
  %label108 = load i32, i32* %label107
  %label109 = sub i32 %label106, %label108
  %label110 = icmp sgt i32 %label104, %label109
  %label111 = zext i1 %label110 to i32
  store i32 %label111, i32* %label3
  %label112 = alloca i32
  store i32 1, i32* %label112
  %label113 = load i32, i32* %label112
  %label114 = alloca i32
  store i32 1, i32* %label114
  %label115 = load i32, i32* %label114
  %label116 = alloca i32
  store i32 1, i32* %label116
  %label117 = load i32, i32* %label116
  %label118 = add i32 %label115, %label117
  %label119 = icmp sle i32 %label113, %label118
  %label120 = zext i1 %label119 to i32
  store i32 %label120, i32* %label1
  %label121 = alloca i32
  store i32 1, i32* %label121
  %label122 = load i32, i32* %label121
  %label123 = alloca i32
  store i32 1, i32* %label123
  %label124 = load i32, i32* %label123
  %label125 = alloca i32
  store i32 0, i32* %label125
  %label126 = load i32, i32* %label125
  %label127 = add i32 %label124, %label126
  %label128 = icmp sle i32 %label122, %label127
  %label129 = zext i1 %label128 to i32
  store i32 %label129, i32* %label2
  %label130 = alloca i32
  store i32 1, i32* %label130
  %label131 = load i32, i32* %label130
  %label132 = alloca i32
  store i32 2, i32* %label132
  %label133 = load i32, i32* %label132
  %label134 = alloca i32
  store i32 1, i32* %label134
  %label135 = load i32, i32* %label134
  %label136 = sub i32 %label133, %label135
  %label137 = icmp sle i32 %label131, %label136
  %label138 = zext i1 %label137 to i32
  store i32 %label138, i32* %label3
  %label139 = alloca i32
  store i32 1, i32* %label139
  %label140 = load i32, i32* %label139
  %label141 = alloca i32
  store i32 1, i32* %label141
  %label142 = load i32, i32* %label141
  %label143 = alloca i32
  store i32 1, i32* %label143
  %label144 = load i32, i32* %label143
  %label145 = add i32 %label142, %label144
  %label146 = icmp sge i32 %label140, %label145
  %label147 = zext i1 %label146 to i32
  store i32 %label147, i32* %label1
  %label148 = alloca i32
  store i32 1, i32* %label148
  %label149 = load i32, i32* %label148
  %label150 = alloca i32
  store i32 1, i32* %label150
  %label151 = load i32, i32* %label150
  %label152 = alloca i32
  store i32 0, i32* %label152
  %label153 = load i32, i32* %label152
  %label154 = add i32 %label151, %label153
  %label155 = icmp sge i32 %label149, %label154
  %label156 = zext i1 %label155 to i32
  store i32 %label156, i32* %label2
  %label157 = alloca i32
  store i32 1, i32* %label157
  %label158 = load i32, i32* %label157
  %label159 = alloca i32
  store i32 2, i32* %label159
  %label160 = load i32, i32* %label159
  %label161 = alloca i32
  store i32 1, i32* %label161
  %label162 = load i32, i32* %label161
  %label163 = sub i32 %label160, %label162
  %label164 = icmp sge i32 %label158, %label163
  %label165 = zext i1 %label164 to i32
  store i32 %label165, i32* %label3
  ret void
}



