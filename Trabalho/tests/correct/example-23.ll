declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

@a = global i32 0
define void @main() {
  %label_0 = alloca i32
  ret void
}

define void @fn() {
  %label_0 = alloca i32
  ret void
}



