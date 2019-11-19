declare i32 @printf(i8*, ...)

@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define i32 @nome(i32, i32) {
  %label3 = alloca i32
  store i32 %0, i32* %label3
  %label4 = alloca i32
  store i32 %1, i32* %label4
  %label5 = load i32, i32* %label3
  %label6 = load i32, i32* %label4
  br label %label7

  label7:
  %label10 = icmp ne i32 %label5, 0
  br i1 %label10, label %label9, label %label8

  label8:
  %label11 = icmp ne i32 %label6, 0
  br label %label9

  label9:
  %label12 = phi i1 [ true, %label7 ], [ %label11, %label8 ]
  %label13 = zext i1 %label12 to i32
  ret i32 %label13
}



