declare i32 @printf(i8*, ...)

@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

@a = global i32 0
define void @main() {
  %label1 = alloca i32
  ret void
}

define void @fn() {
  %label1 = alloca i32
  ret void
}



