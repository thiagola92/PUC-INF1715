declare i32 @printf(i8*, ...)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label1 = alloca i32
  %label2 = alloca i32
  %label3 = alloca i32
  %label4 = add i32 1, 1
  %label5 = icmp eq i32 1, %label4
  %label6 = zext i1 %label5 to i32
  store i32 %label6, i32* %label1
  %label7 = add i32 1, 0
  %label8 = icmp eq i32 1, %label7
  %label9 = zext i1 %label8 to i32
  store i32 %label9, i32* %label2
  %label10 = sub i32 2, 1
  %label11 = icmp eq i32 1, %label10
  %label12 = zext i1 %label11 to i32
  store i32 %label12, i32* %label3
  %label13 = add i32 1, 1
  %label14 = icmp ne i32 1, %label13
  %label15 = zext i1 %label14 to i32
  store i32 %label15, i32* %label1
  %label16 = add i32 1, 0
  %label17 = icmp ne i32 1, %label16
  %label18 = zext i1 %label17 to i32
  store i32 %label18, i32* %label2
  %label19 = sub i32 2, 1
  %label20 = icmp ne i32 1, %label19
  %label21 = zext i1 %label20 to i32
  store i32 %label21, i32* %label3
  %label22 = add i32 1, 1
  %label23 = icmp slt i32 1, %label22
  %label24 = zext i1 %label23 to i32
  store i32 %label24, i32* %label1
  %label25 = add i32 1, 0
  %label26 = icmp slt i32 1, %label25
  %label27 = zext i1 %label26 to i32
  store i32 %label27, i32* %label2
  %label28 = sub i32 2, 1
  %label29 = icmp slt i32 1, %label28
  %label30 = zext i1 %label29 to i32
  store i32 %label30, i32* %label3
  %label31 = add i32 1, 1
  %label32 = icmp sgt i32 1, %label31
  %label33 = zext i1 %label32 to i32
  store i32 %label33, i32* %label1
  %label34 = add i32 1, 0
  %label35 = icmp sgt i32 1, %label34
  %label36 = zext i1 %label35 to i32
  store i32 %label36, i32* %label2
  %label37 = sub i32 2, 1
  %label38 = icmp sgt i32 1, %label37
  %label39 = zext i1 %label38 to i32
  store i32 %label39, i32* %label3
  %label40 = add i32 1, 1
  %label41 = icmp sle i32 1, %label40
  %label42 = zext i1 %label41 to i32
  store i32 %label42, i32* %label1
  %label43 = add i32 1, 0
  %label44 = icmp sle i32 1, %label43
  %label45 = zext i1 %label44 to i32
  store i32 %label45, i32* %label2
  %label46 = sub i32 2, 1
  %label47 = icmp sle i32 1, %label46
  %label48 = zext i1 %label47 to i32
  store i32 %label48, i32* %label3
  %label49 = add i32 1, 1
  %label50 = icmp sge i32 1, %label49
  %label51 = zext i1 %label50 to i32
  store i32 %label51, i32* %label1
  %label52 = add i32 1, 0
  %label53 = icmp sge i32 1, %label52
  %label54 = zext i1 %label53 to i32
  store i32 %label54, i32* %label2
  %label55 = sub i32 2, 1
  %label56 = icmp sge i32 1, %label55
  %label57 = zext i1 %label56 to i32
  store i32 %label57, i32* %label3
  ret void
}



