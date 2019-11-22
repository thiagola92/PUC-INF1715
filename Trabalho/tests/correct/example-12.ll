declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

@.print.string = constant [3 x i8] c"%s\00"

define void @main() {
  %label1 = alloca i32
  %label2 = alloca i32
  %label3 = alloca i32
  %label4 = alloca float
  %label5 = alloca i32*
  %label6 = alloca i32*

  ; assignment
  store i32 1, i32* %label1

  ; assignment
  store i32 0, i32* %label1

  ; assignment
  store i32 115, i32* %label2

  ; assignment
  store i32 1, i32* %label3
  %label7 = add i32 1, 1

  ; assignment
  store i32 %label7, i32* %label3
  %label8 = add i32 1, 99999

  ; assignment
  store i32 %label8, i32* %label3
  %label9 = add i32 0, 1

  ; assignment
  store i32 %label9, i32* %label3
  %label10 = add i32 0, 0

  ; assignment
  store i32 %label10, i32* %label3
  %label11 = fptrunc double 1.000000 to float

  ; assignment
  store float %label11, float* %label4
  %label12 = fptrunc double 1.000000 to float
  %label13 = fptrunc double 1.000000 to float
  %label14 = fadd float %label12, %label13

  ; assignment
  store float %label14, float* %label4
  %label15 = fptrunc double 1.000000 to float
  %label16 = fptrunc double 99999.000000 to float
  %label17 = fadd float %label15, %label16

  ; assignment
  store float %label17, float* %label4
  %label18 = fptrunc double 0.000000 to float
  %label19 = fptrunc double 1.000000 to float
  %label20 = fadd float %label18, %label19

  ; assignment
  store float %label20, float* %label4
  %label21 = fptrunc double 0.000000 to float
  %label22 = fptrunc double 0.000000 to float
  %label23 = fadd float %label21, %label22

  ; assignment
  store float %label23, float* %label4
  %label24 = fptrunc double 1.500000 to float
  %label25 = fptrunc double 1.500000 to float
  %label26 = fadd float %label24, %label25

  ; assignment
  store float %label26, float* %label4
  %label27 = fptrunc double 1.000000 to float
  %label28 = fptrunc double 0.500000 to float
  %label29 = fadd float %label27, %label28

  ; assignment
  store float %label29, float* %label4
  %label30 = fptrunc double 0.000000 to float
  %label31 = fptrunc double 1.000000 to float
  %label32 = fadd float %label30, %label31

  ; assignment
  store float %label32, float* %label4
  %label33 = mul i64 4, 2
  %label34 = call i8* @malloc(i64 %label33)
  %label35 = bitcast i8* %label34 to i32*

  ; assignment
  store i32* %label35, i32** %label5
  %label36 = load i32*, i32** %label5
  %label37 = getelementptr inbounds i32, i32* %label36, i32 0

  ; assignment
  store i32 1, i32* %label37
  %label38 = load i32*, i32** %label5
  %label39 = getelementptr inbounds i32, i32* %label38, i32 1

  ; assignment
  store i32 0, i32* %label39

  ; string
  %label40 = alloca i32*
  %label41 = mul i64 4, 12
  %label42 = call i8* @malloc(i64 %label41)
  %label43 = bitcast i8* %label42 to i32*
  store i32* %label43, i32** %label40

  ; char
  %label44 = load i32*, i32** %label40
  %label45 = getelementptr inbounds i32, i32* %label44, i32 0
  store i32 104, i32* %label45
  %label46 = load i32*, i32** %label40
  %label47 = getelementptr inbounds i32, i32* %label46, i32 1
  store i32 101, i32* %label47
  %label48 = load i32*, i32** %label40
  %label49 = getelementptr inbounds i32, i32* %label48, i32 2
  store i32 108, i32* %label49
  %label50 = load i32*, i32** %label40
  %label51 = getelementptr inbounds i32, i32* %label50, i32 3
  store i32 108, i32* %label51
  %label52 = load i32*, i32** %label40
  %label53 = getelementptr inbounds i32, i32* %label52, i32 4
  store i32 111, i32* %label53
  %label54 = load i32*, i32** %label40
  %label55 = getelementptr inbounds i32, i32* %label54, i32 5
  store i32 32, i32* %label55
  %label56 = load i32*, i32** %label40
  %label57 = getelementptr inbounds i32, i32* %label56, i32 6
  store i32 119, i32* %label57
  %label58 = load i32*, i32** %label40
  %label59 = getelementptr inbounds i32, i32* %label58, i32 7
  store i32 111, i32* %label59
  %label60 = load i32*, i32** %label40
  %label61 = getelementptr inbounds i32, i32* %label60, i32 8
  store i32 114, i32* %label61
  %label62 = load i32*, i32** %label40
  %label63 = getelementptr inbounds i32, i32* %label62, i32 9
  store i32 108, i32* %label63
  %label64 = load i32*, i32** %label40
  %label65 = getelementptr inbounds i32, i32* %label64, i32 10
  store i32 100, i32* %label65
  %label66 = load i32*, i32** %label40
  %label67 = getelementptr inbounds i32, i32* %label66, i32 11
  store i32 0, i32* %label67

  ; assignment
  store i32* %label43, i32** %label6

  ; string
  %label68 = alloca i32*
  %label69 = mul i64 4, 14
  %label70 = call i8* @malloc(i64 %label69)
  %label71 = bitcast i8* %label70 to i32*
  store i32* %label71, i32** %label68

  ; char
  %label72 = load i32*, i32** %label68
  %label73 = getelementptr inbounds i32, i32* %label72, i32 0
  store i32 34, i32* %label73
  %label74 = load i32*, i32** %label68
  %label75 = getelementptr inbounds i32, i32* %label74, i32 1
  store i32 104, i32* %label75
  %label76 = load i32*, i32** %label68
  %label77 = getelementptr inbounds i32, i32* %label76, i32 2
  store i32 101, i32* %label77
  %label78 = load i32*, i32** %label68
  %label79 = getelementptr inbounds i32, i32* %label78, i32 3
  store i32 108, i32* %label79
  %label80 = load i32*, i32** %label68
  %label81 = getelementptr inbounds i32, i32* %label80, i32 4
  store i32 108, i32* %label81
  %label82 = load i32*, i32** %label68
  %label83 = getelementptr inbounds i32, i32* %label82, i32 5
  store i32 111, i32* %label83
  %label84 = load i32*, i32** %label68
  %label85 = getelementptr inbounds i32, i32* %label84, i32 6
  store i32 10, i32* %label85
  %label86 = load i32*, i32** %label68
  %label87 = getelementptr inbounds i32, i32* %label86, i32 7
  store i32 119, i32* %label87
  %label88 = load i32*, i32** %label68
  %label89 = getelementptr inbounds i32, i32* %label88, i32 8
  store i32 111, i32* %label89
  %label90 = load i32*, i32** %label68
  %label91 = getelementptr inbounds i32, i32* %label90, i32 9
  store i32 114, i32* %label91
  %label92 = load i32*, i32** %label68
  %label93 = getelementptr inbounds i32, i32* %label92, i32 10
  store i32 108, i32* %label93
  %label94 = load i32*, i32** %label68
  %label95 = getelementptr inbounds i32, i32* %label94, i32 11
  store i32 100, i32* %label95
  %label96 = load i32*, i32** %label68
  %label97 = getelementptr inbounds i32, i32* %label96, i32 12
  store i32 34, i32* %label97
  %label98 = load i32*, i32** %label68
  %label99 = getelementptr inbounds i32, i32* %label98, i32 13
  store i32 0, i32* %label99

  ; assignment
  store i32* %label71, i32** %label6
  ret void
}



