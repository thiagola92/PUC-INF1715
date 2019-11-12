define void @main() {
  %label1 = alloca i32
  %label2 = alloca i32
  %label3 = mul i32 2, 3
  %label4 = add i32 1, %label3
  store i32 %label4, i32* %label1
  %label5 = mul i32 2, 3
  %label6 = add i32 %label5, 1
  store i32 %label6, i32* %label2
  %label7 = mul i32 2, 3
  %label8 = add i32 1, %label7
  %label9 = add i32 %label8, 4
  store i32 %label9, i32* %label1
  %label10 = add i32 1, 4
  %label11 = mul i32 2, 3
  %label12 = add i32 %label10, %label11
  store i32 %label12, i32* %label2
  %label13 = mul i32 2, 3
  %label14 = add i32 %label13, 1
  %label15 = add i32 %label14, 4
  store i32 %label15, i32* %label1
  %label16 = mul i32 4, 2
  %label17 = mul i32 %label16, 3
  %label18 = add i32 1, %label17
  store i32 %label18, i32* %label2
  ret void
}



