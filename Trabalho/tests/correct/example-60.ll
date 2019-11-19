declare i32 @printf(i8*, ...)

@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define i32 @nome() {
  %label1 = alloca i32
  %label2 = alloca i32
  %label3 = load i32, i32* %label1
  %label4 = load i32, i32* %label2
  br label %label5

  label5:
  %label8 = icmp ne i32 %label3, 0
  br i1 %label8, label %label7, label %label6

  label6:
  %label9 = icmp ne i32 %label4, 0
  br label %label7

  label7:
  %label10 = phi i1 [ true, %label5 ], [ %label9, %label6 ]
  %label11 = zext i1 %label10 to i32
  ret i32 %label11
}



