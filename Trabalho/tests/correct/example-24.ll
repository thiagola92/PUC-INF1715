define i32 @first() {
  %label1 = alloca i32
  store i32 1, i32* %label1
  %label2 = load i32, i32* %label1
  ret i32 %label2
}

define i32 @second(i32) {
  %label2 = alloca i32
  store i32 %0, i32* %label2
  %label3 = alloca i32
  store i32 1, i32* %label3
  %label4 = load i32, i32* %label3
  ret i32 %label4
}

define i32 @third(i32, i32) {
  %label3 = alloca i32
  store i32 %0, i32* %label3
  %label4 = alloca i32
  store i32 %1, i32* %label4
  %label5 = alloca i32
  store i32 97, i32* %label5
  %label6 = load i32, i32* %label5
  ret i32 %label6
}

define float @fourth(i32, i32) {
  %label3 = alloca i32
  store i32 %0, i32* %label3
  %label4 = alloca i32
  store i32 %1, i32* %label4
  %label5 = alloca float
  store float 1.000000, float* %label5
  %label6 = load float, float* %label5
  ret float %label6
}

define void @main() {
  %label1 = alloca i32
  %label2 = alloca i32
  %label3 = alloca i32
  %label4 = alloca float
  store i32 (null), i32* %label1
  store i32 (null), i32* %label2
  store i32 (null), i32* %label3
  store float (null), float* %label4
  ret void
}



