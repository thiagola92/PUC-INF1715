declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_0 = alloca i32
  %label_1 = sitofp i32 97 to float
  %label_2 = fptrunc double 1.000000 to float
  %label_3 = fcmp olt float %label_1, %label_2
  %label_4 = zext i1 %label_3 to i32
  store i32 %label_4, i32* %label_0
  ret void
}



