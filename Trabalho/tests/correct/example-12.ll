define void @main() {
  %label1 = alloca i32
  %label2 = alloca i32
  %label3 = alloca i32
  %label4 = alloca float
  %label5 = alloca i32*
  %label6 = alloca i32*
  %label7 = alloca i32
  store i32 1, i32* %label7
  %label8 = load i32, i32* %label7
  store i32 %label8, i32* %label1
  %label9 = alloca i32
  store i32 0, i32* %label9
  %label10 = load i32, i32* %label9
  store i32 %label10, i32* %label1
  %label11 = alloca i32
  store i32 115, i32* %label11
  %label12 = load i32, i32* %label11
  store i32 %label12, i32* %label2
  %label13 = alloca i32
  store i32 1, i32* %label13
  %label14 = load i32, i32* %label13
  store i32 %label14, i32* %label3
  %label15 = alloca i32
  store i32 1, i32* %label15
  %label16 = load i32, i32* %label15
  %label17 = alloca i32
  store i32 1, i32* %label17
  %label18 = load i32, i32* %label17
  %label19 = add i32 %label16, %label18
  store i32 %label19, i32* %label3
  %label20 = alloca i32
  store i32 1, i32* %label20
  %label21 = load i32, i32* %label20
  %label22 = alloca i32
  store i32 99999, i32* %label22
  %label23 = load i32, i32* %label22
  %label24 = add i32 %label21, %label23
  store i32 %label24, i32* %label3
  %label25 = alloca i32
  store i32 0, i32* %label25
  %label26 = load i32, i32* %label25
  %label27 = alloca i32
  store i32 1, i32* %label27
  %label28 = load i32, i32* %label27
  %label29 = add i32 %label26, %label28
  store i32 %label29, i32* %label3
  %label30 = alloca i32
  store i32 0, i32* %label30
  %label31 = load i32, i32* %label30
  %label32 = alloca i32
  store i32 0, i32* %label32
  %label33 = load i32, i32* %label32
  %label34 = add i32 %label31, %label33
  store i32 %label34, i32* %label3
  %label35 = alloca float
  store float 1.000000, float* %label35
  %label36 = load float, float* %label35
  store float %label36, float* %label4
  %label37 = alloca float
  store float 1.000000, float* %label37
  %label38 = load float, float* %label37
  %label39 = alloca float
  store float 1.000000, float* %label39
  %label40 = load float, float* %label39
  %label41 = fadd float %label38, %label40
  store float %label41, float* %label4
  %label42 = alloca float
  store float 1.000000, float* %label42
  %label43 = load float, float* %label42
  %label44 = alloca float
  store float 99999.000000, float* %label44
  %label45 = load float, float* %label44
  %label46 = fadd float %label43, %label45
  store float %label46, float* %label4
  %label47 = alloca float
  store float 0.000000, float* %label47
  %label48 = load float, float* %label47
  %label49 = alloca float
  store float 1.000000, float* %label49
  %label50 = load float, float* %label49
  %label51 = fadd float %label48, %label50
  store float %label51, float* %label4
  %label52 = alloca float
  store float 0.000000, float* %label52
  %label53 = load float, float* %label52
  %label54 = alloca float
  store float 0.000000, float* %label54
  %label55 = load float, float* %label54
  %label56 = fadd float %label53, %label55
  store float %label56, float* %label4
  %label57 = alloca float
  store float 1.500000, float* %label57
  %label58 = load float, float* %label57
  %label59 = alloca float
  store float 1.500000, float* %label59
  %label60 = load float, float* %label59
  %label61 = fadd float %label58, %label60
  store float %label61, float* %label4
  %label62 = alloca float
  store float 1.000000, float* %label62
  %label63 = load float, float* %label62
  %label64 = alloca float
  store float 0.500000, float* %label64
  %label65 = load float, float* %label64
  %label66 = fadd float %label63, %label65
  store float %label66, float* %label4
  %label67 = alloca float
  store float 0.000000, float* %label67
  %label68 = load float, float* %label67
  %label69 = alloca float
  store float 1.000000, float* %label69
  %label70 = load float, float* %label69
  %label71 = fadd float %label68, %label70
  store float %label71, float* %label4
  ret void
}



