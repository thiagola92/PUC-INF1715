declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label1 = icmp ne i32 1, 0
  %label2 = zext i1 %label1 to i32
  %label3 = icmp eq i32 %label2, 1
  br i1 %label3, label %label4, label %label5

  label4:
  br label %label5

  label5:
  ret void
}



