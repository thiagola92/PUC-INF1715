define void @main() {
  %label1 = alloca i32
  %label2 = alloca float
  %label3 = add i32 1, (null)
  store i32 %label3, i32* %label1
  %label4 = fptrunc double 3.000000 to float
  %label5 = fadd float (null), %label4
  store float %label5, float* %label2
  ret void
}



