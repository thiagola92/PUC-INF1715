define void @main() {
  %label1 = alloca float
  %label2 = fptrunc double 1075903.000000 to float
  store float %label2, float* %label1
  %label3 = fptrunc double 0.000000 to float
  store float %label3, float* %label1
  %label4 = fptrunc double 16777215.000000 to float
  store float %label4, float* %label1
  ret void
}



