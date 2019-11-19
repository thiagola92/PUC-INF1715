declare i32 @printf(i8*, ...)

@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @nome(i32, i32) {
  %label3 = alloca i32
  store i32 %0, i32* %label3
  %label4 = alloca i32
  store i32 %1, i32* %label4
  %label5 = alloca i32
  %label6 = load i32, i32* %label3
  %label7 = load i32, i32* %label4
  %label8 = load i32, i32* %label3
  br label %label9

  label9:
  %label12 = icmp ne i32 %label7, 0
  br i1 %label12, label %label10, label %label11

  label10:
  %label13 = icmp ne i32 %label8, 0
  br label %label11

  label11:
  %label14 = phi i1 [ false, %label9 ], [ %label13, %label10 ]
  %label15 = zext i1 %label14 to i32
  br label %label16

  label16:
  %label19 = icmp ne i32 %label6, 0
  br i1 %label19, label %label18, label %label17

  label17:
  %label20 = icmp ne i32 %label15, 0
  br label %label18

  label18:
  %label21 = phi i1 [ true, %label16 ], [ %label20, %label17 ]
  %label22 = zext i1 %label21 to i32
  store i32 %label22, i32* %label5
  ret void
}



