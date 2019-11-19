declare i32 @printf(i8*, ...)

@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label1 = alloca i32
  %label2 = fptrunc double 1.000000 to float
  %label3 = icmp slt float (null), %label2
  %label4 = zext i1 %label3 to i32
  store i32 %label4, i32* %label1
  ret void
}



