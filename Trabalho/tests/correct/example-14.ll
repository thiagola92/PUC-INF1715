declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_0 = alloca float
  %label_1 = alloca float
  %label_2 = alloca float
  %label_3 = fptrunc double 10.500000 to float
  store float %label_3, float* %label_0
  %label_4 = fptrunc double 20.500000 to float
  store float %label_4, float* %label_1
  %label_5 = load float, float* %label_1
  %label_6 = load float, float* %label_0
  %label_7 = fadd float %label_5, %label_6
  store float %label_7, float* %label_2
  %label_8 = fptrunc double 10.500000 to float
  %label_9 = fptrunc double 10.500000 to float
  %label_10 = fadd float %label_8, %label_9
  store float %label_10, float* %label_2
  %label_11 = fptrunc double 10.500000 to float
  %label_12 = load float, float* %label_0
  %label_13 = fadd float %label_11, %label_12
  store float %label_13, float* %label_2
  %label_14 = load float, float* %label_0
  %label_15 = fptrunc double 10.500000 to float
  %label_16 = fadd float %label_14, %label_15
  store float %label_16, float* %label_2
  %label_17 = load float, float* %label_1
  %label_18 = load float, float* %label_0
  %label_19 = fsub float %label_17, %label_18
  store float %label_19, float* %label_2
  %label_20 = fptrunc double 10.500000 to float
  %label_21 = fptrunc double 10.500000 to float
  %label_22 = fsub float %label_20, %label_21
  store float %label_22, float* %label_2
  %label_23 = fptrunc double 10.500000 to float
  %label_24 = load float, float* %label_0
  %label_25 = fsub float %label_23, %label_24
  store float %label_25, float* %label_2
  %label_26 = load float, float* %label_0
  %label_27 = fptrunc double 10.500000 to float
  %label_28 = fsub float %label_26, %label_27
  store float %label_28, float* %label_2
  %label_29 = load float, float* %label_1
  %label_30 = load float, float* %label_0
  %label_31 = fmul float %label_29, %label_30
  store float %label_31, float* %label_2
  %label_32 = fptrunc double 10.500000 to float
  %label_33 = fptrunc double 10.500000 to float
  %label_34 = fmul float %label_32, %label_33
  store float %label_34, float* %label_2
  %label_35 = fptrunc double 10.500000 to float
  %label_36 = load float, float* %label_0
  %label_37 = fmul float %label_35, %label_36
  store float %label_37, float* %label_2
  %label_38 = load float, float* %label_0
  %label_39 = fptrunc double 10.500000 to float
  %label_40 = fmul float %label_38, %label_39
  store float %label_40, float* %label_2
  %label_41 = load float, float* %label_1
  %label_42 = load float, float* %label_1
  %label_43 = fdiv float %label_41, %label_42
  store float %label_43, float* %label_2
  %label_44 = fptrunc double 10.500000 to float
  %label_45 = fptrunc double 10.500000 to float
  %label_46 = fdiv float %label_44, %label_45
  store float %label_46, float* %label_2
  %label_47 = fptrunc double 10.500000 to float
  %label_48 = load float, float* %label_0
  %label_49 = fdiv float %label_47, %label_48
  store float %label_49, float* %label_2
  %label_50 = load float, float* %label_0
  %label_51 = fptrunc double 10.500000 to float
  %label_52 = fdiv float %label_50, %label_51
  store float %label_52, float* %label_2
  ret void
}



