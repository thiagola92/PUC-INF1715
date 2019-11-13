define void @nome() {
  %label1 = alloca float
  %label2 = fptrunc double 0.100000 to float
  store float %label2, float* %label1
  %label3 = fptrunc double 0.200000 to float
  store float %label3, float* %label1
  %label4 = fptrunc double 0.300000 to float
  store float %label4, float* %label1
  %label5 = fptrunc double 0.010000 to float
  store float %label5, float* %label1
  %label6 = fptrunc double 0.005000 to float
  store float %label6, float* %label1
  ret void
}



