declare i32 @printf(i8*, ...)

@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 1)
  ret void
}



