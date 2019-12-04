declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_0 = alloca i32
  %label_1 = alloca i32
  store i32 1, i32* %label_0
  store i32 0, i32* %label_1
  %label_2 = load i32, i32* %label_0
  %label_3 = icmp eq i32 %label_2, 1
  %label_4 = zext i1 %label_3 to i32
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label_4)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label_5 = load i32, i32* %label_0
  %label_6 = icmp eq i32 %label_5, 0
  %label_7 = zext i1 %label_6 to i32
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label_7)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label_8 = load i32, i32* %label_1
  %label_9 = icmp eq i32 %label_8, 1
  %label_10 = zext i1 %label_9 to i32
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label_10)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label_11 = load i32, i32* %label_1
  %label_12 = icmp eq i32 %label_11, 0
  %label_13 = zext i1 %label_12 to i32
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label_13)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label_14 = load i32, i32* %label_0
  %label_15 = icmp eq i32 %label_14, 1
  %label_16 = zext i1 %label_15 to i32
  %label_17 = icmp ne i32 %label_16, 0
  %label_18 = xor i1 %label_17, true
  %label_19 = zext i1 %label_18 to i32
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label_19)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label_20 = load i32, i32* %label_0
  %label_21 = icmp eq i32 %label_20, 0
  %label_22 = zext i1 %label_21 to i32
  %label_23 = icmp ne i32 %label_22, 0
  %label_24 = xor i1 %label_23, true
  %label_25 = zext i1 %label_24 to i32
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label_25)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label_26 = load i32, i32* %label_1
  %label_27 = icmp eq i32 %label_26, 1
  %label_28 = zext i1 %label_27 to i32
  %label_29 = icmp ne i32 %label_28, 0
  %label_30 = xor i1 %label_29, true
  %label_31 = zext i1 %label_30 to i32
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label_31)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label_32 = load i32, i32* %label_1
  %label_33 = icmp eq i32 %label_32, 0
  %label_34 = zext i1 %label_33 to i32
  %label_35 = icmp ne i32 %label_34, 0
  %label_36 = xor i1 %label_35, true
  %label_37 = zext i1 %label_36 to i32
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label_37)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label_38 = load i32, i32* %label_0
  %label_39 = icmp ne i32 %label_38, 0
  %label_40 = xor i1 %label_39, true
  %label_41 = zext i1 %label_40 to i32
  %label_42 = icmp eq i32 %label_41, 1
  %label_43 = zext i1 %label_42 to i32
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label_43)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label_44 = load i32, i32* %label_0
  %label_45 = icmp ne i32 %label_44, 0
  %label_46 = xor i1 %label_45, true
  %label_47 = zext i1 %label_46 to i32
  %label_48 = icmp eq i32 %label_47, 0
  %label_49 = zext i1 %label_48 to i32
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label_49)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label_50 = load i32, i32* %label_1
  %label_51 = icmp ne i32 %label_50, 0
  %label_52 = xor i1 %label_51, true
  %label_53 = zext i1 %label_52 to i32
  %label_54 = icmp eq i32 %label_53, 1
  %label_55 = zext i1 %label_54 to i32
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label_55)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label_56 = load i32, i32* %label_1
  %label_57 = icmp ne i32 %label_56, 0
  %label_58 = xor i1 %label_57, true
  %label_59 = zext i1 %label_58 to i32
  %label_60 = icmp eq i32 %label_59, 0
  %label_61 = zext i1 %label_60 to i32
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label_61)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  ret void
}



