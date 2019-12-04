declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_0 = alloca i32
  %label_1 = alloca i32
  %label_2 = alloca float
  %label_3 = add i32 1, 3
  store i32 %label_3, i32* %label_0
  %label_4 = sitofp i32 1 to float
  %label_5 = fptrunc double 3.000000 to float
  %label_6 = fadd float %label_4, %label_5
  %label_7 = fptosi float %label_6 to i32
  store i32 %label_7, i32* %label_0
  %label_8 = fptrunc double 1.000000 to float
  %label_9 = fptrunc double 3.000000 to float
  %label_10 = fadd float %label_8, %label_9
  %label_11 = fptosi float %label_10 to i32
  store i32 %label_11, i32* %label_0
  %label_12 = fptrunc double 1.000000 to float
  %label_13 = sitofp i32 3 to float
  %label_14 = fadd float %label_12, %label_13
  %label_15 = fptosi float %label_14 to i32
  store i32 %label_15, i32* %label_0
  store i32 2, i32* %label_1
  %label_16 = fptrunc double 2.000000 to float
  store float %label_16, float* %label_2
  %label_17 = load i32, i32* %label_1
  %label_18 = load i32, i32* %label_1
  %label_19 = add i32 %label_17, %label_18
  store i32 %label_19, i32* %label_0
  %label_20 = load i32, i32* %label_1
  %label_21 = sitofp i32 %label_20 to float
  %label_22 = load float, float* %label_2
  %label_23 = fadd float %label_21, %label_22
  %label_24 = fptosi float %label_23 to i32
  store i32 %label_24, i32* %label_0
  %label_25 = load float, float* %label_2
  %label_26 = load float, float* %label_2
  %label_27 = fadd float %label_25, %label_26
  %label_28 = fptosi float %label_27 to i32
  store i32 %label_28, i32* %label_0
  %label_29 = load float, float* %label_2
  %label_30 = load i32, i32* %label_1
  %label_31 = sitofp i32 %label_30 to float
  %label_32 = fadd float %label_29, %label_31
  %label_33 = fptosi float %label_32 to i32
  store i32 %label_33, i32* %label_0
  ret void
}



