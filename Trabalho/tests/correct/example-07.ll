declare i32 @printf(i8*, ...)

@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @first() {
  %label1 = alloca i32
  %label2 = alloca i32
  call void @first()
  call void @first()
  ret void
}



