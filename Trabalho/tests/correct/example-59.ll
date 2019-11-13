define void @nome() {
  %label1 = alloca float
  %label2 = fptrunc double 0.100000 to float
  store float %label2, float* %label1
  ret void
}



