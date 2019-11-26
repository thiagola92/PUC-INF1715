declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @declaring_and_setting_variables() {
  %label1 = alloca i32
  %label2 = alloca i32
  %label3 = alloca i32
  %label4 = alloca float
  store i32 1, i32* %label1
  store i32 97, i32* %label2
  store i32 1, i32* %label3
  %label5 = fptrunc double 1.000000 to float
  store float %label5, float* %label4

  ;19

  %label6 = alloca i32*
  %label7 = mul i64 4, 19
  %label8 = call i8* @malloc(i64 %label7)
  %label9 = bitcast i8* %label8 to i32*
  store i32* %label9, i32** %label6
  %label10 = load i32*, i32** %label6
  %label11 = getelementptr inbounds i32, i32* %label10, i32 0
  store i32 80, i32* %label11
  %label12 = load i32*, i32** %label6
  %label13 = getelementptr inbounds i32, i32* %label12, i32 1
  store i32 114, i32* %label13
  %label14 = load i32*, i32** %label6
  %label15 = getelementptr inbounds i32, i32* %label14, i32 2
  store i32 105, i32* %label15
  %label16 = load i32*, i32** %label6
  %label17 = getelementptr inbounds i32, i32* %label16, i32 3
  store i32 110, i32* %label17
  %label18 = load i32*, i32** %label6
  %label19 = getelementptr inbounds i32, i32* %label18, i32 4
  store i32 116, i32* %label19
  %label20 = load i32*, i32** %label6
  %label21 = getelementptr inbounds i32, i32* %label20, i32 5
  store i32 105, i32* %label21
  %label22 = load i32*, i32** %label6
  %label23 = getelementptr inbounds i32, i32* %label22, i32 6
  store i32 110, i32* %label23
  %label24 = load i32*, i32** %label6
  %label25 = getelementptr inbounds i32, i32* %label24, i32 7
  store i32 103, i32* %label25
  %label26 = load i32*, i32** %label6
  %label27 = getelementptr inbounds i32, i32* %label26, i32 8
  store i32 32, i32* %label27
  %label28 = load i32*, i32** %label6
  %label29 = getelementptr inbounds i32, i32* %label28, i32 9
  store i32 101, i32* %label29
  %label30 = load i32*, i32** %label6
  %label31 = getelementptr inbounds i32, i32* %label30, i32 10
  store i32 120, i32* %label31
  %label32 = load i32*, i32** %label6
  %label33 = getelementptr inbounds i32, i32* %label32, i32 11
  store i32 97, i32* %label33
  %label34 = load i32*, i32** %label6
  %label35 = getelementptr inbounds i32, i32* %label34, i32 12
  store i32 109, i32* %label35
  %label36 = load i32*, i32** %label6
  %label37 = getelementptr inbounds i32, i32* %label36, i32 13
  store i32 112, i32* %label37
  %label38 = load i32*, i32** %label6
  %label39 = getelementptr inbounds i32, i32* %label38, i32 14
  store i32 108, i32* %label39
  %label40 = load i32*, i32** %label6
  %label41 = getelementptr inbounds i32, i32* %label40, i32 15
  store i32 101, i32* %label41
  %label42 = load i32*, i32** %label6
  %label43 = getelementptr inbounds i32, i32* %label42, i32 16
  store i32 58, i32* %label43
  %label44 = load i32*, i32** %label6
  %label45 = getelementptr inbounds i32, i32* %label44, i32 17
  store i32 10, i32* %label45
  %label46 = load i32*, i32** %label6
  %label47 = getelementptr inbounds i32, i32* %label46, i32 18
  store i32 0, i32* %label47
  %label51 = alloca i32
  store i32 0, i32* %label51
  br label %label48

  label48:
  %label52 = load i32, i32* %label51
  %label53 = getelementptr inbounds i32, i32* %label9, i32 %label52
  %label54 = load i32, i32* %label53
  %label55 = icmp eq i32 %label54, 0
  br i1 %label55, label %label50, label %label49

  label49:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label54)
  %label56 = add i32 1, %label52
  store i32 %label56, i32* %label51
  br label %label48

  label50:
  %label57 = load i32, i32* %label1
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label57)

  ;2

  %label58 = alloca i32*
  %label59 = mul i64 4, 2
  %label60 = call i8* @malloc(i64 %label59)
  %label61 = bitcast i8* %label60 to i32*
  store i32* %label61, i32** %label58
  %label62 = load i32*, i32** %label58
  %label63 = getelementptr inbounds i32, i32* %label62, i32 0
  store i32 10, i32* %label63
  %label64 = load i32*, i32** %label58
  %label65 = getelementptr inbounds i32, i32* %label64, i32 1
  store i32 0, i32* %label65
  %label69 = alloca i32
  store i32 0, i32* %label69
  br label %label66

  label66:
  %label70 = load i32, i32* %label69
  %label71 = getelementptr inbounds i32, i32* %label61, i32 %label70
  %label72 = load i32, i32* %label71
  %label73 = icmp eq i32 %label72, 0
  br i1 %label73, label %label68, label %label67

  label67:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label72)
  %label74 = add i32 1, %label70
  store i32 %label74, i32* %label69
  br label %label66

  label68:
  %label75 = load i32, i32* %label2
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label75)

  ;2

  %label76 = alloca i32*
  %label77 = mul i64 4, 2
  %label78 = call i8* @malloc(i64 %label77)
  %label79 = bitcast i8* %label78 to i32*
  store i32* %label79, i32** %label76
  %label80 = load i32*, i32** %label76
  %label81 = getelementptr inbounds i32, i32* %label80, i32 0
  store i32 10, i32* %label81
  %label82 = load i32*, i32** %label76
  %label83 = getelementptr inbounds i32, i32* %label82, i32 1
  store i32 0, i32* %label83
  %label87 = alloca i32
  store i32 0, i32* %label87
  br label %label84

  label84:
  %label88 = load i32, i32* %label87
  %label89 = getelementptr inbounds i32, i32* %label79, i32 %label88
  %label90 = load i32, i32* %label89
  %label91 = icmp eq i32 %label90, 0
  br i1 %label91, label %label86, label %label85

  label85:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label90)
  %label92 = add i32 1, %label88
  store i32 %label92, i32* %label87
  br label %label84

  label86:
  %label93 = load i32, i32* %label3
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label93)

  ;2

  %label94 = alloca i32*
  %label95 = mul i64 4, 2
  %label96 = call i8* @malloc(i64 %label95)
  %label97 = bitcast i8* %label96 to i32*
  store i32* %label97, i32** %label94
  %label98 = load i32*, i32** %label94
  %label99 = getelementptr inbounds i32, i32* %label98, i32 0
  store i32 10, i32* %label99
  %label100 = load i32*, i32** %label94
  %label101 = getelementptr inbounds i32, i32* %label100, i32 1
  store i32 0, i32* %label101
  %label105 = alloca i32
  store i32 0, i32* %label105
  br label %label102

  label102:
  %label106 = load i32, i32* %label105
  %label107 = getelementptr inbounds i32, i32* %label97, i32 %label106
  %label108 = load i32, i32* %label107
  %label109 = icmp eq i32 %label108, 0
  br i1 %label109, label %label104, label %label103

  label103:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label108)
  %label110 = add i32 1, %label106
  store i32 %label110, i32* %label105
  br label %label102

  label104:
  %label111 = load float, float* %label4
  %label112 = fpext float %label111 to double
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.float, i32 0, i32 0), double %label112)
  ret void
}

