declare i32 @printf(i8*, ...)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

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
  %label17 = icmp eq i32 1, 1
  %label18 = zext i1 %label17 to i32
  %label19 = icmp eq i32 1, 1
  %label20 = zext i1 %label19 to i32
  br label %label21

  label21:
  %label24 = icmp ne i32 %label18, 0
  br i1 %label24, label %label22, label %label23

  label22:
  %label25 = icmp ne i32 %label20, 0
  br label %label23

  label23:
  %label26 = phi i1 [ false, %label21 ], [ %label25, %label22 ]
  %label27 = zext i1 %label26 to i32
  store i32 %label27, i32* %label1
  %label28 = icmp eq i32 1, 2
  %label29 = zext i1 %label28 to i32
  %label30 = icmp eq i32 2, 2
  %label31 = zext i1 %label30 to i32
  br label %label32

  label32:
  %label35 = icmp ne i32 %label29, 0
  br i1 %label35, label %label33, label %label34

  label33:
  %label36 = icmp ne i32 %label31, 0
  br label %label34

  label34:
  %label37 = phi i1 [ false, %label32 ], [ %label36, %label33 ]
  %label38 = zext i1 %label37 to i32
  store i32 %label38, i32* %label2
  %label39 = icmp ne i32 1, 1
  %label40 = zext i1 %label39 to i32
  %label41 = icmp eq i32 1, 1
  %label42 = zext i1 %label41 to i32
  br label %label43

  label43:
  %label46 = icmp ne i32 %label40, 0
  br i1 %label46, label %label44, label %label45

  label44:
  %label47 = icmp ne i32 %label42, 0
  br label %label45

  label45:
  %label48 = phi i1 [ false, %label43 ], [ %label47, %label44 ]
  %label49 = zext i1 %label48 to i32
  store i32 %label49, i32* %label3
  %label50 = icmp ne i32 1, 2
  %label51 = zext i1 %label50 to i32
  %label52 = icmp eq i32 2, 2
  %label53 = zext i1 %label52 to i32
  br label %label54

  label54:
  %label57 = icmp ne i32 %label51, 0
  br i1 %label57, label %label55, label %label56

  label55:
  %label58 = icmp ne i32 %label53, 0
  br label %label56

  label56:
  %label59 = phi i1 [ false, %label54 ], [ %label58, %label55 ]
  %label60 = zext i1 %label59 to i32
  store i32 %label60, i32* %label4
  %label61 = icmp slt i32 1, 1
  %label62 = zext i1 %label61 to i32
  %label63 = icmp sgt i32 1, 1
  %label64 = zext i1 %label63 to i32
  br label %label65

  label65:
  %label68 = icmp ne i32 %label62, 0
  br i1 %label68, label %label66, label %label67

  label66:
  %label69 = icmp ne i32 %label64, 0
  br label %label67

  label67:
  %label70 = phi i1 [ false, %label65 ], [ %label69, %label66 ]
  %label71 = zext i1 %label70 to i32
  store i32 %label71, i32* %label5
  %label72 = icmp slt i32 1, 2
  %label73 = zext i1 %label72 to i32
  %label74 = icmp sgt i32 1, 2
  %label75 = zext i1 %label74 to i32
  br label %label76

  label76:
  %label79 = icmp ne i32 %label73, 0
  br i1 %label79, label %label77, label %label78

  label77:
  %label80 = icmp ne i32 %label75, 0
  br label %label78

  label78:
  %label81 = phi i1 [ false, %label76 ], [ %label80, %label77 ]
  %label82 = zext i1 %label81 to i32
  store i32 %label82, i32* %label6
  %label83 = icmp slt i32 1, 0
  %label84 = zext i1 %label83 to i32
  %label85 = icmp sgt i32 1, 0
  %label86 = zext i1 %label85 to i32
  br label %label87

  label87:
  %label90 = icmp ne i32 %label84, 0
  br i1 %label90, label %label88, label %label89

  label88:
  %label91 = icmp ne i32 %label86, 0
  br label %label89

  label89:
  %label92 = phi i1 [ false, %label87 ], [ %label91, %label88 ]
  %label93 = zext i1 %label92 to i32
  store i32 %label93, i32* %label7
  %label94 = icmp sgt i32 1, 1
  %label95 = zext i1 %label94 to i32
  %label96 = icmp slt i32 1, 1
  %label97 = zext i1 %label96 to i32
  br label %label98

  label98:
  %label101 = icmp ne i32 %label95, 0
  br i1 %label101, label %label99, label %label100

  label99:
  %label102 = icmp ne i32 %label97, 0
  br label %label100

  label100:
  %label103 = phi i1 [ false, %label98 ], [ %label102, %label99 ]
  %label104 = zext i1 %label103 to i32
  store i32 %label104, i32* %label8
  %label105 = icmp sgt i32 1, 2
  %label106 = zext i1 %label105 to i32
  %label107 = icmp slt i32 1, 2
  %label108 = zext i1 %label107 to i32
  br label %label109

  label109:
  %label112 = icmp ne i32 %label106, 0
  br i1 %label112, label %label110, label %label111

  label110:
  %label113 = icmp ne i32 %label108, 0
  br label %label111

  label111:
  %label114 = phi i1 [ false, %label109 ], [ %label113, %label110 ]
  %label115 = zext i1 %label114 to i32
  store i32 %label115, i32* %label9
  %label116 = icmp sgt i32 1, 0
  %label117 = zext i1 %label116 to i32
  %label118 = icmp slt i32 1, 0
  %label119 = zext i1 %label118 to i32
  br label %label120

  label120:
  %label123 = icmp ne i32 %label117, 0
  br i1 %label123, label %label121, label %label122

  label121:
  %label124 = icmp ne i32 %label119, 0
  br label %label122

  label122:
  %label125 = phi i1 [ false, %label120 ], [ %label124, %label121 ]
  %label126 = zext i1 %label125 to i32
  store i32 %label126, i32* %label10
  %label127 = icmp sle i32 1, 1
  %label128 = zext i1 %label127 to i32
  %label129 = icmp sge i32 1, 1
  %label130 = zext i1 %label129 to i32
  br label %label131

  label131:
  %label134 = icmp ne i32 %label128, 0
  br i1 %label134, label %label132, label %label133

  label132:
  %label135 = icmp ne i32 %label130, 0
  br label %label133

  label133:
  %label136 = phi i1 [ false, %label131 ], [ %label135, %label132 ]
  %label137 = zext i1 %label136 to i32
  store i32 %label137, i32* %label11
  %label138 = icmp sle i32 1, 2
  %label139 = zext i1 %label138 to i32
  %label140 = icmp sge i32 1, 2
  %label141 = zext i1 %label140 to i32
  br label %label142

  label142:
  %label145 = icmp ne i32 %label139, 0
  br i1 %label145, label %label143, label %label144

  label143:
  %label146 = icmp ne i32 %label141, 0
  br label %label144

  label144:
  %label147 = phi i1 [ false, %label142 ], [ %label146, %label143 ]
  %label148 = zext i1 %label147 to i32
  store i32 %label148, i32* %label12
  %label149 = icmp sle i32 1, 0
  %label150 = zext i1 %label149 to i32
  %label151 = icmp sge i32 1, 0
  %label152 = zext i1 %label151 to i32
  br label %label153

  label153:
  %label156 = icmp ne i32 %label150, 0
  br i1 %label156, label %label154, label %label155

  label154:
  %label157 = icmp ne i32 %label152, 0
  br label %label155

  label155:
  %label158 = phi i1 [ false, %label153 ], [ %label157, %label154 ]
  %label159 = zext i1 %label158 to i32
  store i32 %label159, i32* %label13
  %label160 = icmp sge i32 1, 1
  %label161 = zext i1 %label160 to i32
  %label162 = icmp sle i32 1, 1
  %label163 = zext i1 %label162 to i32
  br label %label164

  label164:
  %label167 = icmp ne i32 %label161, 0
  br i1 %label167, label %label165, label %label166

  label165:
  %label168 = icmp ne i32 %label163, 0
  br label %label166

  label166:
  %label169 = phi i1 [ false, %label164 ], [ %label168, %label165 ]
  %label170 = zext i1 %label169 to i32
  store i32 %label170, i32* %label14
  %label171 = icmp sge i32 1, 2
  %label172 = zext i1 %label171 to i32
  %label173 = icmp sle i32 1, 2
  %label174 = zext i1 %label173 to i32
  br label %label175

  label175:
  %label178 = icmp ne i32 %label172, 0
  br i1 %label178, label %label176, label %label177

  label176:
  %label179 = icmp ne i32 %label174, 0
  br label %label177

  label177:
  %label180 = phi i1 [ false, %label175 ], [ %label179, %label176 ]
  %label181 = zext i1 %label180 to i32
  store i32 %label181, i32* %label15
  %label182 = icmp sge i32 1, 0
  %label183 = zext i1 %label182 to i32
  %label184 = icmp sle i32 1, 0
  %label185 = zext i1 %label184 to i32
  br label %label186

  label186:
  %label189 = icmp ne i32 %label183, 0
  br i1 %label189, label %label187, label %label188

  label187:
  %label190 = icmp ne i32 %label185, 0
  br label %label188

  label188:
  %label191 = phi i1 [ false, %label186 ], [ %label190, %label187 ]
  %label192 = zext i1 %label191 to i32
  store i32 %label192, i32* %label16
  ret void
}



