declare i32 @printf(i8*, ...)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label1 = icmp eq i32 (null), 1
  br i1 %label1, label %label2, label %label3

  label2:
  br label %label3

  label3:
  %label4 = icmp eq i32 (null), 1
  br i1 %label4, label %label5, label %label6

  label5:
  br label %label6

  label6:
  %label7 = icmp eq i32 (null), 1
  %label8 = zext i1 %label7 to i32
  %label9 = icmp eq i32 %label8, 1
  br i1 %label9, label %label10, label %label11

  label10:
  br label %label11

  label11:
  %label12 = icmp eq i32 (null), 0
  %label13 = zext i1 %label12 to i32
  %label14 = icmp eq i32 %label13, 1
  br i1 %label14, label %label15, label %label16

  label15:
  br label %label16

  label16:
  %label17 = icmp eq i32 (null), (null)
  %label18 = zext i1 %label17 to i32
  %label19 = icmp eq i32 %label18, 1
  br i1 %label19, label %label20, label %label21

  label20:
  br label %label21

  label21:
  ret void
}



