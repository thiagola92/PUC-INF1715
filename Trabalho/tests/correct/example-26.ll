define void @main() {
  %label1 = alloca i32
  %label2 = alloca i32
  %label3 = alloca float
  %label4 = alloca i32
  store i32 1, i32* %label4
  %label5 = load i32, i32* %label4
  %label6 = alloca i32
  store i32 3, i32* %label6
  %label7 = load i32, i32* %label6
  %label8 = add i32 %label5, %label7
  store i32 %label8, i32* %label1
  store i32 (null), i32* %label1
  store i32 (null), i32* %label1
  store i32 (null), i32* %label1
  %label9 = alloca i32
  store i32 2, i32* %label9
  %label10 = load i32, i32* %label9
  store i32 %label10, i32* %label2
  %label11 = alloca float
  store float 2.000000, float* %label11
  %label12 = load float, float* %label11
  store float %label12, float* %label3
  %label13 = load i32, i32* %label2
  %label14 = load i32, i32* %label2
  %label15 = add i32 %label13, %label14
  store i32 %label15, i32* %label1
  store i32 (null), i32* %label1
  store i32 (null), i32* %label1
  store i32 (null), i32* %label1
  ret void
}



