declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

@.print.string = constant [3 x i8] c"%s\00"

define void @main() {
  %label1 = alloca float
  %label2 = fptrunc double 1075903.000000 to float

  ; assignment
  store float %label2, float* %label1
  %label3 = fptrunc double 0.000000 to float

  ; assignment
  store float %label3, float* %label1
  %label4 = fptrunc double 16777215.000000 to float

  ; assignment
  store float %label4, float* %label1
  ret void
}



