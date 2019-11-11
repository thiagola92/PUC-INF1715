define void @main() {
  %label1 = alloca float
  %label2 = alloca float
  store float 1075903.000000, float* %label2
  %label3 = load float, float* %label2
  store float %label3, float* %label1
  %label4 = alloca float
  store float 0.000000, float* %label4
  %label5 = load float, float* %label4
  store float %label5, float* %label1
  %label6 = alloca float
  store float 16777215.000000, float* %label6
  %label7 = load float, float* %label6
  store float %label7, float* %label1
  ret void
}



