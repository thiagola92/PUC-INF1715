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
  %label13 = load i32, i32* %label4
  %label7 = icmp ne i32 %label13, 0
  br i1 %label7, label %label8, label %label9

  label8:
  br label %label14

  label9:
  br label %label14

  label14:
  %label15 = phi i1 [ true, %label8 ], [ false, %label9 ]
  %label11 = zext i1 %label15 to i32
  store i32 %label11, i32* %label5
  %label22 = load i32, i32* %label3
  %label16 = icmp ne i32 %label22, 0
  br i1 %label16, label %label20, label %label19

  label20:
  %label23 = load i32, i32* %label4
  %label17 = icmp ne i32 %label23, 0
  br i1 %label17, label %label18, label %label19

  label18:
  br label %label24

  label19:
  br label %label24

  label24:
  %label25 = phi i1 [ true, %label18 ], [ false, %label19 ]
  %label21 = zext i1 %label25 to i32
  store i32 %label21, i32* %label5
  ret void
}



