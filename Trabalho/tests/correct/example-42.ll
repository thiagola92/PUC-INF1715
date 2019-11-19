declare i32 @printf(i8*, ...)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define i32 @fn() {
  ret i32 99
}

define void @main() {
  %label1 = alloca i32
  %label2 = alloca i32
  store i32 98, i32* %label1
  %label3 = load i32, i32* %label1
  %label4 = add i32 97, %label3
  %label5 = call i32 @fn()
  %label6 = add i32 %label4, %label5
  store i32 %label6, i32* %label2
  ret void
}



