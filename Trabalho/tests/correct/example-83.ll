declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label1 = alloca i32
  br label %label2

  label2:
  %label5 = icmp ne i32 0, 0
  br i1 %label5, label %label3, label %label4

  label3:
  %label6 = icmp ne i32 1, 0
  br label %label4

  label4:
  %label7 = phi i1 [ false, %label2 ], [ %label6, %label3 ]
  %label8 = zext i1 %label7 to i32
  br label %label9

  label9:
  %label12 = icmp ne i32 0, 0
  br i1 %label12, label %label11, label %label10

  label10:
  %label13 = icmp ne i32 %label8, 0
  br label %label11

  label11:
  %label14 = phi i1 [ true, %label9 ], [ %label13, %label10 ]
  %label15 = zext i1 %label14 to i32
  store i32 %label15, i32* %label1
  ret void
}



