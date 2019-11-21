declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label1 = alloca i32
  %label2 = alloca float

  ; assignment
  %label3 = fptrunc double 3.000000 to float
  %label4 = fptosi float %label3 to i32
  %label5 = add i32 1, %label4
  store i32 %label5, i32* %label1

  ; assignment
  %label6 = sitofp i32 1 to float
  %label7 = fptrunc double 3.000000 to float
  %label8 = fadd float %label6, %label7
  store float %label8, float* %label2
  ret void
}



