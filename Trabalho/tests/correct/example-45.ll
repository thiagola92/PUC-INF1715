declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_3 = icmp eq i32 97, 97
  %label_4 = zext i1 %label_3 to i32
  %label_5 = icmp eq i32 %label_4, 1
  br i1 %label_5, label %label_0, label %label_1

  label_0:
  br label %label_1

  label_1:
  ret void
}



