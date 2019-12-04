declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define i32 @fn() {
  ret i32 99
}

define void @main() {
  %label_0 = alloca i32
  %label_1 = alloca i32
  store i32 98, i32* %label_0
  %label_2 = load i32, i32* %label_0
  %label_3 = add i32 97, %label_2
  %label_4 = call i32 @fn()
  %label_5 = add i32 %label_3, %label_4
  store i32 %label_5, i32* %label_1
  ret void
}



