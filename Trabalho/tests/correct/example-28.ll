declare i32 @printf(i8*, ...)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label1 = alloca i32
  %label2 = alloca float
  store i32 (null), i32* %label1
  store float (null), float* %label2
  store i32 (null), i32* %label1
  ret void
}



