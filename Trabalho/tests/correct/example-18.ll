declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

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
  %label23 = icmp eq i32 1, 1
  %label24 = zext i1 %label23 to i32
  %label17 = icmp ne i32 %label24, 0
  br i1 %label17, label %label21, label %label20

  label21:
  %label25 = icmp eq i32 1, 1
  %label26 = zext i1 %label25 to i32
  %label18 = icmp ne i32 %label26, 0
  br i1 %label18, label %label19, label %label20

  label19:
  br label %label27

  label20:
  br label %label27

  label27:
  %label28 = phi i1 [ true, %label19 ], [ false, %label20 ]
  %label22 = zext i1 %label28 to i32
  store i32 %label22, i32* %label1
  %label35 = icmp eq i32 1, 2
  %label36 = zext i1 %label35 to i32
  %label29 = icmp ne i32 %label36, 0
  br i1 %label29, label %label33, label %label32

  label33:
  %label37 = icmp eq i32 2, 2
  %label38 = zext i1 %label37 to i32
  %label30 = icmp ne i32 %label38, 0
  br i1 %label30, label %label31, label %label32

  label31:
  br label %label39

  label32:
  br label %label39

  label39:
  %label40 = phi i1 [ true, %label31 ], [ false, %label32 ]
  %label34 = zext i1 %label40 to i32
  store i32 %label34, i32* %label2
  %label47 = icmp ne i32 1, 1
  %label48 = zext i1 %label47 to i32
  %label41 = icmp ne i32 %label48, 0
  br i1 %label41, label %label45, label %label44

  label45:
  %label49 = icmp eq i32 1, 1
  %label50 = zext i1 %label49 to i32
  %label42 = icmp ne i32 %label50, 0
  br i1 %label42, label %label43, label %label44

  label43:
  br label %label51

  label44:
  br label %label51

  label51:
  %label52 = phi i1 [ true, %label43 ], [ false, %label44 ]
  %label46 = zext i1 %label52 to i32
  store i32 %label46, i32* %label3
  %label59 = icmp ne i32 1, 2
  %label60 = zext i1 %label59 to i32
  %label53 = icmp ne i32 %label60, 0
  br i1 %label53, label %label57, label %label56

  label57:
  %label61 = icmp eq i32 2, 2
  %label62 = zext i1 %label61 to i32
  %label54 = icmp ne i32 %label62, 0
  br i1 %label54, label %label55, label %label56

  label55:
  br label %label63

  label56:
  br label %label63

  label63:
  %label64 = phi i1 [ true, %label55 ], [ false, %label56 ]
  %label58 = zext i1 %label64 to i32
  store i32 %label58, i32* %label4
  %label71 = icmp slt i32 1, 1
  %label72 = zext i1 %label71 to i32
  %label65 = icmp ne i32 %label72, 0
  br i1 %label65, label %label69, label %label68

  label69:
  %label73 = icmp sgt i32 1, 1
  %label74 = zext i1 %label73 to i32
  %label66 = icmp ne i32 %label74, 0
  br i1 %label66, label %label67, label %label68

  label67:
  br label %label75

  label68:
  br label %label75

  label75:
  %label76 = phi i1 [ true, %label67 ], [ false, %label68 ]
  %label70 = zext i1 %label76 to i32
  store i32 %label70, i32* %label5
  %label83 = icmp slt i32 1, 2
  %label84 = zext i1 %label83 to i32
  %label77 = icmp ne i32 %label84, 0
  br i1 %label77, label %label81, label %label80

  label81:
  %label85 = icmp sgt i32 1, 2
  %label86 = zext i1 %label85 to i32
  %label78 = icmp ne i32 %label86, 0
  br i1 %label78, label %label79, label %label80

  label79:
  br label %label87

  label80:
  br label %label87

  label87:
  %label88 = phi i1 [ true, %label79 ], [ false, %label80 ]
  %label82 = zext i1 %label88 to i32
  store i32 %label82, i32* %label6
  %label95 = icmp slt i32 1, 0
  %label96 = zext i1 %label95 to i32
  %label89 = icmp ne i32 %label96, 0
  br i1 %label89, label %label93, label %label92

  label93:
  %label97 = icmp sgt i32 1, 0
  %label98 = zext i1 %label97 to i32
  %label90 = icmp ne i32 %label98, 0
  br i1 %label90, label %label91, label %label92

  label91:
  br label %label99

  label92:
  br label %label99

  label99:
  %label100 = phi i1 [ true, %label91 ], [ false, %label92 ]
  %label94 = zext i1 %label100 to i32
  store i32 %label94, i32* %label7
  %label107 = icmp sgt i32 1, 1
  %label108 = zext i1 %label107 to i32
  %label101 = icmp ne i32 %label108, 0
  br i1 %label101, label %label105, label %label104

  label105:
  %label109 = icmp slt i32 1, 1
  %label110 = zext i1 %label109 to i32
  %label102 = icmp ne i32 %label110, 0
  br i1 %label102, label %label103, label %label104

  label103:
  br label %label111

  label104:
  br label %label111

  label111:
  %label112 = phi i1 [ true, %label103 ], [ false, %label104 ]
  %label106 = zext i1 %label112 to i32
  store i32 %label106, i32* %label8
  %label119 = icmp sgt i32 1, 2
  %label120 = zext i1 %label119 to i32
  %label113 = icmp ne i32 %label120, 0
  br i1 %label113, label %label117, label %label116

  label117:
  %label121 = icmp slt i32 1, 2
  %label122 = zext i1 %label121 to i32
  %label114 = icmp ne i32 %label122, 0
  br i1 %label114, label %label115, label %label116

  label115:
  br label %label123

  label116:
  br label %label123

  label123:
  %label124 = phi i1 [ true, %label115 ], [ false, %label116 ]
  %label118 = zext i1 %label124 to i32
  store i32 %label118, i32* %label9
  %label131 = icmp sgt i32 1, 0
  %label132 = zext i1 %label131 to i32
  %label125 = icmp ne i32 %label132, 0
  br i1 %label125, label %label129, label %label128

  label129:
  %label133 = icmp slt i32 1, 0
  %label134 = zext i1 %label133 to i32
  %label126 = icmp ne i32 %label134, 0
  br i1 %label126, label %label127, label %label128

  label127:
  br label %label135

  label128:
  br label %label135

  label135:
  %label136 = phi i1 [ true, %label127 ], [ false, %label128 ]
  %label130 = zext i1 %label136 to i32
  store i32 %label130, i32* %label10
  %label143 = icmp sle i32 1, 1
  %label144 = zext i1 %label143 to i32
  %label137 = icmp ne i32 %label144, 0
  br i1 %label137, label %label141, label %label140

  label141:
  %label145 = icmp sge i32 1, 1
  %label146 = zext i1 %label145 to i32
  %label138 = icmp ne i32 %label146, 0
  br i1 %label138, label %label139, label %label140

  label139:
  br label %label147

  label140:
  br label %label147

  label147:
  %label148 = phi i1 [ true, %label139 ], [ false, %label140 ]
  %label142 = zext i1 %label148 to i32
  store i32 %label142, i32* %label11
  %label155 = icmp sle i32 1, 2
  %label156 = zext i1 %label155 to i32
  %label149 = icmp ne i32 %label156, 0
  br i1 %label149, label %label153, label %label152

  label153:
  %label157 = icmp sge i32 1, 2
  %label158 = zext i1 %label157 to i32
  %label150 = icmp ne i32 %label158, 0
  br i1 %label150, label %label151, label %label152

  label151:
  br label %label159

  label152:
  br label %label159

  label159:
  %label160 = phi i1 [ true, %label151 ], [ false, %label152 ]
  %label154 = zext i1 %label160 to i32
  store i32 %label154, i32* %label12
  %label167 = icmp sle i32 1, 0
  %label168 = zext i1 %label167 to i32
  %label161 = icmp ne i32 %label168, 0
  br i1 %label161, label %label165, label %label164

  label165:
  %label169 = icmp sge i32 1, 0
  %label170 = zext i1 %label169 to i32
  %label162 = icmp ne i32 %label170, 0
  br i1 %label162, label %label163, label %label164

  label163:
  br label %label171

  label164:
  br label %label171

  label171:
  %label172 = phi i1 [ true, %label163 ], [ false, %label164 ]
  %label166 = zext i1 %label172 to i32
  store i32 %label166, i32* %label13
  %label179 = icmp sge i32 1, 1
  %label180 = zext i1 %label179 to i32
  %label173 = icmp ne i32 %label180, 0
  br i1 %label173, label %label177, label %label176

  label177:
  %label181 = icmp sle i32 1, 1
  %label182 = zext i1 %label181 to i32
  %label174 = icmp ne i32 %label182, 0
  br i1 %label174, label %label175, label %label176

  label175:
  br label %label183

  label176:
  br label %label183

  label183:
  %label184 = phi i1 [ true, %label175 ], [ false, %label176 ]
  %label178 = zext i1 %label184 to i32
  store i32 %label178, i32* %label14
  %label191 = icmp sge i32 1, 2
  %label192 = zext i1 %label191 to i32
  %label185 = icmp ne i32 %label192, 0
  br i1 %label185, label %label189, label %label188

  label189:
  %label193 = icmp sle i32 1, 2
  %label194 = zext i1 %label193 to i32
  %label186 = icmp ne i32 %label194, 0
  br i1 %label186, label %label187, label %label188

  label187:
  br label %label195

  label188:
  br label %label195

  label195:
  %label196 = phi i1 [ true, %label187 ], [ false, %label188 ]
  %label190 = zext i1 %label196 to i32
  store i32 %label190, i32* %label15
  %label203 = icmp sge i32 1, 0
  %label204 = zext i1 %label203 to i32
  %label197 = icmp ne i32 %label204, 0
  br i1 %label197, label %label201, label %label200

  label201:
  %label205 = icmp sle i32 1, 0
  %label206 = zext i1 %label205 to i32
  %label198 = icmp ne i32 %label206, 0
  br i1 %label198, label %label199, label %label200

  label199:
  br label %label207

  label200:
  br label %label207

  label207:
  %label208 = phi i1 [ true, %label199 ], [ false, %label200 ]
  %label202 = zext i1 %label208 to i32
  store i32 %label202, i32* %label16
  ret void
}



