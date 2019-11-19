declare i32 @printf(i8*, ...)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label1 = alloca i32
  %label2 = alloca i32
  %label3 = alloca float
  %label4 = add i32 1, 3
  store i32 %label4, i32* %label1
  store i32 (null), i32* %label1
  store i32 (null), i32* %label1
  store i32 (null), i32* %label1
  store i32 2, i32* %label2
  %label5 = fptrunc double 2.000000 to float
  store float %label5, float* %label3
  %label6 = load i32, i32* %label2
  %label7 = load i32, i32* %label2
  %label8 = add i32 %label6, %label7
  store i32 %label8, i32* %label1
  store i32 (null), i32* %label1
  store i32 (null), i32* %label1
  store i32 (null), i32* %label1
  ret void
}



