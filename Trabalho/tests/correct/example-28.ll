declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label1 = alloca i32
  %label2 = alloca float
  %label3 = fptrunc double 1.000000 to float
  %label4 = fptrunc double 1.000000 to float
  %label5 = fadd float %label3, %label4
  %label6 = fptosi float %label5 to i32
  store i32 %label6, i32* %label1
  %label7 = add i32 1, 1
  %label8 = sitofp i32 %label7 to float
  store float %label8, float* %label2
  %label9 = fptrunc double 1.000000 to float
  %label10 = fptrunc double 1.000000 to float
  %label11 = fptrunc double 1.000000 to float
  %label12 = fadd float %label10, %label11
  %label13 = fadd float %label9, %label12
  %label14 = fptrunc double 1.000000 to float
  %label15 = fadd float %label13, %label14
  %label16 = fptosi float %label15 to i32
  store i32 %label16, i32* %label1
  ret void
}



