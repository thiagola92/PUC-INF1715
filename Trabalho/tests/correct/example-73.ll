declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

@.print.string = constant [3 x i8] c"%s\00"

define void @main() {
  %label1 = alloca i32
  %label2 = alloca float
  %label3 = alloca i32

  ; assignment
  store i32 3, i32* %label1
  %label4 = fptrunc double 4.500000 to float

  ; assignment
  store float %label4, float* %label2

  ; assignment
  store i32 97, i32* %label3

  ; print
  %label5 = sitofp i32 3 to float
  %label6 = fptrunc double 4.500000 to float
  %label7 = fadd float %label5, %label6
  %label8 = fpext float %label7 to double
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.float, i32 0, i32 0), double %label8)

  ; print
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 10)

  ; print
  %label9 = load i32, i32* %label1
  %label10 = sitofp i32 %label9 to float
  %label11 = load float, float* %label2
  %label12 = fadd float %label10, %label11
  %label13 = fpext float %label12 to double
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.float, i32 0, i32 0), double %label13)

  ; print
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 10)

  ; print
  %label14 = fptrunc double 4.500000 to float
  %label15 = fptosi float %label14 to i32
  %label16 = add i32 3, %label15
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label16)

  ; print
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 10)

  ; print
  %label17 = load i32, i32* %label1
  %label18 = load float, float* %label2
  %label19 = fptosi float %label18 to i32
  %label20 = add i32 %label17, %label19
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label20)

  ; print
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 10)

  ; print
  %label21 = sitofp i32 3 to float
  %label22 = fptrunc double 4.500000 to float
  %label23 = fptosi float %label22 to i32
  %label24 = sitofp i32 %label23 to float
  %label25 = fadd float %label21, %label24
  %label26 = fpext float %label25 to double
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.float, i32 0, i32 0), double %label26)

  ; print
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 10)

  ; print
  %label27 = load i32, i32* %label1
  %label28 = sitofp i32 %label27 to float
  %label29 = load float, float* %label2
  %label30 = fptosi float %label29 to i32
  %label31 = sitofp i32 %label30 to float
  %label32 = fadd float %label28, %label31
  %label33 = fpext float %label32 to double
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.float, i32 0, i32 0), double %label33)

  ; print
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 10)

  ; print
  %label34 = sitofp i32 3 to float
  %label35 = fptrunc double 4.500000 to float
  %label36 = fsub float 0.000000e+00, %label35
  %label37 = fptosi float %label36 to i32
  %label38 = sitofp i32 %label37 to float
  %label39 = fadd float %label34, %label38
  %label40 = fpext float %label39 to double
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.float, i32 0, i32 0), double %label40)

  ; print
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 10)

  ; print
  %label41 = load i32, i32* %label1
  %label42 = sitofp i32 %label41 to float
  %label43 = load float, float* %label2
  %label44 = fsub float 0.000000e+00, %label43
  %label45 = fptosi float %label44 to i32
  %label46 = sitofp i32 %label45 to float
  %label47 = fadd float %label42, %label46
  %label48 = fpext float %label47 to double
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.float, i32 0, i32 0), double %label48)

  ; print
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 10)

  ; print
  %label49 = load i32, i32* %label1
  %label50 = sitofp i32 %label49 to float
  %label51 = load float, float* %label2
  %label52 = fadd float %label50, %label51
  %label53 = load i32, i32* %label3
  %label54 = sitofp i32 %label53 to float
  %label55 = fadd float %label52, %label54
  %label56 = fpext float %label55 to double
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.float, i32 0, i32 0), double %label56)

  ; print
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 10)

  ; print
  %label57 = load i32, i32* %label1
  %label58 = sitofp i32 %label57 to float
  %label59 = load float, float* %label2
  %label60 = fadd float %label58, %label59
  %label61 = load i32, i32* %label3
  %label62 = sitofp i32 %label61 to float
  %label63 = fadd float %label60, %label62
  %label64 = fptosi float %label63 to i32
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label64)

  ; print
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 10)
  ret void
}



