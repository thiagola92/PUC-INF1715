declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label1 = alloca i32

  ; assignment
  %label2 = fptrunc double 1.000000 to float
  %label3 = fsub float 0.000000e+00, %label2
  %label4 = fptosi float %label3 to i32
  store i32 %label4, i32* %label1
  ret void
}



