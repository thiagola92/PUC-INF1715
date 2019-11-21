declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label1 = alloca float
  %label2 = alloca float
  %label3 = alloca float
  %label4 = fptrunc double 10.500000 to float
  store float %label4, float* %label1
  %label5 = fptrunc double 20.500000 to float
  store float %label5, float* %label2
  %label6 = load float, float* %label2
  %label7 = load float, float* %label1
  %label8 = fadd float %label6, %label7
  store float %label8, float* %label3
  %label9 = fptrunc double 10.500000 to float
  %label10 = fptrunc double 10.500000 to float
  %label11 = fadd float %label9, %label10
  store float %label11, float* %label3
  %label12 = fptrunc double 10.500000 to float
  %label13 = load float, float* %label1
  %label14 = fadd float %label12, %label13
  store float %label14, float* %label3
  %label15 = load float, float* %label1
  %label16 = fptrunc double 10.500000 to float
  %label17 = fadd float %label15, %label16
  store float %label17, float* %label3
  %label18 = load float, float* %label2
  %label19 = load float, float* %label1
  %label20 = fsub float %label18, %label19
  store float %label20, float* %label3
  %label21 = fptrunc double 10.500000 to float
  %label22 = fptrunc double 10.500000 to float
  %label23 = fsub float %label21, %label22
  store float %label23, float* %label3
  %label24 = fptrunc double 10.500000 to float
  %label25 = load float, float* %label1
  %label26 = fsub float %label24, %label25
  store float %label26, float* %label3
  %label27 = load float, float* %label1
  %label28 = fptrunc double 10.500000 to float
  %label29 = fsub float %label27, %label28
  store float %label29, float* %label3
  %label30 = load float, float* %label2
  %label31 = load float, float* %label1
  %label32 = fmul float %label30, %label31
  store float %label32, float* %label3
  %label33 = fptrunc double 10.500000 to float
  %label34 = fptrunc double 10.500000 to float
  %label35 = fmul float %label33, %label34
  store float %label35, float* %label3
  %label36 = fptrunc double 10.500000 to float
  %label37 = load float, float* %label1
  %label38 = fmul float %label36, %label37
  store float %label38, float* %label3
  %label39 = load float, float* %label1
  %label40 = fptrunc double 10.500000 to float
  %label41 = fmul float %label39, %label40
  store float %label41, float* %label3
  %label42 = load float, float* %label2
  %label43 = load float, float* %label2
  %label44 = fdiv float %label42, %label43
  store float %label44, float* %label3
  %label45 = fptrunc double 10.500000 to float
  %label46 = fptrunc double 10.500000 to float
  %label47 = fdiv float %label45, %label46
  store float %label47, float* %label3
  %label48 = fptrunc double 10.500000 to float
  %label49 = load float, float* %label1
  %label50 = fdiv float %label48, %label49
  store float %label50, float* %label3
  %label51 = load float, float* %label1
  %label52 = fptrunc double 10.500000 to float
  %label53 = fdiv float %label51, %label52
  store float %label53, float* %label3
  ret void
}



