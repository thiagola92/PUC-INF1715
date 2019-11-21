declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

@c = global i32 0
define i32 @fn() {
  ret i32 97
}

define void @main() {

  ; assignment
  %label1 = call i32 @fn()
  %label2 = add i32 98, %label1
  store i32 %label2, i32* @c
  ret void
}



