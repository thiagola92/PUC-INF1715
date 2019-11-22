declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

@.print.string = constant [3 x i8] c"%s\00"

define void @main() {
  %label1 = icmp eq i32 1, 1
  br i1 %label1, label %label2, label %label3

  label2:
  br label %label3

  label3:
  %label4 = icmp eq i32 0, 1
  br i1 %label4, label %label5, label %label7

  label5:
  br label %label7

  label6:
  br label %label7

  label7:
  %label8 = icmp eq i32 1, 1
  br i1 %label8, label %label9, label %label10

  label9:
  %label11 = icmp eq i32 1, 1
  br i1 %label11, label %label12, label %label13

  label12:
  br label %label13

  label13:
  br label %label10

  label10:
  %label14 = icmp eq i32 1, 1
  br i1 %label14, label %label15, label %label16

  label15:
  %label17 = icmp eq i32 0, 1
  br i1 %label17, label %label18, label %label20

  label18:
  br label %label20

  label19:
  br label %label20

  label20:
  br label %label16

  label16:
  %label21 = icmp eq i32 0, 1
  br i1 %label21, label %label22, label %label24

  label22:
  br label %label24

  label23:
  %label25 = icmp eq i32 1, 1
  br i1 %label25, label %label26, label %label27

  label26:
  br label %label27

  label27:
  br label %label24

  label24:
  %label28 = icmp eq i32 0, 1
  br i1 %label28, label %label29, label %label31

  label29:
  br label %label31

  label30:
  %label32 = icmp eq i32 0, 1
  br i1 %label32, label %label33, label %label35

  label33:
  br label %label35

  label34:
  br label %label35

  label35:
  br label %label31

  label31:
  ret void
}



