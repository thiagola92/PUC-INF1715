define void @main() {
  %label1 = alloca i32
  %label2 = alloca i32
  %label3 = alloca i32
  %label4 = alloca i32
  %label5 = alloca i32
  %label6 = alloca i32
  %label7 = alloca i32
  %label8 = alloca i32
  %label9 = alloca i32
  %label10 = alloca i32
  %label11 = alloca i32
  %label12 = alloca i32
  %label13 = alloca i32
  %label14 = alloca i32
  %label15 = alloca i32
  %label16 = alloca i32
  br label %label17

  label17:
  %label20 = icmp eq i32 1, 1
  %label21 = zext i1 %label20 to i32
  %label22 = icmp ne i32 %label21, 0
  br i1 %label22, label %label18, label %label19

  label18:
  %label23 = icmp eq i32 1, 1
  %label24 = zext i1 %label23 to i32
  %label25 = icmp ne i32 %label24, 0
  br label %label19

  label19:
  %label26 = phi i1 [ false, %label17 ], [ %label25, %label18 ]
  %label27 = zext i1 %label26 to i32
  store i32 %label27, i32* %label1
  br label %label28

  label28:
  %label31 = icmp eq i32 1, 2
  %label32 = zext i1 %label31 to i32
  %label33 = icmp ne i32 %label32, 0
  br i1 %label33, label %label29, label %label30

  label29:
  %label34 = icmp eq i32 2, 2
  %label35 = zext i1 %label34 to i32
  %label36 = icmp ne i32 %label35, 0
  br label %label30

  label30:
  %label37 = phi i1 [ false, %label28 ], [ %label36, %label29 ]
  %label38 = zext i1 %label37 to i32
  store i32 %label38, i32* %label2
  br label %label39

  label39:
  %label42 = icmp ne i32 1, 1
  %label43 = zext i1 %label42 to i32
  %label44 = icmp ne i32 %label43, 0
  br i1 %label44, label %label40, label %label41

  label40:
  %label45 = icmp eq i32 1, 1
  %label46 = zext i1 %label45 to i32
  %label47 = icmp ne i32 %label46, 0
  br label %label41

  label41:
  %label48 = phi i1 [ false, %label39 ], [ %label47, %label40 ]
  %label49 = zext i1 %label48 to i32
  store i32 %label49, i32* %label3
  br label %label50

  label50:
  %label53 = icmp ne i32 1, 2
  %label54 = zext i1 %label53 to i32
  %label55 = icmp ne i32 %label54, 0
  br i1 %label55, label %label51, label %label52

  label51:
  %label56 = icmp eq i32 2, 2
  %label57 = zext i1 %label56 to i32
  %label58 = icmp ne i32 %label57, 0
  br label %label52

  label52:
  %label59 = phi i1 [ false, %label50 ], [ %label58, %label51 ]
  %label60 = zext i1 %label59 to i32
  store i32 %label60, i32* %label4
  br label %label61

  label61:
  %label64 = icmp slt i32 1, 1
  %label65 = zext i1 %label64 to i32
  %label66 = icmp ne i32 %label65, 0
  br i1 %label66, label %label62, label %label63

  label62:
  %label67 = icmp sgt i32 1, 1
  %label68 = zext i1 %label67 to i32
  %label69 = icmp ne i32 %label68, 0
  br label %label63

  label63:
  %label70 = phi i1 [ false, %label61 ], [ %label69, %label62 ]
  %label71 = zext i1 %label70 to i32
  store i32 %label71, i32* %label5
  br label %label72

  label72:
  %label75 = icmp slt i32 1, 2
  %label76 = zext i1 %label75 to i32
  %label77 = icmp ne i32 %label76, 0
  br i1 %label77, label %label73, label %label74

  label73:
  %label78 = icmp sgt i32 1, 2
  %label79 = zext i1 %label78 to i32
  %label80 = icmp ne i32 %label79, 0
  br label %label74

  label74:
  %label81 = phi i1 [ false, %label72 ], [ %label80, %label73 ]
  %label82 = zext i1 %label81 to i32
  store i32 %label82, i32* %label6
  br label %label83

  label83:
  %label86 = icmp slt i32 1, 0
  %label87 = zext i1 %label86 to i32
  %label88 = icmp ne i32 %label87, 0
  br i1 %label88, label %label84, label %label85

  label84:
  %label89 = icmp sgt i32 1, 0
  %label90 = zext i1 %label89 to i32
  %label91 = icmp ne i32 %label90, 0
  br label %label85

  label85:
  %label92 = phi i1 [ false, %label83 ], [ %label91, %label84 ]
  %label93 = zext i1 %label92 to i32
  store i32 %label93, i32* %label7
  br label %label94

  label94:
  %label97 = icmp sgt i32 1, 1
  %label98 = zext i1 %label97 to i32
  %label99 = icmp ne i32 %label98, 0
  br i1 %label99, label %label95, label %label96

  label95:
  %label100 = icmp slt i32 1, 1
  %label101 = zext i1 %label100 to i32
  %label102 = icmp ne i32 %label101, 0
  br label %label96

  label96:
  %label103 = phi i1 [ false, %label94 ], [ %label102, %label95 ]
  %label104 = zext i1 %label103 to i32
  store i32 %label104, i32* %label8
  br label %label105

  label105:
  %label108 = icmp sgt i32 1, 2
  %label109 = zext i1 %label108 to i32
  %label110 = icmp ne i32 %label109, 0
  br i1 %label110, label %label106, label %label107

  label106:
  %label111 = icmp slt i32 1, 2
  %label112 = zext i1 %label111 to i32
  %label113 = icmp ne i32 %label112, 0
  br label %label107

  label107:
  %label114 = phi i1 [ false, %label105 ], [ %label113, %label106 ]
  %label115 = zext i1 %label114 to i32
  store i32 %label115, i32* %label9
  br label %label116

  label116:
  %label119 = icmp sgt i32 1, 0
  %label120 = zext i1 %label119 to i32
  %label121 = icmp ne i32 %label120, 0
  br i1 %label121, label %label117, label %label118

  label117:
  %label122 = icmp slt i32 1, 0
  %label123 = zext i1 %label122 to i32
  %label124 = icmp ne i32 %label123, 0
  br label %label118

  label118:
  %label125 = phi i1 [ false, %label116 ], [ %label124, %label117 ]
  %label126 = zext i1 %label125 to i32
  store i32 %label126, i32* %label10
  br label %label127

  label127:
  %label130 = icmp sle i32 1, 1
  %label131 = zext i1 %label130 to i32
  %label132 = icmp ne i32 %label131, 0
  br i1 %label132, label %label128, label %label129

  label128:
  %label133 = icmp sge i32 1, 1
  %label134 = zext i1 %label133 to i32
  %label135 = icmp ne i32 %label134, 0
  br label %label129

  label129:
  %label136 = phi i1 [ false, %label127 ], [ %label135, %label128 ]
  %label137 = zext i1 %label136 to i32
  store i32 %label137, i32* %label11
  br label %label138

  label138:
  %label141 = icmp sle i32 1, 2
  %label142 = zext i1 %label141 to i32
  %label143 = icmp ne i32 %label142, 0
  br i1 %label143, label %label139, label %label140

  label139:
  %label144 = icmp sge i32 1, 2
  %label145 = zext i1 %label144 to i32
  %label146 = icmp ne i32 %label145, 0
  br label %label140

  label140:
  %label147 = phi i1 [ false, %label138 ], [ %label146, %label139 ]
  %label148 = zext i1 %label147 to i32
  store i32 %label148, i32* %label12
  br label %label149

  label149:
  %label152 = icmp sle i32 1, 0
  %label153 = zext i1 %label152 to i32
  %label154 = icmp ne i32 %label153, 0
  br i1 %label154, label %label150, label %label151

  label150:
  %label155 = icmp sge i32 1, 0
  %label156 = zext i1 %label155 to i32
  %label157 = icmp ne i32 %label156, 0
  br label %label151

  label151:
  %label158 = phi i1 [ false, %label149 ], [ %label157, %label150 ]
  %label159 = zext i1 %label158 to i32
  store i32 %label159, i32* %label13
  br label %label160

  label160:
  %label163 = icmp sge i32 1, 1
  %label164 = zext i1 %label163 to i32
  %label165 = icmp ne i32 %label164, 0
  br i1 %label165, label %label161, label %label162

  label161:
  %label166 = icmp sle i32 1, 1
  %label167 = zext i1 %label166 to i32
  %label168 = icmp ne i32 %label167, 0
  br label %label162

  label162:
  %label169 = phi i1 [ false, %label160 ], [ %label168, %label161 ]
  %label170 = zext i1 %label169 to i32
  store i32 %label170, i32* %label14
  br label %label171

  label171:
  %label174 = icmp sge i32 1, 2
  %label175 = zext i1 %label174 to i32
  %label176 = icmp ne i32 %label175, 0
  br i1 %label176, label %label172, label %label173

  label172:
  %label177 = icmp sle i32 1, 2
  %label178 = zext i1 %label177 to i32
  %label179 = icmp ne i32 %label178, 0
  br label %label173

  label173:
  %label180 = phi i1 [ false, %label171 ], [ %label179, %label172 ]
  %label181 = zext i1 %label180 to i32
  store i32 %label181, i32* %label15
  br label %label182

  label182:
  %label185 = icmp sge i32 1, 0
  %label186 = zext i1 %label185 to i32
  %label187 = icmp ne i32 %label186, 0
  br i1 %label187, label %label183, label %label184

  label183:
  %label188 = icmp sle i32 1, 0
  %label189 = zext i1 %label188 to i32
  %label190 = icmp ne i32 %label189, 0
  br label %label184

  label184:
  %label191 = phi i1 [ false, %label182 ], [ %label190, %label183 ]
  %label192 = zext i1 %label191 to i32
  store i32 %label192, i32* %label16
  ret void
}



