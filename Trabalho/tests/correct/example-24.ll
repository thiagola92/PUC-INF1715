declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

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
  %label5 = fptrunc double 1.000000 to float
  ret float %label5
}

define void @main() {
  %label1 = alloca i32
  %label2 = alloca i32
  %label3 = alloca i32
  %label4 = alloca float

  ; assignment
  %label5 = call i32 @first()
  store i32 %label5, i32* %label1

  ; assignment
  %label6 = load i32, i32* %label1
  %label7 = call i32 @second(i32 %label6)
  store i32 %label7, i32* %label2

  ; assignment
  %label8 = load i32, i32* %label1
  %label9 = load i32, i32* %label2
  %label10 = call i32 @third(i32 %label8, i32 %label9)
  store i32 %label10, i32* %label3

  ; assignment
  %label11 = load i32, i32* %label1
  %label12 = load i32, i32* %label2
  %label13 = call float @fourth(i32 %label11, i32 %label12)
  store float %label13, float* %label4
  ret void
}



