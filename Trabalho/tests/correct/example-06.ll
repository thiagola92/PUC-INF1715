declare i32 @printf(i8*, ...)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

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
  call void @first()
  %label4 = load i32, i32* %label1
  call void @second(i32 %label4)
  %label5 = load i32, i32* %label1
  %label6 = load i32, i32* %label2
  call void @third(i32 %label5, i32 %label6)
  %label7 = load i32, i32* %label1
  %label8 = load i32, i32* %label2
  %label9 = load i32, i32* %label3
  call void @fourth(i32 %label7, i32 %label8, i32 %label9)
  ret void
}



