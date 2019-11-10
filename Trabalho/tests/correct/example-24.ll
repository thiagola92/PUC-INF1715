define i32 @first() {
  ret i32 1
}

define i1 @second(i1) {
  %2 = alloca i1
  store i1 %0, i1* %2
  ret i1 1
}
define i8 @third(i1, i1) {
  %3 = alloca i1
  store i1 %0, i1* %3
  %4 = alloca i1
  store i1 %1, i1* %4
  ret i8 97
}
define float @fourth(i1, i1) {
  %3 = alloca i1
  store i1 %0, i1* %3
  %4 = alloca i1
  store i1 %1, i1* %4
  ret float 1.000000
}
define void @main() {
  %1 = alloca i32
  %2 = alloca i1
  %3 = alloca i8
  %4 = alloca float
  ret void
}


