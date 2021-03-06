declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define i32 @first() {
  ret i32 1
  ret i32 0
}

define i32 @second(i32) {
  %label_1 = alloca i32
  store i32 %0, i32* %label_1
  ret i32 1
  ret i32 0
}

define i32 @third(i32, i32) {
  %label_2 = alloca i32
  store i32 %0, i32* %label_2
  %label_3 = alloca i32
  store i32 %1, i32* %label_3
  ret i32 97
  ret i32 0
}

define float @fourth(i32, i32) {
  %label_2 = alloca i32
  store i32 %0, i32* %label_2
  %label_3 = alloca i32
  store i32 %1, i32* %label_3
  %label_4 = fptrunc double 1.000000 to float
  ret float %label_4
  ret float 0.000000e+00
}

define void @main() {
  %label_0 = alloca i32
  %label_1 = alloca i32
  %label_2 = alloca i32
  %label_3 = alloca float
  %label_4 = call i32 @first()
  store i32 %label_4, i32* %label_0
  %label_5 = load i32, i32* %label_0
  %label_6 = call i32 @second(i32 %label_5)
  store i32 %label_6, i32* %label_1
  %label_7 = load i32, i32* %label_0
  %label_8 = load i32, i32* %label_1
  %label_9 = call i32 @third(i32 %label_7, i32 %label_8)
  store i32 %label_9, i32* %label_2
  %label_10 = load i32, i32* %label_0
  %label_11 = load i32, i32* %label_1
  %label_12 = call float @fourth(i32 %label_10, i32 %label_11)
  store float %label_12, float* %label_3
  ret void
}



