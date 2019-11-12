define i32 @first() {
  ret i32 1
}

define i32 @second(i32) {
  %label2 = alloca i32
  store i32 %0, i32* %label2
  ret i32 1
}

define i32 @third(i32, i32) {
  %label3 = alloca i32
  store i32 %0, i32* %label3
  %label4 = alloca i32
  store i32 %1, i32* %label4
  ret i32 97
}

define float @fourth(i32, i32) {
  %label3 = alloca i32
  store i32 %0, i32* %label3
  %label4 = alloca i32
  store i32 %1, i32* %label4
  ret float -1080970032
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



