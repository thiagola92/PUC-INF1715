declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_0 = alloca i32
  %label_1 = alloca float
  %label_2 = alloca i32
  store i32 3, i32* %label_0
  %label_3 = fptrunc double 4.500000 to float
  store float %label_3, float* %label_1
  store i32 97, i32* %label_2
  %label_4 = sitofp i32 3 to float
  %label_5 = fptrunc double 4.500000 to float
  %label_6 = fadd float %label_4, %label_5
  %label_7 = fpext float %label_6 to double
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.float, i32 0, i32 0), double %label_7)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label_8 = load i32, i32* %label_0
  %label_9 = sitofp i32 %label_8 to float
  %label_10 = load float, float* %label_1
  %label_11 = fadd float %label_9, %label_10
  %label_12 = fpext float %label_11 to double
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.float, i32 0, i32 0), double %label_12)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label_13 = fptrunc double 4.500000 to float
  %label_14 = fptosi float %label_13 to i32
  %label_15 = add i32 3, %label_14
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label_15)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label_16 = load i32, i32* %label_0
  %label_17 = load float, float* %label_1
  %label_18 = fptosi float %label_17 to i32
  %label_19 = add i32 %label_16, %label_18
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label_19)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label_20 = sitofp i32 3 to float
  %label_21 = fptrunc double 4.500000 to float
  %label_22 = fptosi float %label_21 to i32
  %label_23 = sitofp i32 %label_22 to float
  %label_24 = fadd float %label_20, %label_23
  %label_25 = fpext float %label_24 to double
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.float, i32 0, i32 0), double %label_25)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label_26 = load i32, i32* %label_0
  %label_27 = sitofp i32 %label_26 to float
  %label_28 = load float, float* %label_1
  %label_29 = fptosi float %label_28 to i32
  %label_30 = sitofp i32 %label_29 to float
  %label_31 = fadd float %label_27, %label_30
  %label_32 = fpext float %label_31 to double
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.float, i32 0, i32 0), double %label_32)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label_33 = sitofp i32 3 to float
  %label_34 = fptrunc double 4.500000 to float
  %label_35 = fsub float 0.000000e+00, %label_34
  %label_36 = fptosi float %label_35 to i32
  %label_37 = sitofp i32 %label_36 to float
  %label_38 = fadd float %label_33, %label_37
  %label_39 = fpext float %label_38 to double
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.float, i32 0, i32 0), double %label_39)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label_40 = load i32, i32* %label_0
  %label_41 = sitofp i32 %label_40 to float
  %label_42 = load float, float* %label_1
  %label_43 = fsub float 0.000000e+00, %label_42
  %label_44 = fptosi float %label_43 to i32
  %label_45 = sitofp i32 %label_44 to float
  %label_46 = fadd float %label_41, %label_45
  %label_47 = fpext float %label_46 to double
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.float, i32 0, i32 0), double %label_47)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label_48 = load i32, i32* %label_0
  %label_49 = sitofp i32 %label_48 to float
  %label_50 = load float, float* %label_1
  %label_51 = fadd float %label_49, %label_50
  %label_52 = load i32, i32* %label_2
  %label_53 = sitofp i32 %label_52 to float
  %label_54 = fadd float %label_51, %label_53
  %label_55 = fpext float %label_54 to double
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.float, i32 0, i32 0), double %label_55)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label_56 = load i32, i32* %label_0
  %label_57 = sitofp i32 %label_56 to float
  %label_58 = load float, float* %label_1
  %label_59 = fadd float %label_57, %label_58
  %label_60 = load i32, i32* %label_2
  %label_61 = sitofp i32 %label_60 to float
  %label_62 = fadd float %label_59, %label_61
  %label_63 = fptosi float %label_62 to i32
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label_63)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  ret void
}



