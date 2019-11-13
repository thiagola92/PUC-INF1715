define void @main() {
  %label1 = alloca i32
  %label2 = alloca float
  %label3 = add i32 1, (null)
  store i32 %label3, i32* %label1
  %label4 = fadd float (null), 3.000000
  store float %label4, float* %label2
  ret void
}



