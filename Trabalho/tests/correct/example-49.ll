declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_0 = alloca i32
  %label_1 = fptrunc double 1.000000 to float
  %label_2 = fsub float 0.000000e+00, %label_1
  %label_3 = fptosi float %label_2 to i32
  store i32 %label_3, i32* %label_0
  ret void
}



