declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_0 = alloca float
  %label_1 = fptrunc double 1075903.000000 to float
  store float %label_1, float* %label_0
  %label_2 = fptrunc double 0.000000 to float
  store float %label_2, float* %label_0
  %label_3 = fptrunc double 16777215.000000 to float
  store float %label_3, float* %label_0
  ret void
}



