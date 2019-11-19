declare i32 @printf(i8*, ...)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label1 = alloca i32
  %label2 = alloca i32
  %label3 = alloca i32
  %label4 = icmp eq i32 1, 1
  %label5 = zext i1 %label4 to i32
  store i32 %label5, i32* %label1
  %label6 = icmp eq i32 1, 2
  %label7 = zext i1 %label6 to i32
  store i32 %label7, i32* %label2
  %label8 = icmp ne i32 1, 1
  %label9 = zext i1 %label8 to i32
  store i32 %label9, i32* %label3
  %label10 = icmp ne i32 1, 2
  %label11 = zext i1 %label10 to i32
  store i32 %label11, i32* %label1
  %label12 = icmp slt i32 1, 1
  %label13 = zext i1 %label12 to i32
  store i32 %label13, i32* %label1
  %label14 = icmp slt i32 1, 2
  %label15 = zext i1 %label14 to i32
  store i32 %label15, i32* %label2
  %label16 = icmp slt i32 1, 0
  %label17 = zext i1 %label16 to i32
  store i32 %label17, i32* %label3
  %label18 = icmp sgt i32 1, 1
  %label19 = zext i1 %label18 to i32
  store i32 %label19, i32* %label1
  %label20 = icmp sgt i32 1, 2
  %label21 = zext i1 %label20 to i32
  store i32 %label21, i32* %label2
  %label22 = icmp sgt i32 1, 0
  %label23 = zext i1 %label22 to i32
  store i32 %label23, i32* %label3
  %label24 = icmp sle i32 1, 1
  %label25 = zext i1 %label24 to i32
  store i32 %label25, i32* %label1
  %label26 = icmp sle i32 1, 2
  %label27 = zext i1 %label26 to i32
  store i32 %label27, i32* %label2
  %label28 = icmp sle i32 1, 0
  %label29 = zext i1 %label28 to i32
  store i32 %label29, i32* %label3
  %label30 = icmp sge i32 1, 1
  %label31 = zext i1 %label30 to i32
  store i32 %label31, i32* %label1
  %label32 = icmp sge i32 1, 2
  %label33 = zext i1 %label32 to i32
  store i32 %label33, i32* %label2
  %label34 = icmp sge i32 1, 0
  %label35 = zext i1 %label34 to i32
  store i32 %label35, i32* %label3
  ret void
}



