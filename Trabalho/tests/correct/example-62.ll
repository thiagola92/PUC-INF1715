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

  ; assignment
  %label6 = load i32, i32* %label3
  %label7 = load i32, i32* %label4
  br label %label8

  label8:
  %label11 = icmp ne i32 %label6, 0
  br i1 %label11, label %label10, label %label9

  label9:
  %label12 = icmp ne i32 %label7, 0
  br label %label10

  label10:
  %label13 = phi i1 [ true, %label8 ], [ %label12, %label9 ]
  %label14 = zext i1 %label13 to i32
  store i32 %label14, i32* %label5

  ; assignment
  %label15 = load i32, i32* %label3
  %label16 = load i32, i32* %label4
  br label %label17

  label17:
  %label20 = icmp ne i32 %label15, 0
  br i1 %label20, label %label18, label %label19

  label18:
  %label21 = icmp ne i32 %label16, 0
  br label %label19

  label19:
  %label22 = phi i1 [ false, %label17 ], [ %label21, %label18 ]
  %label23 = zext i1 %label22 to i32
  store i32 %label23, i32* %label5
  ret void
}



