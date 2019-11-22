declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

@.print.string = constant [3 x i8] c"%s\00"

define i32 @func() {
  %label1 = icmp eq i32 1, 1
  %label2 = zext i1 %label1 to i32
  %label3 = icmp eq i32 %label2, 1
  br i1 %label3, label %label4, label %label5

  label4:
  ret i32 1
  br label %label5

  label5:
  ret i32 2
}

define void @main() {

  ; print
  %label1 = call i32 @func()
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label1)

  ; print
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 10)
  ret void
}



