define void @main() {
  %label1 = alloca i32
  %label2 = alloca float
  %label3 = alloca i32
  store i32 1, i32* %label3
  %label4 = load i32, i32* %label3
  %label5 = add i32 %label4, (null)
  store i32 %label5, i32* %label1
  %label6 = alloca float
  store float 3.000000, float* %label6
  %label7 = load float, float* %label6
  %label8 = fadd float (null), %label7
  store float %label8, float* %label2
  ret void
}



