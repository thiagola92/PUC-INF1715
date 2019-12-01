declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define i32 @nome(i32, i32) {
  %label3 = alloca i32
  store i32 %0, i32* %label3
  %label4 = alloca i32
  store i32 %1, i32* %label4
  %label11 = load i32, i32* %label3
  %label5 = icmp ne i32 %label11, 0
  br i1 %label5, label %label7, label %label9

  label9:
  %label12 = load i32, i32* %label4
  %label6 = icmp ne i32 %label12, 0
  br i1 %label6, label %label7, label %label8

  label7:
  br label %label13

  label8:
  br label %label13

  label13:
  %label14 = phi i1 [ true, %label7 ], [ false, %label8 ]
  %label10 = zext i1 %label14 to i32
  ret i32 %label10
}



