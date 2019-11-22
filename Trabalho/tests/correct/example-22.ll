declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

@.print.string = constant [3 x i8] c"%s\00"

define void @first(i32) {
  %label2 = alloca i32
  store i32 %0, i32* %label2
  ret void
}

define void @main() {
  %label1 = alloca i32
  %label2 = add i32 1, 1

  ; assignment
  store i32 %label2, i32* %label1
  %label3 = load i32, i32* %label1
  call void @first(i32 %label3)
  ret void
}



