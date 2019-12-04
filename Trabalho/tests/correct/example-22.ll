declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @first(i32) {
  %label_1 = alloca i32
  store i32 %0, i32* %label_1
  ret void
}

define void @main() {
  %label_0 = alloca i32
  %label_1 = add i32 1, 1
  store i32 %label_1, i32* %label_0
  %label_2 = load i32, i32* %label_0
  call void @first(i32 %label_2)
  ret void
}



