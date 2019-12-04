declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define i32 @func() {
  %label_3 = icmp eq i32 1, 2
  %label_4 = zext i1 %label_3 to i32
  %label_5 = icmp eq i32 %label_4, 1
  br i1 %label_5, label %label_0, label %label_1

  label_0:
  ret i32 1
  br label %label_2

  label_1:
  ret i32 3
  br label %label_2

  label_2:
  ret i32 2
}

define void @main() {
  %label_0 = call i32 @func()
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label_0)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  ret void
}



