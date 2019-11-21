declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label1 = alloca i32
  %label2 = alloca i32
  %label3 = alloca i32
  %label4 = alloca float
  %label5 = alloca i32*
  %label6 = alloca i32*
  store i32 1, i32* %label1
  store i32 0, i32* %label1
  store i32 115, i32* %label2
  store i32 1, i32* %label3
  %label7 = add i32 1, 1
  store i32 %label7, i32* %label3
  %label8 = add i32 1, 99999
  store i32 %label8, i32* %label3
  %label9 = add i32 0, 1
  store i32 %label9, i32* %label3
  %label10 = add i32 0, 0
  store i32 %label10, i32* %label3
  %label11 = fptrunc double 1.000000 to float
  store float %label11, float* %label4
  %label12 = fptrunc double 1.000000 to float
  %label13 = fptrunc double 1.000000 to float
  %label14 = fadd float %label12, %label13
  store float %label14, float* %label4
  %label15 = fptrunc double 1.000000 to float
  %label16 = fptrunc double 99999.000000 to float
  %label17 = fadd float %label15, %label16
  store float %label17, float* %label4
  %label18 = fptrunc double 0.000000 to float
  %label19 = fptrunc double 1.000000 to float
  %label20 = fadd float %label18, %label19
  store float %label20, float* %label4
  %label21 = fptrunc double 0.000000 to float
  %label22 = fptrunc double 0.000000 to float
  %label23 = fadd float %label21, %label22
  store float %label23, float* %label4
  %label24 = fptrunc double 1.500000 to float
  %label25 = fptrunc double 1.500000 to float
  %label26 = fadd float %label24, %label25
  store float %label26, float* %label4
  %label27 = fptrunc double 1.000000 to float
  %label28 = fptrunc double 0.500000 to float
  %label29 = fadd float %label27, %label28
  store float %label29, float* %label4
  %label30 = fptrunc double 0.000000 to float
  %label31 = fptrunc double 1.000000 to float
  %label32 = fadd float %label30, %label31
  store float %label32, float* %label4
  %label33 = mul i64 4, 2
  %label34 = call i8* @malloc(i64 %label33)
  %label35 = bitcast i8* %label34 to i32*
  store i32* %label35, i32** %label5
  %label36 = load i32*, i32** %label5
  %label37 = getelementptr inbounds i32, i32* %label36, i32 0
  store i32 1, i32* %label37
  %label38 = load i32*, i32** %label5
  %label39 = getelementptr inbounds i32, i32* %label38, i32 1
  store i32 0, i32* %label39
  %label40 = alloca [12 x i32]
  %label41 = getelementptr inbounds [12 x i32], [12 x i32]* %label40, i64 0, i64 0
  store i32 104, i32* %label41
  %label42 = getelementptr inbounds [12 x i32], [12 x i32]* %label40, i64 0, i64 1
  store i32 101, i32* %label42
  %label43 = getelementptr inbounds [12 x i32], [12 x i32]* %label40, i64 0, i64 2
  store i32 108, i32* %label43
  %label44 = getelementptr inbounds [12 x i32], [12 x i32]* %label40, i64 0, i64 3
  store i32 108, i32* %label44
  %label45 = getelementptr inbounds [12 x i32], [12 x i32]* %label40, i64 0, i64 4
  store i32 111, i32* %label45
  %label46 = getelementptr inbounds [12 x i32], [12 x i32]* %label40, i64 0, i64 5
  store i32 32, i32* %label46
  %label47 = getelementptr inbounds [12 x i32], [12 x i32]* %label40, i64 0, i64 6
  store i32 119, i32* %label47
  %label48 = getelementptr inbounds [12 x i32], [12 x i32]* %label40, i64 0, i64 7
  store i32 111, i32* %label48
  %label49 = getelementptr inbounds [12 x i32], [12 x i32]* %label40, i64 0, i64 8
  store i32 114, i32* %label49
  %label50 = getelementptr inbounds [12 x i32], [12 x i32]* %label40, i64 0, i64 9
  store i32 108, i32* %label50
  %label51 = getelementptr inbounds [12 x i32], [12 x i32]* %label40, i64 0, i64 10
  store i32 100, i32* %label51
  %label52 = getelementptr inbounds [12 x i32], [12 x i32]* %label40, i64 0, i64 11
  store i32 0, i32* %label52
  %label53 = getelementptr inbounds [12 x i32], [12 x i32]* %label40, i32 0, i32 0
  store i32* %label53, i32** %label6
  %label54 = alloca [14 x i32]
  %label55 = getelementptr inbounds [14 x i32], [14 x i32]* %label54, i64 0, i64 0
  store i32 34, i32* %label55
  %label56 = getelementptr inbounds [14 x i32], [14 x i32]* %label54, i64 0, i64 1
  store i32 104, i32* %label56
  %label57 = getelementptr inbounds [14 x i32], [14 x i32]* %label54, i64 0, i64 2
  store i32 101, i32* %label57
  %label58 = getelementptr inbounds [14 x i32], [14 x i32]* %label54, i64 0, i64 3
  store i32 108, i32* %label58
  %label59 = getelementptr inbounds [14 x i32], [14 x i32]* %label54, i64 0, i64 4
  store i32 108, i32* %label59
  %label60 = getelementptr inbounds [14 x i32], [14 x i32]* %label54, i64 0, i64 5
  store i32 111, i32* %label60
  %label61 = getelementptr inbounds [14 x i32], [14 x i32]* %label54, i64 0, i64 6
  store i32 10, i32* %label61
  %label62 = getelementptr inbounds [14 x i32], [14 x i32]* %label54, i64 0, i64 7
  store i32 119, i32* %label62
  %label63 = getelementptr inbounds [14 x i32], [14 x i32]* %label54, i64 0, i64 8
  store i32 111, i32* %label63
  %label64 = getelementptr inbounds [14 x i32], [14 x i32]* %label54, i64 0, i64 9
  store i32 114, i32* %label64
  %label65 = getelementptr inbounds [14 x i32], [14 x i32]* %label54, i64 0, i64 10
  store i32 108, i32* %label65
  %label66 = getelementptr inbounds [14 x i32], [14 x i32]* %label54, i64 0, i64 11
  store i32 100, i32* %label66
  %label67 = getelementptr inbounds [14 x i32], [14 x i32]* %label54, i64 0, i64 12
  store i32 34, i32* %label67
  %label68 = getelementptr inbounds [14 x i32], [14 x i32]* %label54, i64 0, i64 13
  store i32 0, i32* %label68
  %label69 = getelementptr inbounds [14 x i32], [14 x i32]* %label54, i32 0, i32 0
  store i32* %label69, i32** %label6
  ret void
}



