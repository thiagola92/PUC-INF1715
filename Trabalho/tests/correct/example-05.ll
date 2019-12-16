declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define i32 @first() {
  ret i32 1
  ret i32 0
}

define i32 @second(i32) {
  %label_1 = alloca i32
  store i32 %0, i32* %label_1
  %label_2 = load i32, i32* %label_1
  ret i32 %label_2
  ret i32 0
}



