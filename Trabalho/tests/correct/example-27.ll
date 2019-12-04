declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_0 = alloca i32
  %label_1 = alloca float
  %label_2 = fptrunc double 3.000000 to float
  %label_3 = fptosi float %label_2 to i32
  %label_4 = add i32 1, %label_3
  store i32 %label_4, i32* %label_0
  %label_5 = sitofp i32 1 to float
  %label_6 = fptrunc double 3.000000 to float
  %label_7 = fadd float %label_5, %label_6
  store float %label_7, float* %label_1
  ret void
}



