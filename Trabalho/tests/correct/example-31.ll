declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label1 = icmp ne i32 1, 0
  %label2 = xor i1 %label1, true
  %label3 = zext i1 %label2 to i32
  %label4 = icmp eq i32 %label3, 1
  br i1 %label4, label %label5, label %label6

  label5:
  br label %label6

  label6:
  %label7 = icmp ne i32 0, 0
  %label8 = xor i1 %label7, true
  %label9 = zext i1 %label8 to i32
  %label10 = icmp eq i32 %label9, 1
  br i1 %label10, label %label11, label %label12

  label11:
  br label %label12

  label12:
  %label13 = icmp ne i32 0, 0
  %label14 = xor i1 %label13, true
  %label15 = zext i1 %label14 to i32
  %label16 = icmp eq i32 %label15, 1
  %label17 = zext i1 %label16 to i32
  %label18 = icmp eq i32 %label17, 1
  br i1 %label18, label %label19, label %label20

  label19:
  br label %label20

  label20:
  %label21 = icmp ne i32 1, 0
  %label22 = xor i1 %label21, true
  %label23 = zext i1 %label22 to i32
  %label24 = icmp eq i32 %label23, 0
  %label25 = zext i1 %label24 to i32
  %label26 = icmp eq i32 %label25, 1
  br i1 %label26, label %label27, label %label28

  label27:
  br label %label28

  label28:
  %label29 = icmp ne i32 1, 0
  %label30 = xor i1 %label29, true
  %label31 = zext i1 %label30 to i32
  %label32 = icmp ne i32 0, 0
  %label33 = xor i1 %label32, true
  %label34 = zext i1 %label33 to i32
  %label35 = icmp eq i32 %label31, %label34
  %label36 = zext i1 %label35 to i32
  %label37 = icmp eq i32 %label36, 1
  br i1 %label37, label %label38, label %label39

  label38:
  br label %label39

  label39:
  ret void
}