define void @main() {

  ;30

  %label1 = alloca i32*
  %label2 = mul i64 4, 30
  %label3 = call i8* @malloc(i64 %label2)
  %label4 = bitcast i8* %label3 to i32*
  store i32* %label4, i32** %label1
  %label5 = load i32*, i32** %label1
  %label6 = getelementptr inbounds i32, i32* %label5, i32 0
  store i32 87, i32* %label6
  %label7 = load i32*, i32** %label1
  %label8 = getelementptr inbounds i32, i32* %label7, i32 1
  store i32 101, i32* %label8
  %label9 = load i32*, i32** %label1
  %label10 = getelementptr inbounds i32, i32* %label9, i32 2
  store i32 108, i32* %label10
  %label11 = load i32*, i32** %label1
  %label12 = getelementptr inbounds i32, i32* %label11, i32 3
  store i32 99, i32* %label12
  %label13 = load i32*, i32** %label1
  %label14 = getelementptr inbounds i32, i32* %label13, i32 4
  store i32 111, i32* %label14
  %label15 = load i32*, i32** %label1
  %label16 = getelementptr inbounds i32, i32* %label15, i32 5
  store i32 109, i32* %label16
  %label17 = load i32*, i32** %label1
  %label18 = getelementptr inbounds i32, i32* %label17, i32 6
  store i32 101, i32* %label18
  %label19 = load i32*, i32** %label1
  %label20 = getelementptr inbounds i32, i32* %label19, i32 7
  store i32 32, i32* %label20
  %label21 = load i32*, i32** %label1
  %label22 = getelementptr inbounds i32, i32* %label21, i32 8
  store i32 116, i32* %label22
  %label23 = load i32*, i32** %label1
  %label24 = getelementptr inbounds i32, i32* %label23, i32 9
  store i32 111, i32* %label24
  %label25 = load i32*, i32** %label1
  %label26 = getelementptr inbounds i32, i32* %label25, i32 10
  store i32 32, i32* %label26
  %label27 = load i32*, i32** %label1
  %label28 = getelementptr inbounds i32, i32* %label27, i32 11
  store i32 109, i32* %label28
  %label29 = load i32*, i32** %label1
  %label30 = getelementptr inbounds i32, i32* %label29, i32 12
  store i32 121, i32* %label30
  %label31 = load i32*, i32** %label1
  %label32 = getelementptr inbounds i32, i32* %label31, i32 13
  store i32 32, i32* %label32
  %label33 = load i32*, i32** %label1
  %label34 = getelementptr inbounds i32, i32* %label33, i32 14
  store i32 109, i32* %label34
  %label35 = load i32*, i32** %label1
  %label36 = getelementptr inbounds i32, i32* %label35, i32 15
  store i32 111, i32* %label36
  %label37 = load i32*, i32** %label1
  %label38 = getelementptr inbounds i32, i32* %label37, i32 16
  store i32 110, i32* %label38
  %label39 = load i32*, i32** %label1
  %label40 = getelementptr inbounds i32, i32* %label39, i32 17
  store i32 103, i32* %label40
  %label41 = load i32*, i32** %label1
  %label42 = getelementptr inbounds i32, i32* %label41, i32 18
  store i32 97, i32* %label42
  %label43 = load i32*, i32** %label1
  %label44 = getelementptr inbounds i32, i32* %label43, i32 19
  store i32 32, i32* %label44
  %label45 = load i32*, i32** %label1
  %label46 = getelementptr inbounds i32, i32* %label45, i32 20
  store i32 99, i32* %label46
  %label47 = load i32*, i32** %label1
  %label48 = getelementptr inbounds i32, i32* %label47, i32 21
  store i32 111, i32* %label48
  %label49 = load i32*, i32** %label1
  %label50 = getelementptr inbounds i32, i32* %label49, i32 22
  store i32 109, i32* %label50
  %label51 = load i32*, i32** %label1
  %label52 = getelementptr inbounds i32, i32* %label51, i32 23
  store i32 112, i32* %label52
  %label53 = load i32*, i32** %label1
  %label54 = getelementptr inbounds i32, i32* %label53, i32 24
  store i32 105, i32* %label54
  %label55 = load i32*, i32** %label1
  %label56 = getelementptr inbounds i32, i32* %label55, i32 25
  store i32 108, i32* %label56
  %label57 = load i32*, i32** %label1
  %label58 = getelementptr inbounds i32, i32* %label57, i32 26
  store i32 101, i32* %label58
  %label59 = load i32*, i32** %label1
  %label60 = getelementptr inbounds i32, i32* %label59, i32 27
  store i32 114, i32* %label60
  %label61 = load i32*, i32** %label1
  %label62 = getelementptr inbounds i32, i32* %label61, i32 28
  store i32 10, i32* %label62
  %label63 = load i32*, i32** %label1
  %label64 = getelementptr inbounds i32, i32* %label63, i32 29
  store i32 0, i32* %label64
  %label68 = alloca i32
  store i32 0, i32* %label68
  br label %label65

  label65:
  %label69 = load i32, i32* %label68
  %label70 = getelementptr inbounds i32, i32* %label4, i32 %label69
  %label71 = load i32, i32* %label70
  %label72 = icmp eq i32 %label71, 0
  br i1 %label72, label %label67, label %label66

  label66:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label71)
  %label73 = add i32 1, %label69
  store i32 %label73, i32* %label68
  br label %label65

  label67:

  ;2

  %label74 = alloca i32*
  %label75 = mul i64 4, 2
  %label76 = call i8* @malloc(i64 %label75)
  %label77 = bitcast i8* %label76 to i32*
  store i32* %label77, i32** %label74
  %label78 = load i32*, i32** %label74
  %label79 = getelementptr inbounds i32, i32* %label78, i32 0
  store i32 10, i32* %label79
  %label80 = load i32*, i32** %label74
  %label81 = getelementptr inbounds i32, i32* %label80, i32 1
  store i32 0, i32* %label81
  %label85 = alloca i32
  store i32 0, i32* %label85
  br label %label82

  label82:
  %label86 = load i32, i32* %label85
  %label87 = getelementptr inbounds i32, i32* %label77, i32 %label86
  %label88 = load i32, i32* %label87
  %label89 = icmp eq i32 %label88, 0
  br i1 %label89, label %label84, label %label83

  label83:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label88)
  %label90 = add i32 1, %label86
  store i32 %label90, i32* %label85
  br label %label82

  label84:

  ;33

  %label91 = alloca i32*
  %label92 = mul i64 4, 33
  %label93 = call i8* @malloc(i64 %label92)
  %label94 = bitcast i8* %label93 to i32*
  store i32* %label94, i32** %label91
  %label95 = load i32*, i32** %label91
  %label96 = getelementptr inbounds i32, i32* %label95, i32 0
  store i32 77, i32* %label96
  %label97 = load i32*, i32** %label91
  %label98 = getelementptr inbounds i32, i32* %label97, i32 1
  store i32 111, i32* %label98
  %label99 = load i32*, i32** %label91
  %label100 = getelementptr inbounds i32, i32* %label99, i32 2
  store i32 110, i32* %label100
  %label101 = load i32*, i32** %label91
  %label102 = getelementptr inbounds i32, i32* %label101, i32 3
  store i32 103, i32* %label102
  %label103 = load i32*, i32** %label91
  %label104 = getelementptr inbounds i32, i32* %label103, i32 4
  store i32 97, i32* %label104
  %label105 = load i32*, i32** %label91
  %label106 = getelementptr inbounds i32, i32* %label105, i32 5
  store i32 32, i32* %label106
  %label107 = load i32*, i32** %label91
  %label108 = getelementptr inbounds i32, i32* %label107, i32 6
  store i32 104, i32* %label108
  %label109 = load i32*, i32** %label91
  %label110 = getelementptr inbounds i32, i32* %label109, i32 7
  store i32 97, i32* %label110
  %label111 = load i32*, i32** %label91
  %label112 = getelementptr inbounds i32, i32* %label111, i32 8
  store i32 118, i32* %label112
  %label113 = load i32*, i32** %label91
  %label114 = getelementptr inbounds i32, i32* %label113, i32 9
  store i32 101, i32* %label114
  %label115 = load i32*, i32** %label91
  %label116 = getelementptr inbounds i32, i32* %label115, i32 10
  store i32 32, i32* %label116
  %label117 = load i32*, i32** %label91
  %label118 = getelementptr inbounds i32, i32* %label117, i32 11
  store i32 52, i32* %label118
  %label119 = load i32*, i32** %label91
  %label120 = getelementptr inbounds i32, i32* %label119, i32 12
  store i32 32, i32* %label120
  %label121 = load i32*, i32** %label91
  %label122 = getelementptr inbounds i32, i32* %label121, i32 13
  store i32 116, i32* %label122
  %label123 = load i32*, i32** %label91
  %label124 = getelementptr inbounds i32, i32* %label123, i32 14
  store i32 121, i32* %label124
  %label125 = load i32*, i32** %label91
  %label126 = getelementptr inbounds i32, i32* %label125, i32 15
  store i32 112, i32* %label126
  %label127 = load i32*, i32** %label91
  %label128 = getelementptr inbounds i32, i32* %label127, i32 16
  store i32 101, i32* %label128
  %label129 = load i32*, i32** %label91
  %label130 = getelementptr inbounds i32, i32* %label129, i32 17
  store i32 115, i32* %label130
  %label131 = load i32*, i32** %label91
  %label132 = getelementptr inbounds i32, i32* %label131, i32 18
  store i32 32, i32* %label132
  %label133 = load i32*, i32** %label91
  %label134 = getelementptr inbounds i32, i32* %label133, i32 19
  store i32 111, i32* %label134
  %label135 = load i32*, i32** %label91
  %label136 = getelementptr inbounds i32, i32* %label135, i32 20
  store i32 102, i32* %label136
  %label137 = load i32*, i32** %label91
  %label138 = getelementptr inbounds i32, i32* %label137, i32 21
  store i32 32, i32* %label138
  %label139 = load i32*, i32** %label91
  %label140 = getelementptr inbounds i32, i32* %label139, i32 22
  store i32 118, i32* %label140
  %label141 = load i32*, i32** %label91
  %label142 = getelementptr inbounds i32, i32* %label141, i32 23
  store i32 97, i32* %label142
  %label143 = load i32*, i32** %label91
  %label144 = getelementptr inbounds i32, i32* %label143, i32 24
  store i32 114, i32* %label144
  %label145 = load i32*, i32** %label91
  %label146 = getelementptr inbounds i32, i32* %label145, i32 25
  store i32 105, i32* %label146
  %label147 = load i32*, i32** %label91
  %label148 = getelementptr inbounds i32, i32* %label147, i32 26
  store i32 97, i32* %label148
  %label149 = load i32*, i32** %label91
  %label150 = getelementptr inbounds i32, i32* %label149, i32 27
  store i32 98, i32* %label150
  %label151 = load i32*, i32** %label91
  %label152 = getelementptr inbounds i32, i32* %label151, i32 28
  store i32 108, i32* %label152
  %label153 = load i32*, i32** %label91
  %label154 = getelementptr inbounds i32, i32* %label153, i32 29
  store i32 101, i32* %label154
  %label155 = load i32*, i32** %label91
  %label156 = getelementptr inbounds i32, i32* %label155, i32 30
  store i32 115, i32* %label156
  %label157 = load i32*, i32** %label91
  %label158 = getelementptr inbounds i32, i32* %label157, i32 31
  store i32 10, i32* %label158
  %label159 = load i32*, i32** %label91
  %label160 = getelementptr inbounds i32, i32* %label159, i32 32
  store i32 0, i32* %label160
  %label164 = alloca i32
  store i32 0, i32* %label164
  br label %label161

  label161:
  %label165 = load i32, i32* %label164
  %label166 = getelementptr inbounds i32, i32* %label94, i32 %label165
  %label167 = load i32, i32* %label166
  %label168 = icmp eq i32 %label167, 0
  br i1 %label168, label %label163, label %label162

  label162:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label167)
  %label169 = add i32 1, %label165
  store i32 %label169, i32* %label164
  br label %label161

  label163:

  ;6

  %label170 = alloca i32*
  %label171 = mul i64 4, 6
  %label172 = call i8* @malloc(i64 %label171)
  %label173 = bitcast i8* %label172 to i32*
  store i32* %label173, i32** %label170
  %label174 = load i32*, i32** %label170
  %label175 = getelementptr inbounds i32, i32* %label174, i32 0
  store i32 98, i32* %label175
  %label176 = load i32*, i32** %label170
  %label177 = getelementptr inbounds i32, i32* %label176, i32 1
  store i32 111, i32* %label177
  %label178 = load i32*, i32** %label170
  %label179 = getelementptr inbounds i32, i32* %label178, i32 2
  store i32 111, i32* %label179
  %label180 = load i32*, i32** %label170
  %label181 = getelementptr inbounds i32, i32* %label180, i32 3
  store i32 108, i32* %label181
  %label182 = load i32*, i32** %label170
  %label183 = getelementptr inbounds i32, i32* %label182, i32 4
  store i32 10, i32* %label183
  %label184 = load i32*, i32** %label170
  %label185 = getelementptr inbounds i32, i32* %label184, i32 5
  store i32 0, i32* %label185
  %label189 = alloca i32
  store i32 0, i32* %label189
  br label %label186

  label186:
  %label190 = load i32, i32* %label189
  %label191 = getelementptr inbounds i32, i32* %label173, i32 %label190
  %label192 = load i32, i32* %label191
  %label193 = icmp eq i32 %label192, 0
  br i1 %label193, label %label188, label %label187

  label187:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label192)
  %label194 = add i32 1, %label190
  store i32 %label194, i32* %label189
  br label %label186

  label188:

  ;6

  %label195 = alloca i32*
  %label196 = mul i64 4, 6
  %label197 = call i8* @malloc(i64 %label196)
  %label198 = bitcast i8* %label197 to i32*
  store i32* %label198, i32** %label195
  %label199 = load i32*, i32** %label195
  %label200 = getelementptr inbounds i32, i32* %label199, i32 0
  store i32 99, i32* %label200
  %label201 = load i32*, i32** %label195
  %label202 = getelementptr inbounds i32, i32* %label201, i32 1
  store i32 104, i32* %label202
  %label203 = load i32*, i32** %label195
  %label204 = getelementptr inbounds i32, i32* %label203, i32 2
  store i32 97, i32* %label204
  %label205 = load i32*, i32** %label195
  %label206 = getelementptr inbounds i32, i32* %label205, i32 3
  store i32 114, i32* %label206
  %label207 = load i32*, i32** %label195
  %label208 = getelementptr inbounds i32, i32* %label207, i32 4
  store i32 10, i32* %label208
  %label209 = load i32*, i32** %label195
  %label210 = getelementptr inbounds i32, i32* %label209, i32 5
  store i32 0, i32* %label210
  %label214 = alloca i32
  store i32 0, i32* %label214
  br label %label211

  label211:
  %label215 = load i32, i32* %label214
  %label216 = getelementptr inbounds i32, i32* %label198, i32 %label215
  %label217 = load i32, i32* %label216
  %label218 = icmp eq i32 %label217, 0
  br i1 %label218, label %label213, label %label212

  label212:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label217)
  %label219 = add i32 1, %label215
  store i32 %label219, i32* %label214
  br label %label211

  label213:

  ;5

  %label220 = alloca i32*
  %label221 = mul i64 4, 5
  %label222 = call i8* @malloc(i64 %label221)
  %label223 = bitcast i8* %label222 to i32*
  store i32* %label223, i32** %label220
  %label224 = load i32*, i32** %label220
  %label225 = getelementptr inbounds i32, i32* %label224, i32 0
  store i32 105, i32* %label225
  %label226 = load i32*, i32** %label220
  %label227 = getelementptr inbounds i32, i32* %label226, i32 1
  store i32 110, i32* %label227
  %label228 = load i32*, i32** %label220
  %label229 = getelementptr inbounds i32, i32* %label228, i32 2
  store i32 116, i32* %label229
  %label230 = load i32*, i32** %label220
  %label231 = getelementptr inbounds i32, i32* %label230, i32 3
  store i32 10, i32* %label231
  %label232 = load i32*, i32** %label220
  %label233 = getelementptr inbounds i32, i32* %label232, i32 4
  store i32 0, i32* %label233
  %label237 = alloca i32
  store i32 0, i32* %label237
  br label %label234

  label234:
  %label238 = load i32, i32* %label237
  %label239 = getelementptr inbounds i32, i32* %label223, i32 %label238
  %label240 = load i32, i32* %label239
  %label241 = icmp eq i32 %label240, 0
  br i1 %label241, label %label236, label %label235

  label235:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label240)
  %label242 = add i32 1, %label238
  store i32 %label242, i32* %label237
  br label %label234

  label236:

  ;7

  %label243 = alloca i32*
  %label244 = mul i64 4, 7
  %label245 = call i8* @malloc(i64 %label244)
  %label246 = bitcast i8* %label245 to i32*
  store i32* %label246, i32** %label243
  %label247 = load i32*, i32** %label243
  %label248 = getelementptr inbounds i32, i32* %label247, i32 0
  store i32 102, i32* %label248
  %label249 = load i32*, i32** %label243
  %label250 = getelementptr inbounds i32, i32* %label249, i32 1
  store i32 108, i32* %label250
  %label251 = load i32*, i32** %label243
  %label252 = getelementptr inbounds i32, i32* %label251, i32 2
  store i32 111, i32* %label252
  %label253 = load i32*, i32** %label243
  %label254 = getelementptr inbounds i32, i32* %label253, i32 3
  store i32 97, i32* %label254
  %label255 = load i32*, i32** %label243
  %label256 = getelementptr inbounds i32, i32* %label255, i32 4
  store i32 116, i32* %label256
  %label257 = load i32*, i32** %label243
  %label258 = getelementptr inbounds i32, i32* %label257, i32 5
  store i32 10, i32* %label258
  %label259 = load i32*, i32** %label243
  %label260 = getelementptr inbounds i32, i32* %label259, i32 6
  store i32 0, i32* %label260
  %label264 = alloca i32
  store i32 0, i32* %label264
  br label %label261

  label261:
  %label265 = load i32, i32* %label264
  %label266 = getelementptr inbounds i32, i32* %label246, i32 %label265
  %label267 = load i32, i32* %label266
  %label268 = icmp eq i32 %label267, 0
  br i1 %label268, label %label263, label %label262

  label262:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label267)
  %label269 = add i32 1, %label265
  store i32 %label269, i32* %label264
  br label %label261

  label263:

  ;2

  %label270 = alloca i32*
  %label271 = mul i64 4, 2
  %label272 = call i8* @malloc(i64 %label271)
  %label273 = bitcast i8* %label272 to i32*
  store i32* %label273, i32** %label270
  %label274 = load i32*, i32** %label270
  %label275 = getelementptr inbounds i32, i32* %label274, i32 0
  store i32 10, i32* %label275
  %label276 = load i32*, i32** %label270
  %label277 = getelementptr inbounds i32, i32* %label276, i32 1
  store i32 0, i32* %label277
  %label281 = alloca i32
  store i32 0, i32* %label281
  br label %label278

  label278:
  %label282 = load i32, i32* %label281
  %label283 = getelementptr inbounds i32, i32* %label273, i32 %label282
  %label284 = load i32, i32* %label283
  %label285 = icmp eq i32 %label284, 0
  br i1 %label285, label %label280, label %label279

  label279:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label284)
  %label286 = add i32 1, %label282
  store i32 %label286, i32* %label281
  br label %label278

  label280:

  ;22

  %label287 = alloca i32*
  %label288 = mul i64 4, 22
  %label289 = call i8* @malloc(i64 %label288)
  %label290 = bitcast i8* %label289 to i32*
  store i32* %label290, i32** %label287
  %label291 = load i32*, i32** %label287
  %label292 = getelementptr inbounds i32, i32* %label291, i32 0
  store i32 68, i32* %label292
  %label293 = load i32*, i32** %label287
  %label294 = getelementptr inbounds i32, i32* %label293, i32 1
  store i32 101, i32* %label294
  %label295 = load i32*, i32** %label287
  %label296 = getelementptr inbounds i32, i32* %label295, i32 2
  store i32 99, i32* %label296
  %label297 = load i32*, i32** %label287
  %label298 = getelementptr inbounds i32, i32* %label297, i32 3
  store i32 108, i32* %label298
  %label299 = load i32*, i32** %label287
  %label300 = getelementptr inbounds i32, i32* %label299, i32 4
  store i32 97, i32* %label300
  %label301 = load i32*, i32** %label287
  %label302 = getelementptr inbounds i32, i32* %label301, i32 5
  store i32 114, i32* %label302
  %label303 = load i32*, i32** %label287
  %label304 = getelementptr inbounds i32, i32* %label303, i32 6
  store i32 105, i32* %label304
  %label305 = load i32*, i32** %label287
  %label306 = getelementptr inbounds i32, i32* %label305, i32 7
  store i32 110, i32* %label306
  %label307 = load i32*, i32** %label287
  %label308 = getelementptr inbounds i32, i32* %label307, i32 8
  store i32 103, i32* %label308
  %label309 = load i32*, i32** %label287
  %label310 = getelementptr inbounds i32, i32* %label309, i32 9
  store i32 32, i32* %label310
  %label311 = load i32*, i32** %label287
  %label312 = getelementptr inbounds i32, i32* %label311, i32 10
  store i32 118, i32* %label312
  %label313 = load i32*, i32** %label287
  %label314 = getelementptr inbounds i32, i32* %label313, i32 11
  store i32 97, i32* %label314
  %label315 = load i32*, i32** %label287
  %label316 = getelementptr inbounds i32, i32* %label315, i32 12
  store i32 114, i32* %label316
  %label317 = load i32*, i32** %label287
  %label318 = getelementptr inbounds i32, i32* %label317, i32 13
  store i32 105, i32* %label318
  %label319 = load i32*, i32** %label287
  %label320 = getelementptr inbounds i32, i32* %label319, i32 14
  store i32 97, i32* %label320
  %label321 = load i32*, i32** %label287
  %label322 = getelementptr inbounds i32, i32* %label321, i32 15
  store i32 98, i32* %label322
  %label323 = load i32*, i32** %label287
  %label324 = getelementptr inbounds i32, i32* %label323, i32 16
  store i32 108, i32* %label324
  %label325 = load i32*, i32** %label287
  %label326 = getelementptr inbounds i32, i32* %label325, i32 17
  store i32 101, i32* %label326
  %label327 = load i32*, i32** %label287
  %label328 = getelementptr inbounds i32, i32* %label327, i32 18
  store i32 115, i32* %label328
  %label329 = load i32*, i32** %label287
  %label330 = getelementptr inbounds i32, i32* %label329, i32 19
  store i32 58, i32* %label330
  %label331 = load i32*, i32** %label287
  %label332 = getelementptr inbounds i32, i32* %label331, i32 20
  store i32 10, i32* %label332
  %label333 = load i32*, i32** %label287
  %label334 = getelementptr inbounds i32, i32* %label333, i32 21
  store i32 0, i32* %label334
  %label338 = alloca i32
  store i32 0, i32* %label338
  br label %label335

  label335:
  %label339 = load i32, i32* %label338
  %label340 = getelementptr inbounds i32, i32* %label290, i32 %label339
  %label341 = load i32, i32* %label340
  %label342 = icmp eq i32 %label341, 0
  br i1 %label342, label %label337, label %label336

  label336:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label341)
  %label343 = add i32 1, %label339
  store i32 %label343, i32* %label338
  br label %label335

  label337:

  ;12

  %label344 = alloca i32*
  %label345 = mul i64 4, 12
  %label346 = call i8* @malloc(i64 %label345)
  %label347 = bitcast i8* %label346 to i32*
  store i32* %label347, i32** %label344
  %label348 = load i32*, i32** %label344
  %label349 = getelementptr inbounds i32, i32* %label348, i32 0
  store i32 102, i32* %label349
  %label350 = load i32*, i32** %label344
  %label351 = getelementptr inbounds i32, i32* %label350, i32 1
  store i32 111, i32* %label351
  %label352 = load i32*, i32** %label344
  %label353 = getelementptr inbounds i32, i32* %label352, i32 2
  store i32 111, i32* %label353
  %label354 = load i32*, i32** %label344
  %label355 = getelementptr inbounds i32, i32* %label354, i32 3
  store i32 32, i32* %label355
  %label356 = load i32*, i32** %label344
  %label357 = getelementptr inbounds i32, i32* %label356, i32 4
  store i32 58, i32* %label357
  %label358 = load i32*, i32** %label344
  %label359 = getelementptr inbounds i32, i32* %label358, i32 5
  store i32 32, i32* %label359
  %label360 = load i32*, i32** %label344
  %label361 = getelementptr inbounds i32, i32* %label360, i32 6
  store i32 98, i32* %label361
  %label362 = load i32*, i32** %label344
  %label363 = getelementptr inbounds i32, i32* %label362, i32 7
  store i32 111, i32* %label363
  %label364 = load i32*, i32** %label344
  %label365 = getelementptr inbounds i32, i32* %label364, i32 8
  store i32 111, i32* %label365
  %label366 = load i32*, i32** %label344
  %label367 = getelementptr inbounds i32, i32* %label366, i32 9
  store i32 108, i32* %label367
  %label368 = load i32*, i32** %label344
  %label369 = getelementptr inbounds i32, i32* %label368, i32 10
  store i32 10, i32* %label369
  %label370 = load i32*, i32** %label344
  %label371 = getelementptr inbounds i32, i32* %label370, i32 11
  store i32 0, i32* %label371
  %label375 = alloca i32
  store i32 0, i32* %label375
  br label %label372

  label372:
  %label376 = load i32, i32* %label375
  %label377 = getelementptr inbounds i32, i32* %label347, i32 %label376
  %label378 = load i32, i32* %label377
  %label379 = icmp eq i32 %label378, 0
  br i1 %label379, label %label374, label %label373

  label373:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label378)
  %label380 = add i32 1, %label376
  store i32 %label380, i32* %label375
  br label %label372

  label374:

  ;12

  %label381 = alloca i32*
  %label382 = mul i64 4, 12
  %label383 = call i8* @malloc(i64 %label382)
  %label384 = bitcast i8* %label383 to i32*
  store i32* %label384, i32** %label381
  %label385 = load i32*, i32** %label381
  %label386 = getelementptr inbounds i32, i32* %label385, i32 0
  store i32 98, i32* %label386
  %label387 = load i32*, i32** %label381
  %label388 = getelementptr inbounds i32, i32* %label387, i32 1
  store i32 97, i32* %label388
  %label389 = load i32*, i32** %label381
  %label390 = getelementptr inbounds i32, i32* %label389, i32 2
  store i32 114, i32* %label390
  %label391 = load i32*, i32** %label381
  %label392 = getelementptr inbounds i32, i32* %label391, i32 3
  store i32 32, i32* %label392
  %label393 = load i32*, i32** %label381
  %label394 = getelementptr inbounds i32, i32* %label393, i32 4
  store i32 58, i32* %label394
  %label395 = load i32*, i32** %label381
  %label396 = getelementptr inbounds i32, i32* %label395, i32 5
  store i32 32, i32* %label396
  %label397 = load i32*, i32** %label381
  %label398 = getelementptr inbounds i32, i32* %label397, i32 6
  store i32 99, i32* %label398
  %label399 = load i32*, i32** %label381
  %label400 = getelementptr inbounds i32, i32* %label399, i32 7
  store i32 104, i32* %label400
  %label401 = load i32*, i32** %label381
  %label402 = getelementptr inbounds i32, i32* %label401, i32 8
  store i32 97, i32* %label402
  %label403 = load i32*, i32** %label381
  %label404 = getelementptr inbounds i32, i32* %label403, i32 9
  store i32 114, i32* %label404
  %label405 = load i32*, i32** %label381
  %label406 = getelementptr inbounds i32, i32* %label405, i32 10
  store i32 10, i32* %label406
  %label407 = load i32*, i32** %label381
  %label408 = getelementptr inbounds i32, i32* %label407, i32 11
  store i32 0, i32* %label408
  %label412 = alloca i32
  store i32 0, i32* %label412
  br label %label409

  label409:
  %label413 = load i32, i32* %label412
  %label414 = getelementptr inbounds i32, i32* %label384, i32 %label413
  %label415 = load i32, i32* %label414
  %label416 = icmp eq i32 %label415, 0
  br i1 %label416, label %label411, label %label410

  label410:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label415)
  %label417 = add i32 1, %label413
  store i32 %label417, i32* %label412
  br label %label409

  label411:

  ;11

  %label418 = alloca i32*
  %label419 = mul i64 4, 11
  %label420 = call i8* @malloc(i64 %label419)
  %label421 = bitcast i8* %label420 to i32*
  store i32* %label421, i32** %label418
  %label422 = load i32*, i32** %label418
  %label423 = getelementptr inbounds i32, i32* %label422, i32 0
  store i32 102, i32* %label423
  %label424 = load i32*, i32** %label418
  %label425 = getelementptr inbounds i32, i32* %label424, i32 1
  store i32 111, i32* %label425
  %label426 = load i32*, i32** %label418
  %label427 = getelementptr inbounds i32, i32* %label426, i32 2
  store i32 98, i32* %label427
  %label428 = load i32*, i32** %label418
  %label429 = getelementptr inbounds i32, i32* %label428, i32 3
  store i32 32, i32* %label429
  %label430 = load i32*, i32** %label418
  %label431 = getelementptr inbounds i32, i32* %label430, i32 4
  store i32 58, i32* %label431
  %label432 = load i32*, i32** %label418
  %label433 = getelementptr inbounds i32, i32* %label432, i32 5
  store i32 32, i32* %label433
  %label434 = load i32*, i32** %label418
  %label435 = getelementptr inbounds i32, i32* %label434, i32 6
  store i32 105, i32* %label435
  %label436 = load i32*, i32** %label418
  %label437 = getelementptr inbounds i32, i32* %label436, i32 7
  store i32 110, i32* %label437
  %label438 = load i32*, i32** %label418
  %label439 = getelementptr inbounds i32, i32* %label438, i32 8
  store i32 116, i32* %label439
  %label440 = load i32*, i32** %label418
  %label441 = getelementptr inbounds i32, i32* %label440, i32 9
  store i32 10, i32* %label441
  %label442 = load i32*, i32** %label418
  %label443 = getelementptr inbounds i32, i32* %label442, i32 10
  store i32 0, i32* %label443
  %label447 = alloca i32
  store i32 0, i32* %label447
  br label %label444

  label444:
  %label448 = load i32, i32* %label447
  %label449 = getelementptr inbounds i32, i32* %label421, i32 %label448
  %label450 = load i32, i32* %label449
  %label451 = icmp eq i32 %label450, 0
  br i1 %label451, label %label446, label %label445

  label445:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label450)
  %label452 = add i32 1, %label448
  store i32 %label452, i32* %label447
  br label %label444

  label446:

  ;13

  %label453 = alloca i32*
  %label454 = mul i64 4, 13
  %label455 = call i8* @malloc(i64 %label454)
  %label456 = bitcast i8* %label455 to i32*
  store i32* %label456, i32** %label453
  %label457 = load i32*, i32** %label453
  %label458 = getelementptr inbounds i32, i32* %label457, i32 0
  store i32 98, i32* %label458
  %label459 = load i32*, i32** %label453
  %label460 = getelementptr inbounds i32, i32* %label459, i32 1
  store i32 97, i32* %label460
  %label461 = load i32*, i32** %label453
  %label462 = getelementptr inbounds i32, i32* %label461, i32 2
  store i32 111, i32* %label462
  %label463 = load i32*, i32** %label453
  %label464 = getelementptr inbounds i32, i32* %label463, i32 3
  store i32 32, i32* %label464
  %label465 = load i32*, i32** %label453
  %label466 = getelementptr inbounds i32, i32* %label465, i32 4
  store i32 58, i32* %label466
  %label467 = load i32*, i32** %label453
  %label468 = getelementptr inbounds i32, i32* %label467, i32 5
  store i32 32, i32* %label468
  %label469 = load i32*, i32** %label453
  %label470 = getelementptr inbounds i32, i32* %label469, i32 6
  store i32 102, i32* %label470
  %label471 = load i32*, i32** %label453
  %label472 = getelementptr inbounds i32, i32* %label471, i32 7
  store i32 108, i32* %label472
  %label473 = load i32*, i32** %label453
  %label474 = getelementptr inbounds i32, i32* %label473, i32 8
  store i32 111, i32* %label474
  %label475 = load i32*, i32** %label453
  %label476 = getelementptr inbounds i32, i32* %label475, i32 9
  store i32 97, i32* %label476
  %label477 = load i32*, i32** %label453
  %label478 = getelementptr inbounds i32, i32* %label477, i32 10
  store i32 116, i32* %label478
  %label479 = load i32*, i32** %label453
  %label480 = getelementptr inbounds i32, i32* %label479, i32 11
  store i32 10, i32* %label480
  %label481 = load i32*, i32** %label453
  %label482 = getelementptr inbounds i32, i32* %label481, i32 12
  store i32 0, i32* %label482
  %label486 = alloca i32
  store i32 0, i32* %label486
  br label %label483

  label483:
  %label487 = load i32, i32* %label486
  %label488 = getelementptr inbounds i32, i32* %label456, i32 %label487
  %label489 = load i32, i32* %label488
  %label490 = icmp eq i32 %label489, 0
  br i1 %label490, label %label485, label %label484

  label484:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label489)
  %label491 = add i32 1, %label487
  store i32 %label491, i32* %label486
  br label %label483

  label485:

  ;2

  %label492 = alloca i32*
  %label493 = mul i64 4, 2
  %label494 = call i8* @malloc(i64 %label493)
  %label495 = bitcast i8* %label494 to i32*
  store i32* %label495, i32** %label492
  %label496 = load i32*, i32** %label492
  %label497 = getelementptr inbounds i32, i32* %label496, i32 0
  store i32 10, i32* %label497
  %label498 = load i32*, i32** %label492
  %label499 = getelementptr inbounds i32, i32* %label498, i32 1
  store i32 0, i32* %label499
  %label503 = alloca i32
  store i32 0, i32* %label503
  br label %label500

  label500:
  %label504 = load i32, i32* %label503
  %label505 = getelementptr inbounds i32, i32* %label495, i32 %label504
  %label506 = load i32, i32* %label505
  %label507 = icmp eq i32 %label506, 0
  br i1 %label507, label %label502, label %label501

  label501:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label506)
  %label508 = add i32 1, %label504
  store i32 %label508, i32* %label503
  br label %label500

  label502:

  ;22

  %label509 = alloca i32*
  %label510 = mul i64 4, 22
  %label511 = call i8* @malloc(i64 %label510)
  %label512 = bitcast i8* %label511 to i32*
  store i32* %label512, i32** %label509
  %label513 = load i32*, i32** %label509
  %label514 = getelementptr inbounds i32, i32* %label513, i32 0
  store i32 83, i32* %label514
  %label515 = load i32*, i32** %label509
  %label516 = getelementptr inbounds i32, i32* %label515, i32 1
  store i32 101, i32* %label516
  %label517 = load i32*, i32** %label509
  %label518 = getelementptr inbounds i32, i32* %label517, i32 2
  store i32 116, i32* %label518
  %label519 = load i32*, i32** %label509
  %label520 = getelementptr inbounds i32, i32* %label519, i32 3
  store i32 116, i32* %label520
  %label521 = load i32*, i32** %label509
  %label522 = getelementptr inbounds i32, i32* %label521, i32 4
  store i32 105, i32* %label522
  %label523 = load i32*, i32** %label509
  %label524 = getelementptr inbounds i32, i32* %label523, i32 5
  store i32 110, i32* %label524
  %label525 = load i32*, i32** %label509
  %label526 = getelementptr inbounds i32, i32* %label525, i32 6
  store i32 103, i32* %label526
  %label527 = load i32*, i32** %label509
  %label528 = getelementptr inbounds i32, i32* %label527, i32 7
  store i32 32, i32* %label528
  %label529 = load i32*, i32** %label509
  %label530 = getelementptr inbounds i32, i32* %label529, i32 8
  store i32 116, i32* %label530
  %label531 = load i32*, i32** %label509
  %label532 = getelementptr inbounds i32, i32* %label531, i32 9
  store i32 104, i32* %label532
  %label533 = load i32*, i32** %label509
  %label534 = getelementptr inbounds i32, i32* %label533, i32 10
  store i32 101, i32* %label534
  %label535 = load i32*, i32** %label509
  %label536 = getelementptr inbounds i32, i32* %label535, i32 11
  store i32 105, i32* %label536
  %label537 = load i32*, i32** %label509
  %label538 = getelementptr inbounds i32, i32* %label537, i32 12
  store i32 114, i32* %label538
  %label539 = load i32*, i32** %label509
  %label540 = getelementptr inbounds i32, i32* %label539, i32 13
  store i32 32, i32* %label540
  %label541 = load i32*, i32** %label509
  %label542 = getelementptr inbounds i32, i32* %label541, i32 14
  store i32 118, i32* %label542
  %label543 = load i32*, i32** %label509
  %label544 = getelementptr inbounds i32, i32* %label543, i32 15
  store i32 97, i32* %label544
  %label545 = load i32*, i32** %label509
  %label546 = getelementptr inbounds i32, i32* %label545, i32 16
  store i32 108, i32* %label546
  %label547 = load i32*, i32** %label509
  %label548 = getelementptr inbounds i32, i32* %label547, i32 17
  store i32 117, i32* %label548
  %label549 = load i32*, i32** %label509
  %label550 = getelementptr inbounds i32, i32* %label549, i32 18
  store i32 101, i32* %label550
  %label551 = load i32*, i32** %label509
  %label552 = getelementptr inbounds i32, i32* %label551, i32 19
  store i32 115, i32* %label552
  %label553 = load i32*, i32** %label509
  %label554 = getelementptr inbounds i32, i32* %label553, i32 20
  store i32 10, i32* %label554
  %label555 = load i32*, i32** %label509
  %label556 = getelementptr inbounds i32, i32* %label555, i32 21
  store i32 0, i32* %label556
  %label560 = alloca i32
  store i32 0, i32* %label560
  br label %label557

  label557:
  %label561 = load i32, i32* %label560
  %label562 = getelementptr inbounds i32, i32* %label512, i32 %label561
  %label563 = load i32, i32* %label562
  %label564 = icmp eq i32 %label563, 0
  br i1 %label564, label %label559, label %label558

  label558:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label563)
  %label565 = add i32 1, %label561
  store i32 %label565, i32* %label560
  br label %label557

  label559:

  ;13

  %label566 = alloca i32*
  %label567 = mul i64 4, 13
  %label568 = call i8* @malloc(i64 %label567)
  %label569 = bitcast i8* %label568 to i32*
  store i32* %label569, i32** %label566
  %label570 = load i32*, i32** %label566
  %label571 = getelementptr inbounds i32, i32* %label570, i32 0
  store i32 102, i32* %label571
  %label572 = load i32*, i32** %label566
  %label573 = getelementptr inbounds i32, i32* %label572, i32 1
  store i32 111, i32* %label573
  %label574 = load i32*, i32** %label566
  %label575 = getelementptr inbounds i32, i32* %label574, i32 2
  store i32 111, i32* %label575
  %label576 = load i32*, i32** %label566
  %label577 = getelementptr inbounds i32, i32* %label576, i32 3
  store i32 32, i32* %label577
  %label578 = load i32*, i32** %label566
  %label579 = getelementptr inbounds i32, i32* %label578, i32 4
  store i32 61, i32* %label579
  %label580 = load i32*, i32** %label566
  %label581 = getelementptr inbounds i32, i32* %label580, i32 5
  store i32 32, i32* %label581
  %label582 = load i32*, i32** %label566
  %label583 = getelementptr inbounds i32, i32* %label582, i32 6
  store i32 116, i32* %label583
  %label584 = load i32*, i32** %label566
  %label585 = getelementptr inbounds i32, i32* %label584, i32 7
  store i32 114, i32* %label585
  %label586 = load i32*, i32** %label566
  %label587 = getelementptr inbounds i32, i32* %label586, i32 8
  store i32 117, i32* %label587
  %label588 = load i32*, i32** %label566
  %label589 = getelementptr inbounds i32, i32* %label588, i32 9
  store i32 101, i32* %label589
  %label590 = load i32*, i32** %label566
  %label591 = getelementptr inbounds i32, i32* %label590, i32 10
  store i32 59, i32* %label591
  %label592 = load i32*, i32** %label566
  %label593 = getelementptr inbounds i32, i32* %label592, i32 11
  store i32 10, i32* %label593
  %label594 = load i32*, i32** %label566
  %label595 = getelementptr inbounds i32, i32* %label594, i32 12
  store i32 0, i32* %label595
  %label599 = alloca i32
  store i32 0, i32* %label599
  br label %label596

  label596:
  %label600 = load i32, i32* %label599
  %label601 = getelementptr inbounds i32, i32* %label569, i32 %label600
  %label602 = load i32, i32* %label601
  %label603 = icmp eq i32 %label602, 0
  br i1 %label603, label %label598, label %label597

  label597:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label602)
  %label604 = add i32 1, %label600
  store i32 %label604, i32* %label599
  br label %label596

  label598:

  ;12

  %label605 = alloca i32*
  %label606 = mul i64 4, 12
  %label607 = call i8* @malloc(i64 %label606)
  %label608 = bitcast i8* %label607 to i32*
  store i32* %label608, i32** %label605
  %label609 = load i32*, i32** %label605
  %label610 = getelementptr inbounds i32, i32* %label609, i32 0
  store i32 98, i32* %label610
  %label611 = load i32*, i32** %label605
  %label612 = getelementptr inbounds i32, i32* %label611, i32 1
  store i32 97, i32* %label612
  %label613 = load i32*, i32** %label605
  %label614 = getelementptr inbounds i32, i32* %label613, i32 2
  store i32 114, i32* %label614
  %label615 = load i32*, i32** %label605
  %label616 = getelementptr inbounds i32, i32* %label615, i32 3
  store i32 32, i32* %label616
  %label617 = load i32*, i32** %label605
  %label618 = getelementptr inbounds i32, i32* %label617, i32 4
  store i32 61, i32* %label618
  %label619 = load i32*, i32** %label605
  %label620 = getelementptr inbounds i32, i32* %label619, i32 5
  store i32 32, i32* %label620
  %label621 = load i32*, i32** %label605
  %label622 = getelementptr inbounds i32, i32* %label621, i32 6
  store i32 39, i32* %label622
  %label623 = load i32*, i32** %label605
  %label624 = getelementptr inbounds i32, i32* %label623, i32 7
  store i32 97, i32* %label624
  %label625 = load i32*, i32** %label605
  %label626 = getelementptr inbounds i32, i32* %label625, i32 8
  store i32 39, i32* %label626
  %label627 = load i32*, i32** %label605
  %label628 = getelementptr inbounds i32, i32* %label627, i32 9
  store i32 59, i32* %label628
  %label629 = load i32*, i32** %label605
  %label630 = getelementptr inbounds i32, i32* %label629, i32 10
  store i32 10, i32* %label630
  %label631 = load i32*, i32** %label605
  %label632 = getelementptr inbounds i32, i32* %label631, i32 11
  store i32 0, i32* %label632
  %label636 = alloca i32
  store i32 0, i32* %label636
  br label %label633

  label633:
  %label637 = load i32, i32* %label636
  %label638 = getelementptr inbounds i32, i32* %label608, i32 %label637
  %label639 = load i32, i32* %label638
  %label640 = icmp eq i32 %label639, 0
  br i1 %label640, label %label635, label %label634

  label634:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label639)
  %label641 = add i32 1, %label637
  store i32 %label641, i32* %label636
  br label %label633

  label635:

  ;10

  %label642 = alloca i32*
  %label643 = mul i64 4, 10
  %label644 = call i8* @malloc(i64 %label643)
  %label645 = bitcast i8* %label644 to i32*
  store i32* %label645, i32** %label642
  %label646 = load i32*, i32** %label642
  %label647 = getelementptr inbounds i32, i32* %label646, i32 0
  store i32 102, i32* %label647
  %label648 = load i32*, i32** %label642
  %label649 = getelementptr inbounds i32, i32* %label648, i32 1
  store i32 111, i32* %label649
  %label650 = load i32*, i32** %label642
  %label651 = getelementptr inbounds i32, i32* %label650, i32 2
  store i32 98, i32* %label651
  %label652 = load i32*, i32** %label642
  %label653 = getelementptr inbounds i32, i32* %label652, i32 3
  store i32 32, i32* %label653
  %label654 = load i32*, i32** %label642
  %label655 = getelementptr inbounds i32, i32* %label654, i32 4
  store i32 61, i32* %label655
  %label656 = load i32*, i32** %label642
  %label657 = getelementptr inbounds i32, i32* %label656, i32 5
  store i32 32, i32* %label657
  %label658 = load i32*, i32** %label642
  %label659 = getelementptr inbounds i32, i32* %label658, i32 6
  store i32 49, i32* %label659
  %label660 = load i32*, i32** %label642
  %label661 = getelementptr inbounds i32, i32* %label660, i32 7
  store i32 59, i32* %label661
  %label662 = load i32*, i32** %label642
  %label663 = getelementptr inbounds i32, i32* %label662, i32 8
  store i32 10, i32* %label663
  %label664 = load i32*, i32** %label642
  %label665 = getelementptr inbounds i32, i32* %label664, i32 9
  store i32 0, i32* %label665
  %label669 = alloca i32
  store i32 0, i32* %label669
  br label %label666

  label666:
  %label670 = load i32, i32* %label669
  %label671 = getelementptr inbounds i32, i32* %label645, i32 %label670
  %label672 = load i32, i32* %label671
  %label673 = icmp eq i32 %label672, 0
  br i1 %label673, label %label668, label %label667

  label667:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label672)
  %label674 = add i32 1, %label670
  store i32 %label674, i32* %label669
  br label %label666

  label668:

  ;12

  %label675 = alloca i32*
  %label676 = mul i64 4, 12
  %label677 = call i8* @malloc(i64 %label676)
  %label678 = bitcast i8* %label677 to i32*
  store i32* %label678, i32** %label675
  %label679 = load i32*, i32** %label675
  %label680 = getelementptr inbounds i32, i32* %label679, i32 0
  store i32 98, i32* %label680
  %label681 = load i32*, i32** %label675
  %label682 = getelementptr inbounds i32, i32* %label681, i32 1
  store i32 97, i32* %label682
  %label683 = load i32*, i32** %label675
  %label684 = getelementptr inbounds i32, i32* %label683, i32 2
  store i32 111, i32* %label684
  %label685 = load i32*, i32** %label675
  %label686 = getelementptr inbounds i32, i32* %label685, i32 3
  store i32 32, i32* %label686
  %label687 = load i32*, i32** %label675
  %label688 = getelementptr inbounds i32, i32* %label687, i32 4
  store i32 61, i32* %label688
  %label689 = load i32*, i32** %label675
  %label690 = getelementptr inbounds i32, i32* %label689, i32 5
  store i32 32, i32* %label690
  %label691 = load i32*, i32** %label675
  %label692 = getelementptr inbounds i32, i32* %label691, i32 6
  store i32 49, i32* %label692
  %label693 = load i32*, i32** %label675
  %label694 = getelementptr inbounds i32, i32* %label693, i32 7
  store i32 46, i32* %label694
  %label695 = load i32*, i32** %label675
  %label696 = getelementptr inbounds i32, i32* %label695, i32 8
  store i32 48, i32* %label696
  %label697 = load i32*, i32** %label675
  %label698 = getelementptr inbounds i32, i32* %label697, i32 9
  store i32 59, i32* %label698
  %label699 = load i32*, i32** %label675
  %label700 = getelementptr inbounds i32, i32* %label699, i32 10
  store i32 10, i32* %label700
  %label701 = load i32*, i32** %label675
  %label702 = getelementptr inbounds i32, i32* %label701, i32 11
  store i32 0, i32* %label702
  %label706 = alloca i32
  store i32 0, i32* %label706
  br label %label703

  label703:
  %label707 = load i32, i32* %label706
  %label708 = getelementptr inbounds i32, i32* %label678, i32 %label707
  %label709 = load i32, i32* %label708
  %label710 = icmp eq i32 %label709, 0
  br i1 %label710, label %label705, label %label704

  label704:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label709)
  %label711 = add i32 1, %label707
  store i32 %label711, i32* %label706
  br label %label703

  label705:

  ;2

  %label712 = alloca i32*
  %label713 = mul i64 4, 2
  %label714 = call i8* @malloc(i64 %label713)
  %label715 = bitcast i8* %label714 to i32*
  store i32* %label715, i32** %label712
  %label716 = load i32*, i32** %label712
  %label717 = getelementptr inbounds i32, i32* %label716, i32 0
  store i32 10, i32* %label717
  %label718 = load i32*, i32** %label712
  %label719 = getelementptr inbounds i32, i32* %label718, i32 1
  store i32 0, i32* %label719
  %label723 = alloca i32
  store i32 0, i32* %label723
  br label %label720

  label720:
  %label724 = load i32, i32* %label723
  %label725 = getelementptr inbounds i32, i32* %label715, i32 %label724
  %label726 = load i32, i32* %label725
  %label727 = icmp eq i32 %label726, 0
  br i1 %label727, label %label722, label %label721

  label721:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label726)
  %label728 = add i32 1, %label724
  store i32 %label728, i32* %label723
  br label %label720

  label722:

  ;59

  %label729 = alloca i32*
  %label730 = mul i64 4, 59
  %label731 = call i8* @malloc(i64 %label730)
  %label732 = bitcast i8* %label731 to i32*
  store i32* %label732, i32** %label729
  %label733 = load i32*, i32** %label729
  %label734 = getelementptr inbounds i32, i32* %label733, i32 0
  store i32 42, i32* %label734
  %label735 = load i32*, i32** %label729
  %label736 = getelementptr inbounds i32, i32* %label735, i32 1
  store i32 32, i32* %label736
  %label737 = load i32*, i32** %label729
  %label738 = getelementptr inbounds i32, i32* %label737, i32 2
  store i32 89, i32* %label738
  %label739 = load i32*, i32** %label729
  %label740 = getelementptr inbounds i32, i32* %label739, i32 3
  store i32 111, i32* %label740
  %label741 = load i32*, i32** %label729
  %label742 = getelementptr inbounds i32, i32* %label741, i32 4
  store i32 117, i32* %label742
  %label743 = load i32*, i32** %label729
  %label744 = getelementptr inbounds i32, i32* %label743, i32 5
  store i32 32, i32* %label744
  %label745 = load i32*, i32** %label729
  %label746 = getelementptr inbounds i32, i32* %label745, i32 6
  store i32 99, i32* %label746
  %label747 = load i32*, i32** %label729
  %label748 = getelementptr inbounds i32, i32* %label747, i32 7
  store i32 97, i32* %label748
  %label749 = load i32*, i32** %label729
  %label750 = getelementptr inbounds i32, i32* %label749, i32 8
  store i32 110, i32* %label750
  %label751 = load i32*, i32** %label729
  %label752 = getelementptr inbounds i32, i32* %label751, i32 9
  store i32 39, i32* %label752
  %label753 = load i32*, i32** %label729
  %label754 = getelementptr inbounds i32, i32* %label753, i32 10
  store i32 116, i32* %label754
  %label755 = load i32*, i32** %label729
  %label756 = getelementptr inbounds i32, i32* %label755, i32 11
  store i32 32, i32* %label756
  %label757 = load i32*, i32** %label729
  %label758 = getelementptr inbounds i32, i32* %label757, i32 12
  store i32 100, i32* %label758
  %label759 = load i32*, i32** %label729
  %label760 = getelementptr inbounds i32, i32* %label759, i32 13
  store i32 101, i32* %label760
  %label761 = load i32*, i32** %label729
  %label762 = getelementptr inbounds i32, i32* %label761, i32 14
  store i32 99, i32* %label762
  %label763 = load i32*, i32** %label729
  %label764 = getelementptr inbounds i32, i32* %label763, i32 15
  store i32 108, i32* %label764
  %label765 = load i32*, i32** %label729
  %label766 = getelementptr inbounds i32, i32* %label765, i32 16
  store i32 97, i32* %label766
  %label767 = load i32*, i32** %label729
  %label768 = getelementptr inbounds i32, i32* %label767, i32 17
  store i32 114, i32* %label768
  %label769 = load i32*, i32** %label729
  %label770 = getelementptr inbounds i32, i32* %label769, i32 18
  store i32 101, i32* %label770
  %label771 = load i32*, i32** %label729
  %label772 = getelementptr inbounds i32, i32* %label771, i32 19
  store i32 32, i32* %label772
  %label773 = load i32*, i32** %label729
  %label774 = getelementptr inbounds i32, i32* %label773, i32 20
  store i32 97, i32* %label774
  %label775 = load i32*, i32** %label729
  %label776 = getelementptr inbounds i32, i32* %label775, i32 21
  store i32 110, i32* %label776
  %label777 = load i32*, i32** %label729
  %label778 = getelementptr inbounds i32, i32* %label777, i32 22
  store i32 100, i32* %label778
  %label779 = load i32*, i32** %label729
  %label780 = getelementptr inbounds i32, i32* %label779, i32 23
  store i32 32, i32* %label780
  %label781 = load i32*, i32** %label729
  %label782 = getelementptr inbounds i32, i32* %label781, i32 24
  store i32 115, i32* %label782
  %label783 = load i32*, i32** %label729
  %label784 = getelementptr inbounds i32, i32* %label783, i32 25
  store i32 101, i32* %label784
  %label785 = load i32*, i32** %label729
  %label786 = getelementptr inbounds i32, i32* %label785, i32 26
  store i32 116, i32* %label786
  %label787 = load i32*, i32** %label729
  %label788 = getelementptr inbounds i32, i32* %label787, i32 27
  store i32 32, i32* %label788
  %label789 = load i32*, i32** %label729
  %label790 = getelementptr inbounds i32, i32* %label789, i32 28
  store i32 116, i32* %label790
  %label791 = load i32*, i32** %label729
  %label792 = getelementptr inbounds i32, i32* %label791, i32 29
  store i32 104, i32* %label792
  %label793 = load i32*, i32** %label729
  %label794 = getelementptr inbounds i32, i32* %label793, i32 30
  store i32 101, i32* %label794
  %label795 = load i32*, i32** %label729
  %label796 = getelementptr inbounds i32, i32* %label795, i32 31
  store i32 32, i32* %label796
  %label797 = load i32*, i32** %label729
  %label798 = getelementptr inbounds i32, i32* %label797, i32 32
  store i32 118, i32* %label798
  %label799 = load i32*, i32** %label729
  %label800 = getelementptr inbounds i32, i32* %label799, i32 33
  store i32 97, i32* %label800
  %label801 = load i32*, i32** %label729
  %label802 = getelementptr inbounds i32, i32* %label801, i32 34
  store i32 114, i32* %label802
  %label803 = load i32*, i32** %label729
  %label804 = getelementptr inbounds i32, i32* %label803, i32 35
  store i32 105, i32* %label804
  %label805 = load i32*, i32** %label729
  %label806 = getelementptr inbounds i32, i32* %label805, i32 36
  store i32 97, i32* %label806
  %label807 = load i32*, i32** %label729
  %label808 = getelementptr inbounds i32, i32* %label807, i32 37
  store i32 98, i32* %label808
  %label809 = load i32*, i32** %label729
  %label810 = getelementptr inbounds i32, i32* %label809, i32 38
  store i32 108, i32* %label810
  %label811 = load i32*, i32** %label729
  %label812 = getelementptr inbounds i32, i32* %label811, i32 39
  store i32 101, i32* %label812
  %label813 = load i32*, i32** %label729
  %label814 = getelementptr inbounds i32, i32* %label813, i32 40
  store i32 32, i32* %label814
  %label815 = load i32*, i32** %label729
  %label816 = getelementptr inbounds i32, i32* %label815, i32 41
  store i32 97, i32* %label816
  %label817 = load i32*, i32** %label729
  %label818 = getelementptr inbounds i32, i32* %label817, i32 42
  store i32 116, i32* %label818
  %label819 = load i32*, i32** %label729
  %label820 = getelementptr inbounds i32, i32* %label819, i32 43
  store i32 32, i32* %label820
  %label821 = load i32*, i32** %label729
  %label822 = getelementptr inbounds i32, i32* %label821, i32 44
  store i32 116, i32* %label822
  %label823 = load i32*, i32** %label729
  %label824 = getelementptr inbounds i32, i32* %label823, i32 45
  store i32 104, i32* %label824
  %label825 = load i32*, i32** %label729
  %label826 = getelementptr inbounds i32, i32* %label825, i32 46
  store i32 101, i32* %label826
  %label827 = load i32*, i32** %label729
  %label828 = getelementptr inbounds i32, i32* %label827, i32 47
  store i32 32, i32* %label828
  %label829 = load i32*, i32** %label729
  %label830 = getelementptr inbounds i32, i32* %label829, i32 48
  store i32 115, i32* %label830
  %label831 = load i32*, i32** %label729
  %label832 = getelementptr inbounds i32, i32* %label831, i32 49
  store i32 97, i32* %label832
  %label833 = load i32*, i32** %label729
  %label834 = getelementptr inbounds i32, i32* %label833, i32 50
  store i32 109, i32* %label834
  %label835 = load i32*, i32** %label729
  %label836 = getelementptr inbounds i32, i32* %label835, i32 51
  store i32 101, i32* %label836
  %label837 = load i32*, i32** %label729
  %label838 = getelementptr inbounds i32, i32* %label837, i32 52
  store i32 32, i32* %label838
  %label839 = load i32*, i32** %label729
  %label840 = getelementptr inbounds i32, i32* %label839, i32 53
  store i32 116, i32* %label840
  %label841 = load i32*, i32** %label729
  %label842 = getelementptr inbounds i32, i32* %label841, i32 54
  store i32 121, i32* %label842
  %label843 = load i32*, i32** %label729
  %label844 = getelementptr inbounds i32, i32* %label843, i32 55
  store i32 112, i32* %label844
  %label845 = load i32*, i32** %label729
  %label846 = getelementptr inbounds i32, i32* %label845, i32 56
  store i32 101, i32* %label846
  %label847 = load i32*, i32** %label729
  %label848 = getelementptr inbounds i32, i32* %label847, i32 57
  store i32 10, i32* %label848
  %label849 = load i32*, i32** %label729
  %label850 = getelementptr inbounds i32, i32* %label849, i32 58
  store i32 0, i32* %label850
  %label854 = alloca i32
  store i32 0, i32* %label854
  br label %label851

  label851:
  %label855 = load i32, i32* %label854
  %label856 = getelementptr inbounds i32, i32* %label732, i32 %label855
  %label857 = load i32, i32* %label856
  %label858 = icmp eq i32 %label857, 0
  br i1 %label858, label %label853, label %label852

  label852:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label857)
  %label859 = add i32 1, %label855
  store i32 %label859, i32* %label854
  br label %label851

  label853:

  ;2

  %label860 = alloca i32*
  %label861 = mul i64 4, 2
  %label862 = call i8* @malloc(i64 %label861)
  %label863 = bitcast i8* %label862 to i32*
  store i32* %label863, i32** %label860
  %label864 = load i32*, i32** %label860
  %label865 = getelementptr inbounds i32, i32* %label864, i32 0
  store i32 10, i32* %label865
  %label866 = load i32*, i32** %label860
  %label867 = getelementptr inbounds i32, i32* %label866, i32 1
  store i32 0, i32* %label867
  %label871 = alloca i32
  store i32 0, i32* %label871
  br label %label868

  label868:
  %label872 = load i32, i32* %label871
  %label873 = getelementptr inbounds i32, i32* %label863, i32 %label872
  %label874 = load i32, i32* %label873
  %label875 = icmp eq i32 %label874, 0
  br i1 %label875, label %label870, label %label869

  label869:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label874)
  %label876 = add i32 1, %label872
  store i32 %label876, i32* %label871
  br label %label868

  label870:

  ;24

  %label877 = alloca i32*
  %label878 = mul i64 4, 24
  %label879 = call i8* @malloc(i64 %label878)
  %label880 = bitcast i8* %label879 to i32*
  store i32* %label880, i32** %label877
  %label881 = load i32*, i32** %label877
  %label882 = getelementptr inbounds i32, i32* %label881, i32 0
  store i32 80, i32* %label882
  %label883 = load i32*, i32** %label877
  %label884 = getelementptr inbounds i32, i32* %label883, i32 1
  store i32 114, i32* %label884
  %label885 = load i32*, i32** %label877
  %label886 = getelementptr inbounds i32, i32* %label885, i32 2
  store i32 105, i32* %label886
  %label887 = load i32*, i32** %label877
  %label888 = getelementptr inbounds i32, i32* %label887, i32 3
  store i32 110, i32* %label888
  %label889 = load i32*, i32** %label877
  %label890 = getelementptr inbounds i32, i32* %label889, i32 4
  store i32 116, i32* %label890
  %label891 = load i32*, i32** %label877
  %label892 = getelementptr inbounds i32, i32* %label891, i32 5
  store i32 105, i32* %label892
  %label893 = load i32*, i32** %label877
  %label894 = getelementptr inbounds i32, i32* %label893, i32 6
  store i32 110, i32* %label894
  %label895 = load i32*, i32** %label877
  %label896 = getelementptr inbounds i32, i32* %label895, i32 7
  store i32 103, i32* %label896
  %label897 = load i32*, i32** %label877
  %label898 = getelementptr inbounds i32, i32* %label897, i32 8
  store i32 32, i32* %label898
  %label899 = load i32*, i32** %label877
  %label900 = getelementptr inbounds i32, i32* %label899, i32 9
  store i32 111, i32* %label900
  %label901 = load i32*, i32** %label877
  %label902 = getelementptr inbounds i32, i32* %label901, i32 10
  store i32 110, i32* %label902
  %label903 = load i32*, i32** %label877
  %label904 = getelementptr inbounds i32, i32* %label903, i32 11
  store i32 32, i32* %label904
  %label905 = load i32*, i32** %label877
  %label906 = getelementptr inbounds i32, i32* %label905, i32 12
  store i32 116, i32* %label906
  %label907 = load i32*, i32** %label877
  %label908 = getelementptr inbounds i32, i32* %label907, i32 13
  store i32 104, i32* %label908
  %label909 = load i32*, i32** %label877
  %label910 = getelementptr inbounds i32, i32* %label909, i32 14
  store i32 101, i32* %label910
  %label911 = load i32*, i32** %label877
  %label912 = getelementptr inbounds i32, i32* %label911, i32 15
  store i32 32, i32* %label912
  %label913 = load i32*, i32** %label877
  %label914 = getelementptr inbounds i32, i32* %label913, i32 16
  store i32 115, i32* %label914
  %label915 = load i32*, i32** %label877
  %label916 = getelementptr inbounds i32, i32* %label915, i32 17
  store i32 99, i32* %label916
  %label917 = load i32*, i32** %label877
  %label918 = getelementptr inbounds i32, i32* %label917, i32 18
  store i32 114, i32* %label918
  %label919 = load i32*, i32** %label877
  %label920 = getelementptr inbounds i32, i32* %label919, i32 19
  store i32 101, i32* %label920
  %label921 = load i32*, i32** %label877
  %label922 = getelementptr inbounds i32, i32* %label921, i32 20
  store i32 101, i32* %label922
  %label923 = load i32*, i32** %label877
  %label924 = getelementptr inbounds i32, i32* %label923, i32 21
  store i32 110, i32* %label924
  %label925 = load i32*, i32** %label877
  %label926 = getelementptr inbounds i32, i32* %label925, i32 22
  store i32 10, i32* %label926
  %label927 = load i32*, i32** %label877
  %label928 = getelementptr inbounds i32, i32* %label927, i32 23
  store i32 0, i32* %label928
  %label932 = alloca i32
  store i32 0, i32* %label932
  br label %label929

  label929:
  %label933 = load i32, i32* %label932
  %label934 = getelementptr inbounds i32, i32* %label880, i32 %label933
  %label935 = load i32, i32* %label934
  %label936 = icmp eq i32 %label935, 0
  br i1 %label936, label %label931, label %label930

  label930:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label935)
  %label937 = add i32 1, %label933
  store i32 %label937, i32* %label932
  br label %label929

  label931:

  ;10

  %label938 = alloca i32*
  %label939 = mul i64 4, 10
  %label940 = call i8* @malloc(i64 %label939)
  %label941 = bitcast i8* %label940 to i32*
  store i32* %label941, i32** %label938
  %label942 = load i32*, i32** %label938
  %label943 = getelementptr inbounds i32, i32* %label942, i32 0
  store i32 64, i32* %label943
  %label944 = load i32*, i32** %label938
  %label945 = getelementptr inbounds i32, i32* %label944, i32 1
  store i32 102, i32* %label945
  %label946 = load i32*, i32** %label938
  %label947 = getelementptr inbounds i32, i32* %label946, i32 2
  store i32 111, i32* %label947
  %label948 = load i32*, i32** %label938
  %label949 = getelementptr inbounds i32, i32* %label948, i32 3
  store i32 111, i32* %label949
  %label950 = load i32*, i32** %label938
  %label951 = getelementptr inbounds i32, i32* %label950, i32 4
  store i32 98, i32* %label951
  %label952 = load i32*, i32** %label938
  %label953 = getelementptr inbounds i32, i32* %label952, i32 5
  store i32 97, i32* %label953
  %label954 = load i32*, i32** %label938
  %label955 = getelementptr inbounds i32, i32* %label954, i32 6
  store i32 114, i32* %label955
  %label956 = load i32*, i32** %label938
  %label957 = getelementptr inbounds i32, i32* %label956, i32 7
  store i32 59, i32* %label957
  %label958 = load i32*, i32** %label938
  %label959 = getelementptr inbounds i32, i32* %label958, i32 8
  store i32 10, i32* %label959
  %label960 = load i32*, i32** %label938
  %label961 = getelementptr inbounds i32, i32* %label960, i32 9
  store i32 0, i32* %label961
  %label965 = alloca i32
  store i32 0, i32* %label965
  br label %label962

  label962:
  %label966 = load i32, i32* %label965
  %label967 = getelementptr inbounds i32, i32* %label941, i32 %label966
  %label968 = load i32, i32* %label967
  %label969 = icmp eq i32 %label968, 0
  br i1 %label969, label %label964, label %label963

  label963:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label968)
  %label970 = add i32 1, %label966
  store i32 %label970, i32* %label965
  br label %label962

  label964:

  ;2

  %label971 = alloca i32*
  %label972 = mul i64 4, 2
  %label973 = call i8* @malloc(i64 %label972)
  %label974 = bitcast i8* %label973 to i32*
  store i32* %label974, i32** %label971
  %label975 = load i32*, i32** %label971
  %label976 = getelementptr inbounds i32, i32* %label975, i32 0
  store i32 10, i32* %label976
  %label977 = load i32*, i32** %label971
  %label978 = getelementptr inbounds i32, i32* %label977, i32 1
  store i32 0, i32* %label978
  %label982 = alloca i32
  store i32 0, i32* %label982
  br label %label979

  label979:
  %label983 = load i32, i32* %label982
  %label984 = getelementptr inbounds i32, i32* %label974, i32 %label983
  %label985 = load i32, i32* %label984
  %label986 = icmp eq i32 %label985, 0
  br i1 %label986, label %label981, label %label980

  label980:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label985)
  %label987 = add i32 1, %label983
  store i32 %label987, i32* %label982
  br label %label979

  label981:

  ;47

  %label988 = alloca i32*
  %label989 = mul i64 4, 47
  %label990 = call i8* @malloc(i64 %label989)
  %label991 = bitcast i8* %label990 to i32*
  store i32* %label991, i32** %label988
  %label992 = load i32*, i32** %label988
  %label993 = getelementptr inbounds i32, i32* %label992, i32 0
  store i32 42, i32* %label993
  %label994 = load i32*, i32** %label988
  %label995 = getelementptr inbounds i32, i32* %label994, i32 1
  store i32 32, i32* %label995
  %label996 = load i32*, i32** %label988
  %label997 = getelementptr inbounds i32, i32* %label996, i32 2
  store i32 39, i32* %label997
  %label998 = load i32*, i32** %label988
  %label999 = getelementptr inbounds i32, i32* %label998, i32 3
  store i32 102, i32* %label999
  %label1000 = load i32*, i32** %label988
  %label1001 = getelementptr inbounds i32, i32* %label1000, i32 4
  store i32 111, i32* %label1001
  %label1002 = load i32*, i32** %label988
  %label1003 = getelementptr inbounds i32, i32* %label1002, i32 5
  store i32 111, i32* %label1003
  %label1004 = load i32*, i32** %label988
  %label1005 = getelementptr inbounds i32, i32* %label1004, i32 6
  store i32 98, i32* %label1005
  %label1006 = load i32*, i32** %label988
  %label1007 = getelementptr inbounds i32, i32* %label1006, i32 7
  store i32 97, i32* %label1007
  %label1008 = load i32*, i32** %label988
  %label1009 = getelementptr inbounds i32, i32* %label1008, i32 8
  store i32 114, i32* %label1009
  %label1010 = load i32*, i32** %label988
  %label1011 = getelementptr inbounds i32, i32* %label1010, i32 9
  store i32 39, i32* %label1011
  %label1012 = load i32*, i32** %label988
  %label1013 = getelementptr inbounds i32, i32* %label1012, i32 10
  store i32 32, i32* %label1013
  %label1014 = load i32*, i32** %label988
  %label1015 = getelementptr inbounds i32, i32* %label1014, i32 11
  store i32 99, i32* %label1015
  %label1016 = load i32*, i32** %label988
  %label1017 = getelementptr inbounds i32, i32* %label1016, i32 12
  store i32 97, i32* %label1017
  %label1018 = load i32*, i32** %label988
  %label1019 = getelementptr inbounds i32, i32* %label1018, i32 13
  store i32 110, i32* %label1019
  %label1020 = load i32*, i32** %label988
  %label1021 = getelementptr inbounds i32, i32* %label1020, i32 14
  store i32 32, i32* %label1021
  %label1022 = load i32*, i32** %label988
  %label1023 = getelementptr inbounds i32, i32* %label1022, i32 15
  store i32 98, i32* %label1023
  %label1024 = load i32*, i32** %label988
  %label1025 = getelementptr inbounds i32, i32* %label1024, i32 16
  store i32 101, i32* %label1025
  %label1026 = load i32*, i32** %label988
  %label1027 = getelementptr inbounds i32, i32* %label1026, i32 17
  store i32 32, i32* %label1027
  %label1028 = load i32*, i32** %label988
  %label1029 = getelementptr inbounds i32, i32* %label1028, i32 18
  store i32 97, i32* %label1029
  %label1030 = load i32*, i32** %label988
  %label1031 = getelementptr inbounds i32, i32* %label1030, i32 19
  store i32 32, i32* %label1031
  %label1032 = load i32*, i32** %label988
  %label1033 = getelementptr inbounds i32, i32* %label1032, i32 20
  store i32 118, i32* %label1033
  %label1034 = load i32*, i32** %label988
  %label1035 = getelementptr inbounds i32, i32* %label1034, i32 21
  store i32 97, i32* %label1035
  %label1036 = load i32*, i32** %label988
  %label1037 = getelementptr inbounds i32, i32* %label1036, i32 22
  store i32 114, i32* %label1037
  %label1038 = load i32*, i32** %label988
  %label1039 = getelementptr inbounds i32, i32* %label1038, i32 23
  store i32 105, i32* %label1039
  %label1040 = load i32*, i32** %label988
  %label1041 = getelementptr inbounds i32, i32* %label1040, i32 24
  store i32 97, i32* %label1041
  %label1042 = load i32*, i32** %label988
  %label1043 = getelementptr inbounds i32, i32* %label1042, i32 25
  store i32 98, i32* %label1043
  %label1044 = load i32*, i32** %label988
  %label1045 = getelementptr inbounds i32, i32* %label1044, i32 26
  store i32 108, i32* %label1045
  %label1046 = load i32*, i32** %label988
  %label1047 = getelementptr inbounds i32, i32* %label1046, i32 27
  store i32 101, i32* %label1047
  %label1048 = load i32*, i32** %label988
  %label1049 = getelementptr inbounds i32, i32* %label1048, i32 28
  store i32 32, i32* %label1049
  %label1050 = load i32*, i32** %label988
  %label1051 = getelementptr inbounds i32, i32* %label1050, i32 29
  store i32 111, i32* %label1051
  %label1052 = load i32*, i32** %label988
  %label1053 = getelementptr inbounds i32, i32* %label1052, i32 30
  store i32 114, i32* %label1053
  %label1054 = load i32*, i32** %label988
  %label1055 = getelementptr inbounds i32, i32* %label1054, i32 31
  store i32 32, i32* %label1055
  %label1056 = load i32*, i32** %label988
  %label1057 = getelementptr inbounds i32, i32* %label1056, i32 32
  store i32 97, i32* %label1057
  %label1058 = load i32*, i32** %label988
  %label1059 = getelementptr inbounds i32, i32* %label1058, i32 33
  store i32 110, i32* %label1059
  %label1060 = load i32*, i32** %label988
  %label1061 = getelementptr inbounds i32, i32* %label1060, i32 34
  store i32 32, i32* %label1061
  %label1062 = load i32*, i32** %label988
  %label1063 = getelementptr inbounds i32, i32* %label1062, i32 35
  store i32 101, i32* %label1063
  %label1064 = load i32*, i32** %label988
  %label1065 = getelementptr inbounds i32, i32* %label1064, i32 36
  store i32 120, i32* %label1065
  %label1066 = load i32*, i32** %label988
  %label1067 = getelementptr inbounds i32, i32* %label1066, i32 37
  store i32 112, i32* %label1067
  %label1068 = load i32*, i32** %label988
  %label1069 = getelementptr inbounds i32, i32* %label1068, i32 38
  store i32 114, i32* %label1069
  %label1070 = load i32*, i32** %label988
  %label1071 = getelementptr inbounds i32, i32* %label1070, i32 39
  store i32 101, i32* %label1071
  %label1072 = load i32*, i32** %label988
  %label1073 = getelementptr inbounds i32, i32* %label1072, i32 40
  store i32 115, i32* %label1073
  %label1074 = load i32*, i32** %label988
  %label1075 = getelementptr inbounds i32, i32* %label1074, i32 41
  store i32 115, i32* %label1075
  %label1076 = load i32*, i32** %label988
  %label1077 = getelementptr inbounds i32, i32* %label1076, i32 42
  store i32 105, i32* %label1077
  %label1078 = load i32*, i32** %label988
  %label1079 = getelementptr inbounds i32, i32* %label1078, i32 43
  store i32 111, i32* %label1079
  %label1080 = load i32*, i32** %label988
  %label1081 = getelementptr inbounds i32, i32* %label1080, i32 44
  store i32 110, i32* %label1081
  %label1082 = load i32*, i32** %label988
  %label1083 = getelementptr inbounds i32, i32* %label1082, i32 45
  store i32 10, i32* %label1083
  %label1084 = load i32*, i32** %label988
  %label1085 = getelementptr inbounds i32, i32* %label1084, i32 46
  store i32 0, i32* %label1085
  %label1089 = alloca i32
  store i32 0, i32* %label1089
  br label %label1086

  label1086:
  %label1090 = load i32, i32* %label1089
  %label1091 = getelementptr inbounds i32, i32* %label991, i32 %label1090
  %label1092 = load i32, i32* %label1091
  %label1093 = icmp eq i32 %label1092, 0
  br i1 %label1093, label %label1088, label %label1087

  label1087:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label1092)
  %label1094 = add i32 1, %label1090
  store i32 %label1094, i32* %label1089
  br label %label1086

  label1088:

  ;2

  %label1095 = alloca i32*
  %label1096 = mul i64 4, 2
  %label1097 = call i8* @malloc(i64 %label1096)
  %label1098 = bitcast i8* %label1097 to i32*
  store i32* %label1098, i32** %label1095
  %label1099 = load i32*, i32** %label1095
  %label1100 = getelementptr inbounds i32, i32* %label1099, i32 0
  store i32 10, i32* %label1100
  %label1101 = load i32*, i32** %label1095
  %label1102 = getelementptr inbounds i32, i32* %label1101, i32 1
  store i32 0, i32* %label1102
  %label1106 = alloca i32
  store i32 0, i32* %label1106
  br label %label1103

  label1103:
  %label1107 = load i32, i32* %label1106
  %label1108 = getelementptr inbounds i32, i32* %label1098, i32 %label1107
  %label1109 = load i32, i32* %label1108
  %label1110 = icmp eq i32 %label1109, 0
  br i1 %label1110, label %label1105, label %label1104

  label1104:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label1109)
  %label1111 = add i32 1, %label1107
  store i32 %label1111, i32* %label1106
  br label %label1103

  label1105:
  call void @declaring_and_setting_variables()

  ;25

  %label1112 = alloca i32*
  %label1113 = mul i64 4, 25
  %label1114 = call i8* @malloc(i64 %label1113)
  %label1115 = bitcast i8* %label1114 to i32*
  store i32* %label1115, i32** %label1112
  %label1116 = load i32*, i32** %label1112
  %label1117 = getelementptr inbounds i32, i32* %label1116, i32 0
  store i32 10, i32* %label1117
  %label1118 = load i32*, i32** %label1112
  %label1119 = getelementptr inbounds i32, i32* %label1118, i32 1
  store i32 84, i32* %label1119
  %label1120 = load i32*, i32** %label1112
  %label1121 = getelementptr inbounds i32, i32* %label1120, i32 2
  store i32 104, i32* %label1121
  %label1122 = load i32*, i32** %label1112
  %label1123 = getelementptr inbounds i32, i32* %label1122, i32 3
  store i32 97, i32* %label1123
  %label1124 = load i32*, i32** %label1112
  %label1125 = getelementptr inbounds i32, i32* %label1124, i32 4
  store i32 110, i32* %label1125
  %label1126 = load i32*, i32** %label1112
  %label1127 = getelementptr inbounds i32, i32* %label1126, i32 5
  store i32 107, i32* %label1127
  %label1128 = load i32*, i32** %label1112
  %label1129 = getelementptr inbounds i32, i32* %label1128, i32 6
  store i32 32, i32* %label1129
  %label1130 = load i32*, i32** %label1112
  %label1131 = getelementptr inbounds i32, i32* %label1130, i32 7
  store i32 121, i32* %label1131
  %label1132 = load i32*, i32** %label1112
  %label1133 = getelementptr inbounds i32, i32* %label1132, i32 8
  store i32 111, i32* %label1133
  %label1134 = load i32*, i32** %label1112
  %label1135 = getelementptr inbounds i32, i32* %label1134, i32 9
  store i32 117, i32* %label1135
  %label1136 = load i32*, i32** %label1112
  %label1137 = getelementptr inbounds i32, i32* %label1136, i32 10
  store i32 32, i32* %label1137
  %label1138 = load i32*, i32** %label1112
  %label1139 = getelementptr inbounds i32, i32* %label1138, i32 11
  store i32 102, i32* %label1139
  %label1140 = load i32*, i32** %label1112
  %label1141 = getelementptr inbounds i32, i32* %label1140, i32 12
  store i32 111, i32* %label1141
  %label1142 = load i32*, i32** %label1112
  %label1143 = getelementptr inbounds i32, i32* %label1142, i32 13
  store i32 114, i32* %label1143
  %label1144 = load i32*, i32** %label1112
  %label1145 = getelementptr inbounds i32, i32* %label1144, i32 14
  store i32 32, i32* %label1145
  %label1146 = load i32*, i32** %label1112
  %label1147 = getelementptr inbounds i32, i32* %label1146, i32 15
  store i32 117, i32* %label1147
  %label1148 = load i32*, i32** %label1112
  %label1149 = getelementptr inbounds i32, i32* %label1148, i32 16
  store i32 115, i32* %label1149
  %label1150 = load i32*, i32** %label1112
  %label1151 = getelementptr inbounds i32, i32* %label1150, i32 17
  store i32 105, i32* %label1151
  %label1152 = load i32*, i32** %label1112
  %label1153 = getelementptr inbounds i32, i32* %label1152, i32 18
  store i32 110, i32* %label1153
  %label1154 = load i32*, i32** %label1112
  %label1155 = getelementptr inbounds i32, i32* %label1154, i32 19
  store i32 103, i32* %label1155
  %label1156 = load i32*, i32** %label1112
  %label1157 = getelementptr inbounds i32, i32* %label1156, i32 20
  store i32 32, i32* %label1157
  %label1158 = load i32*, i32** %label1112
  %label1159 = getelementptr inbounds i32, i32* %label1158, i32 21
  store i32 109, i32* %label1159
  %label1160 = load i32*, i32** %label1112
  %label1161 = getelementptr inbounds i32, i32* %label1160, i32 22
  store i32 101, i32* %label1161
  %label1162 = load i32*, i32** %label1112
  %label1163 = getelementptr inbounds i32, i32* %label1162, i32 23
  store i32 10, i32* %label1163
  %label1164 = load i32*, i32** %label1112
  %label1165 = getelementptr inbounds i32, i32* %label1164, i32 24
  store i32 0, i32* %label1165
  %label1169 = alloca i32
  store i32 0, i32* %label1169
  br label %label1166

  label1166:
  %label1170 = load i32, i32* %label1169
  %label1171 = getelementptr inbounds i32, i32* %label1115, i32 %label1170
  %label1172 = load i32, i32* %label1171
  %label1173 = icmp eq i32 %label1172, 0
  br i1 %label1173, label %label1168, label %label1167

  label1167:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label1172)
  %label1174 = add i32 1, %label1170
  store i32 %label1174, i32* %label1169
  br label %label1166

  label1168:
  ret void
}



