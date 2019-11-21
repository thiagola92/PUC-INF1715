declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label1 = alloca i32
  %label2 = alloca i32
  %label3 = alloca float

  ; assignment
  %label4 = add i32 1, 3
  store i32 %label4, i32* %label1

  ; assignment
  %label5 = sitofp i32 1 to float
  %label6 = fptrunc double 3.000000 to float
  %label7 = fadd float %label5, %label6
  %label8 = fptosi float %label7 to i32
  store i32 %label8, i32* %label1

  ; assignment
  %label9 = fptrunc double 1.000000 to float
  %label10 = fptrunc double 3.000000 to float
  %label11 = fadd float %label9, %label10
  %label12 = fptosi float %label11 to i32
  store i32 %label12, i32* %label1

  ; assignment
  %label13 = fptrunc double 1.000000 to float
  %label14 = sitofp i32 3 to float
  %label15 = fadd float %label13, %label14
  %label16 = fptosi float %label15 to i32
  store i32 %label16, i32* %label1

  ; assignment
  store i32 2, i32* %label2

  ; assignment
  %label17 = fptrunc double 2.000000 to float
  store float %label17, float* %label3

  ; assignment
  %label18 = load i32, i32* %label2
  %label19 = load i32, i32* %label2
  %label20 = add i32 %label18, %label19
  store i32 %label20, i32* %label1

  ; assignment
  %label21 = load i32, i32* %label2
  %label22 = sitofp i32 %label21 to float
  %label23 = load float, float* %label3
  %label24 = fadd float %label22, %label23
  %label25 = fptosi float %label24 to i32
  store i32 %label25, i32* %label1

  ; assignment
  %label26 = load float, float* %label3
  %label27 = load float, float* %label3
  %label28 = fadd float %label26, %label27
  %label29 = fptosi float %label28 to i32
  store i32 %label29, i32* %label1

  ; assignment
  %label30 = load float, float* %label3
  %label31 = load i32, i32* %label2
  %label32 = sitofp i32 %label31 to float
  %label33 = fadd float %label30, %label32
  %label34 = fptosi float %label33 to i32
  store i32 %label34, i32* %label1
  ret void
}



