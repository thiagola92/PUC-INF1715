declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label1 = alloca i32
  %label2 = alloca i32
  store i32 1, i32* %label1
  store i32 0, i32* %label2
  %label3 = load i32, i32* %label1
  %label4 = icmp eq i32 %label3, 1
  %label5 = zext i1 %label4 to i32
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label5)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label6 = load i32, i32* %label1
  %label7 = icmp eq i32 %label6, 0
  %label8 = zext i1 %label7 to i32
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label8)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label9 = load i32, i32* %label2
  %label10 = icmp eq i32 %label9, 1
  %label11 = zext i1 %label10 to i32
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label11)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label12 = load i32, i32* %label2
  %label13 = icmp eq i32 %label12, 0
  %label14 = zext i1 %label13 to i32
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label14)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label15 = load i32, i32* %label1
  %label16 = icmp eq i32 %label15, 1
  %label17 = zext i1 %label16 to i32
  %label18 = icmp ne i32 %label17, 0
  %label19 = xor i1 %label18, true
  %label20 = zext i1 %label19 to i32
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label20)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label21 = load i32, i32* %label1
  %label22 = icmp eq i32 %label21, 0
  %label23 = zext i1 %label22 to i32
  %label24 = icmp ne i32 %label23, 0
  %label25 = xor i1 %label24, true
  %label26 = zext i1 %label25 to i32
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label26)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label27 = load i32, i32* %label2
  %label28 = icmp eq i32 %label27, 1
  %label29 = zext i1 %label28 to i32
  %label30 = icmp ne i32 %label29, 0
  %label31 = xor i1 %label30, true
  %label32 = zext i1 %label31 to i32
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label32)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label33 = load i32, i32* %label2
  %label34 = icmp eq i32 %label33, 0
  %label35 = zext i1 %label34 to i32
  %label36 = icmp ne i32 %label35, 0
  %label37 = xor i1 %label36, true
  %label38 = zext i1 %label37 to i32
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label38)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label39 = load i32, i32* %label1
  %label40 = icmp ne i32 %label39, 0
  %label41 = xor i1 %label40, true
  %label42 = zext i1 %label41 to i32
  %label43 = icmp eq i32 %label42, 1
  %label44 = zext i1 %label43 to i32
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label44)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label45 = load i32, i32* %label1
  %label46 = icmp ne i32 %label45, 0
  %label47 = xor i1 %label46, true
  %label48 = zext i1 %label47 to i32
  %label49 = icmp eq i32 %label48, 0
  %label50 = zext i1 %label49 to i32
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label50)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label51 = load i32, i32* %label2
  %label52 = icmp ne i32 %label51, 0
  %label53 = xor i1 %label52, true
  %label54 = zext i1 %label53 to i32
  %label55 = icmp eq i32 %label54, 1
  %label56 = zext i1 %label55 to i32
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label56)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label57 = load i32, i32* %label2
  %label58 = icmp ne i32 %label57, 0
  %label59 = xor i1 %label58, true
  %label60 = zext i1 %label59 to i32
  %label61 = icmp eq i32 %label60, 0
  %label62 = zext i1 %label61 to i32
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label62)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  ret void
}



