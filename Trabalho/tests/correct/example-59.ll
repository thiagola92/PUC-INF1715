declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @nome() {
  %label1 = alloca float

  ; assignment
  %label2 = fptrunc double 0.100000 to float
  store float %label2, float* %label1

  ; assignment
  %label3 = fptrunc double 0.200000 to float
  store float %label3, float* %label1

  ; assignment
  %label4 = fptrunc double 0.300000 to float
  store float %label4, float* %label1

  ; assignment
  %label5 = fptrunc double 0.010000 to float
  store float %label5, float* %label1

  ; assignment
  %label6 = fptrunc double 0.005000 to float
  store float %label6, float* %label1
  ret void
}



