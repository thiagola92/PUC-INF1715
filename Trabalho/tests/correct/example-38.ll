declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

@.print.string = constant [3 x i8] c"%s\00"

define void @main() {
  %label1 = icmp eq i32 1, 1
  %label2 = zext i1 %label1 to i32
  %label3 = icmp eq i32 %label2, 1
  br i1 %label3, label %label4, label %label5

  label4:
  br label %label5

  label5:
  %label6 = icmp ne i32 2, 2
  %label7 = zext i1 %label6 to i32
  %label8 = icmp eq i32 %label7, 1
  br i1 %label8, label %label9, label %label10

  label9:
  br label %label10

  label10:
  %label11 = add i32 1, 1
  %label12 = icmp eq i32 %label11, 1
  %label13 = zext i1 %label12 to i32
  %label14 = icmp eq i32 %label13, 1
  br i1 %label14, label %label15, label %label16

  label15:
  br label %label16

  label16:
  %label17 = icmp eq i32 1, 1
  br i1 %label17, label %label18, label %label19

  label18:
  br label %label19

  label19:
  %label20 = icmp slt i32 1, 1
  %label21 = zext i1 %label20 to i32
  %label22 = icmp eq i32 %label21, 1
  br i1 %label22, label %label23, label %label24

  label23:
  br label %label24

  label24:
  %label25 = add i32 1, 1
  %label26 = icmp slt i32 1, %label25
  %label27 = zext i1 %label26 to i32
  %label28 = icmp eq i32 %label27, 1
  br i1 %label28, label %label29, label %label30

  label29:
  br label %label30

  label30:
  ret void
}



