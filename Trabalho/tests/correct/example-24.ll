define i32 @first() {
  %1 = alloca i32
  store i32 1, i32* %1
  %2 = load i32, i32* %1
  ret i32 %2
}

define i32 @second(i32) {
  %2 = alloca i32
  store i32 %0, i32* %2
  %3 = alloca i32
  store i32 1, i32* %3
  %4 = load i32, i32* %3
  ret i32 %4
}

define i32 @third(i32, i32) {
  %3 = alloca i32
  store i32 %0, i32* %3
  %4 = alloca i32
  store i32 %1, i32* %4
  %5 = alloca i32
  store i32 97, i32* %5
  %6 = load i32, i32* %5
  ret i32 %6
}

define float @fourth(i32, i32) {
  %3 = alloca i32
  store i32 %0, i32* %3
  %4 = alloca i32
  store i32 %1, i32* %4
  %5 = alloca float
  store float 1.000000, float* %5
  %6 = load float, float* %5
  ret float %6
}

define void @main() {
  %1 = alloca i32
  %2 = alloca i32
  %3 = alloca i32
  %4 = alloca float
  ret void
}



