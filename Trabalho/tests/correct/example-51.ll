declare i32 @printf(i8*, ...)

@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label1 = alloca i32
  %label2 = icmp slt i32 97, 98
  %label3 = zext i1 %label2 to i32
  store i32 %label3, i32* %label1
  ret void
}



