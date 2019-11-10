define void @first() {
  ret void
}

define void @second(i32) {
  %2 = alloca i32
  store i32 %0, i32* %2
  ret void
}

define void @third(i32, i32) {
  %3 = alloca i32
  store i32 %0, i32* %3
  %4 = alloca i32
  store i32 %1, i32* %4
  ret void
}

define void @fourth(i32, i32, i32) {
  %4 = alloca i32
  store i32 %0, i32* %4
  %5 = alloca i32
  store i32 %1, i32* %5
  %6 = alloca i32
  store i32 %2, i32* %6
  ret void
}



