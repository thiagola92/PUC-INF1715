declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define i32* @nome() {
  %label_0 = alloca i32*
  %label_1 = load i32*, i32** %label_0
  ret i32* %label_1
}



