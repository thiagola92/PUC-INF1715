define void @first() {
  ret void
}

define void @second(i32) {
  %label2 = alloca i32
  store i32 %0, i32* %label2
  ret void
}

define void @third(i32, i32) {
  %label3 = alloca i32
  store i32 %0, i32* %label3
  %label4 = alloca i32
  store i32 %1, i32* %label4
  ret void
}

define void @fourth(i32, i32, i32) {
  %label4 = alloca i32
  store i32 %0, i32* %label4
  %label5 = alloca i32
  store i32 %1, i32* %label5
  %label6 = alloca i32
  store i32 %2, i32* %label6
  ret void
}

define void @main() {
  %label1 = alloca i32
  %label2 = alloca i32
  %label3 = alloca i32
  ret void
}



