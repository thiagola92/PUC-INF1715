declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @nome(i32, i32) {
  %label3 = alloca i32
  store i32 %0, i32* %label3
  %label4 = alloca i32
  store i32 %1, i32* %label4
  %label5 = alloca i32
  %label12 = load i32, i32* %label3
  %label6 = icmp ne i32 %label12, 0
  br i1 %label6, label %label8, label %label10

  label10:
  %label19 = load i32, i32* %label4
  %label13 = icmp ne i32 %label19, 0
  br i1 %label13, label %label17, label %label16

  label17:
  %label20 = load i32, i32* %label3
  %label14 = icmp ne i32 %label20, 0
  br i1 %label14, label %label15, label %label16

  label15:
  br label %label21

  label16:
  br label %label21

  label21:
  %label22 = phi i1 [ true, %label15 ], [ false, %label16 ]
  %label18 = zext i1 %label22 to i32
  %label7 = icmp ne i32 %label18, 0
  br i1 %label7, label %label8, label %label9

  label8:
  br label %label23

  label9:
  br label %label23

  label23:
  %label24 = phi i1 [ true, %label8 ], [ false, %label9 ]
  %label11 = zext i1 %label24 to i32
  store i32 %label11, i32* %label5
  ret void
}



