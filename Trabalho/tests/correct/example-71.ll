declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {

  ; if
  %label_2 = icmp ne i32 1, 0
  %label_3 = zext i1 %label_2 to i32
  %label_4 = icmp eq i32 %label_3, 1
  br i1 %label_4, label %label_0, label %label_1

  label_0:
  br label %label_1

  label_1:
  ret void
}



