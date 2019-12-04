declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_0 = alloca i32
  %label_1 = alloca i32
  %label_2 = alloca i32
  %label_3 = icmp eq i32 1, 1
  %label_4 = zext i1 %label_3 to i32
  store i32 %label_4, i32* %label_0
  %label_5 = icmp eq i32 1, 2
  %label_6 = zext i1 %label_5 to i32
  store i32 %label_6, i32* %label_1
  %label_7 = icmp ne i32 1, 1
  %label_8 = zext i1 %label_7 to i32
  store i32 %label_8, i32* %label_2
  %label_9 = icmp ne i32 1, 2
  %label_10 = zext i1 %label_9 to i32
  store i32 %label_10, i32* %label_0
  %label_11 = icmp slt i32 1, 1
  %label_12 = zext i1 %label_11 to i32
  store i32 %label_12, i32* %label_0
  %label_13 = icmp slt i32 1, 2
  %label_14 = zext i1 %label_13 to i32
  store i32 %label_14, i32* %label_1
  %label_15 = icmp slt i32 1, 0
  %label_16 = zext i1 %label_15 to i32
  store i32 %label_16, i32* %label_2
  %label_17 = icmp sgt i32 1, 1
  %label_18 = zext i1 %label_17 to i32
  store i32 %label_18, i32* %label_0
  %label_19 = icmp sgt i32 1, 2
  %label_20 = zext i1 %label_19 to i32
  store i32 %label_20, i32* %label_1
  %label_21 = icmp sgt i32 1, 0
  %label_22 = zext i1 %label_21 to i32
  store i32 %label_22, i32* %label_2
  %label_23 = icmp sle i32 1, 1
  %label_24 = zext i1 %label_23 to i32
  store i32 %label_24, i32* %label_0
  %label_25 = icmp sle i32 1, 2
  %label_26 = zext i1 %label_25 to i32
  store i32 %label_26, i32* %label_1
  %label_27 = icmp sle i32 1, 0
  %label_28 = zext i1 %label_27 to i32
  store i32 %label_28, i32* %label_2
  %label_29 = icmp sge i32 1, 1
  %label_30 = zext i1 %label_29 to i32
  store i32 %label_30, i32* %label_0
  %label_31 = icmp sge i32 1, 2
  %label_32 = zext i1 %label_31 to i32
  store i32 %label_32, i32* %label_1
  %label_33 = icmp sge i32 1, 0
  %label_34 = zext i1 %label_33 to i32
  store i32 %label_34, i32* %label_2
  ret void
}



