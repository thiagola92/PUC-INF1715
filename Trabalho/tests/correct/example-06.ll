define void @first() {

  ret void
}
define void @second(i1) {
  %2 = alloca i1
  store i1 %0, i1* %2

  ret void
}
define void @third(i1, i1) {
  %3 = alloca i1
  store i1 %0, i1* %3
  %4 = alloca i1
  store i1 %1, i1* %4

  ret void
}
define void @third(i1, i1) {
  %3 = alloca i1
  store i1 %0, i1* %3
  %4 = alloca i1
  store i1 %1, i1* %4

  ret void
}
define void @fourth(i1, i1, i1) {
  %4 = alloca i1
  store i1 %0, i1* %4
  %5 = alloca i1
  store i1 %1, i1* %5
  %6 = alloca i1
  store i1 %2, i1* %6

  ret void
}
define void @main() {
  %1 = alloca i1
  %2 = alloca i1
  %3 = alloca i1

  ret void
}


