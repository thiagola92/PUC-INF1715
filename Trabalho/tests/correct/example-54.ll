declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define i32 @nome(i32) {
  %label_1 = alloca i32
  store i32 %0, i32* %label_1
  %label_2 = alloca i32
  %label_3 = load i32, i32* %label_1
  store i32 %label_3, i32* %label_2
  %label_4 = load i32, i32* %label_2
  ret i32 %label_4
}



