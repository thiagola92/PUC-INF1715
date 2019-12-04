declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_0 = alloca i32
  %label_1 = alloca float
  %label_2 = fptrunc double 1.000000 to float
  %label_3 = fptrunc double 1.000000 to float
  %label_4 = fadd float %label_2, %label_3
  %label_5 = fptosi float %label_4 to i32
  store i32 %label_5, i32* %label_0
  %label_6 = add i32 1, 1
  %label_7 = sitofp i32 %label_6 to float
  store float %label_7, float* %label_1
  %label_8 = fptrunc double 1.000000 to float
  %label_9 = fptrunc double 1.000000 to float
  %label_10 = fptrunc double 1.000000 to float
  %label_11 = fadd float %label_9, %label_10
  %label_12 = fadd float %label_8, %label_11
  %label_13 = fptrunc double 1.000000 to float
  %label_14 = fadd float %label_12, %label_13
  %label_15 = fptosi float %label_14 to i32
  store i32 %label_15, i32* %label_0
  ret void
}



