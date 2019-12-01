declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define i32 @nome() {
  %label1 = alloca i32
  %label2 = alloca i32
  %label9 = load i32, i32* %label1
  %label3 = icmp ne i32 %label9, 0
  br i1 %label3, label %label5, label %label7

  label7:
  %label10 = load i32, i32* %label2
  %label4 = icmp ne i32 %label10, 0
  br i1 %label4, label %label5, label %label6

  label5:
  br label %label11

  label6:
  br label %label11

  label11:
  %label12 = phi i1 [ true, %label5 ], [ false, %label6 ]
  %label8 = zext i1 %label12 to i32
  ret i32 %label8
}



