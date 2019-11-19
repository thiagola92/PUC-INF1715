declare i32 @printf(i8*, ...)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label1 = alloca i32
  store i32 97, i32* %label1
  %label2 = load i32, i32* %label1
  %label3 = load i32, i32* %label1
  %label4 = icmp eq i32 %label2, %label3
  %label5 = zext i1 %label4 to i32
  %label6 = icmp eq i32 %label5, 1
  br i1 %label6, label %label7, label %label8

  label7:
  br label %label8

  label8:
  %label9 = icmp eq i32 97, 97
  %label10 = zext i1 %label9 to i32
  %label11 = icmp eq i32 %label10, 1
  br i1 %label11, label %label12, label %label13

  label12:
  br label %label13

  label13:
  %label14 = load i32, i32* %label1
  %label15 = icmp eq i32 97, %label14
  %label16 = zext i1 %label15 to i32
  %label17 = icmp eq i32 %label16, 1
  br i1 %label17, label %label18, label %label19

  label18:
  br label %label19

  label19:
  ret void
}



