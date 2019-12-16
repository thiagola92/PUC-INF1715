declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define i32 @foo(i32) {
  %label_1 = alloca i32
  store i32 %0, i32* %label_1

  ; if else
  %label_5 = load i32, i32* %label_1
  %label_6 = icmp eq i32 %label_5, 1
  %label_7 = zext i1 %label_6 to i32
  %label_8 = icmp eq i32 %label_7, 1
  br i1 %label_8, label %label_2, label %label_3

  label_2:
  ret i32 1
  br label %label_4

  label_3:
  ret i32 0
  br label %label_4

  label_4:
  ret i32 0
}

define void @main() {
  %label_0 = call i32 @foo(i32 1)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label_0)
  ret void
}



