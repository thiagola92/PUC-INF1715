define void @main() {
  %label1 = alloca i32
  %label2 = alloca i32
  %label3 = alloca float
  %label4 = add i32 1, 3
  store i32 %label4, i32* %label1
  store i32 (null), i32* %label1
  store i32 (null), i32* %label1
  store i32 (null), i32* %label1
  store i32 2, i32* %label2
  store float 179484320, float* %label3
  %label5 = load i32, i32* %label2
  %label6 = load i32, i32* %label2
  %label7 = add i32 %label5, %label6
  store i32 %label7, i32* %label1
  store i32 (null), i32* %label1
  store i32 (null), i32* %label1
  store i32 (null), i32* %label1
  ret void
}



