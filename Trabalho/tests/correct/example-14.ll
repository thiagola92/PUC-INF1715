define void @main() {
  %label1 = alloca float
  %label2 = alloca float
  %label3 = alloca float
  %label4 = alloca float
  store float 10.500000, float* %label4
  %label5 = load float, float* %label4
  store float %label5, float* %label1
  %label6 = alloca float
  store float 20.500000, float* %label6
  %label7 = load float, float* %label6
  store float %label7, float* %label2
  %label8 = load float, float* %label2
  %label9 = load float, float* %label1
  %label10 = fadd float %label8, %label9
  store float %label10, float* %label3
  %label11 = alloca float
  store float 10.500000, float* %label11
  %label12 = load float, float* %label11
  %label13 = alloca float
  store float 10.500000, float* %label13
  %label14 = load float, float* %label13
  %label15 = fadd float %label12, %label14
  store float %label15, float* %label3
  %label16 = alloca float
  store float 10.500000, float* %label16
  %label17 = load float, float* %label16
  %label18 = load float, float* %label1
  %label19 = fadd float %label17, %label18
  store float %label19, float* %label3
  %label20 = load float, float* %label1
  %label21 = alloca float
  store float 10.500000, float* %label21
  %label22 = load float, float* %label21
  %label23 = fadd float %label20, %label22
  store float %label23, float* %label3
  %label24 = load float, float* %label2
  %label25 = load float, float* %label1
  %label26 = fsub float %label24, %label25
  store float %label26, float* %label3
  %label27 = alloca float
  store float 10.500000, float* %label27
  %label28 = load float, float* %label27
  %label29 = alloca float
  store float 10.500000, float* %label29
  %label30 = load float, float* %label29
  %label31 = fsub float %label28, %label30
  store float %label31, float* %label3
  %label32 = alloca float
  store float 10.500000, float* %label32
  %label33 = load float, float* %label32
  %label34 = load float, float* %label1
  %label35 = fsub float %label33, %label34
  store float %label35, float* %label3
  %label36 = load float, float* %label1
  %label37 = alloca float
  store float 10.500000, float* %label37
  %label38 = load float, float* %label37
  %label39 = fsub float %label36, %label38
  store float %label39, float* %label3
  %label40 = load float, float* %label2
  %label41 = load float, float* %label1
  %label42 = fmul float %label40, %label41
  store float %label42, float* %label3
  %label43 = alloca float
  store float 10.500000, float* %label43
  %label44 = load float, float* %label43
  %label45 = alloca float
  store float 10.500000, float* %label45
  %label46 = load float, float* %label45
  %label47 = fmul float %label44, %label46
  store float %label47, float* %label3
  %label48 = alloca float
  store float 10.500000, float* %label48
  %label49 = load float, float* %label48
  %label50 = load float, float* %label1
  %label51 = fmul float %label49, %label50
  store float %label51, float* %label3
  %label52 = load float, float* %label1
  %label53 = alloca float
  store float 10.500000, float* %label53
  %label54 = load float, float* %label53
  %label55 = fmul float %label52, %label54
  store float %label55, float* %label3
  %label56 = load float, float* %label2
  %label57 = load float, float* %label2
  %label58 = fdiv float %label56, %label57
  store float %label58, float* %label3
  %label59 = alloca float
  store float 10.500000, float* %label59
  %label60 = load float, float* %label59
  %label61 = alloca float
  store float 10.500000, float* %label61
  %label62 = load float, float* %label61
  %label63 = fdiv float %label60, %label62
  store float %label63, float* %label3
  %label64 = alloca float
  store float 10.500000, float* %label64
  %label65 = load float, float* %label64
  %label66 = load float, float* %label1
  %label67 = fdiv float %label65, %label66
  store float %label67, float* %label3
  %label68 = load float, float* %label1
  %label69 = alloca float
  store float 10.500000, float* %label69
  %label70 = load float, float* %label69
  %label71 = fdiv float %label68, %label70
  store float %label71, float* %label3
  ret void
}



