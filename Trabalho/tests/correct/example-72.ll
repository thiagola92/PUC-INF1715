declare i32 @printf(i8*, ...)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define i32 @nome() {
  ret i32 97
}

define void @main() {
  %label1 = call i32 @nome()
  ret void
}



