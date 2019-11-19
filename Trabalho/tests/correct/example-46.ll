declare i32 @printf(i8*, ...)

@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label1 = alloca i32*
  store i32* (null), i32** %label1
  %label2 = icmp eq i32 (null), 97
  %label3 = zext i1 %label2 to i32
  %label4 = icmp eq i32 %label3, 1
  br i1 %label4, label %label5, label %label6

  label5:
  br label %label6

  label6:
  ret void
}



