define void @main() {
  %label1 = alloca float
  %label2 = alloca float
  %label3 = alloca float
  store float -363996400, float* %label1
  store float -363995968, float* %label2
  %label4 = load float, float* %label2
  %label5 = load float, float* %label1
  %label6 = fadd float %label4, %label5
  store float %label6, float* %label3
  %label7 = fadd float -363994528, -363994432
  store float %label7, float* %label3
  %label8 = load float, float* %label1
  %label9 = fadd float -363993904, %label8
  store float %label9, float* %label3
  %label10 = load float, float* %label1
  %label11 = fadd float %label10, -363992880
  store float %label11, float* %label3
  %label12 = load float, float* %label2
  %label13 = load float, float* %label1
  %label14 = fsub float %label12, %label13
  store float %label14, float* %label3
  %label15 = fsub float -363991424, -363991328
  store float %label15, float* %label3
  %label16 = load float, float* %label1
  %label17 = fsub float -363990736, %label16
  store float %label17, float* %label3
  %label18 = load float, float* %label1
  %label19 = fsub float %label18, -363989712
  store float %label19, float* %label3
  %label20 = load float, float* %label2
  %label21 = load float, float* %label1
  %label22 = fmul float %label20, %label21
  store float %label22, float* %label3
  %label23 = fmul float -363988176, -363988080
  store float %label23, float* %label3
  %label24 = load float, float* %label1
  %label25 = fmul float -363987456, %label24
  store float %label25, float* %label3
  %label26 = load float, float* %label1
  %label27 = fmul float %label26, -363986432
  store float %label27, float* %label3
  %label28 = load float, float* %label2
  %label29 = load float, float* %label2
  %label30 = fdiv float %label28, %label29
  store float %label30, float* %label3
  %label31 = fdiv float -363984864, -363984768
  store float %label31, float* %label3
  %label32 = load float, float* %label1
  %label33 = fdiv float -363984112, %label32
  store float %label33, float* %label3
  %label34 = load float, float* %label1
  %label35 = fdiv float %label34, -363983088
  store float %label35, float* %label3
  ret void
}



