declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_0 = alloca i32
  %label_1 = alloca i32
  %label_2 = alloca i32
  %label_3 = add i32 1, 1
  %label_4 = icmp eq i32 1, %label_3
  %label_5 = zext i1 %label_4 to i32
  store i32 %label_5, i32* %label_0
  %label_6 = add i32 1, 0
  %label_7 = icmp eq i32 1, %label_6
  %label_8 = zext i1 %label_7 to i32
  store i32 %label_8, i32* %label_1
  %label_9 = sub i32 2, 1
  %label_10 = icmp eq i32 1, %label_9
  %label_11 = zext i1 %label_10 to i32
  store i32 %label_11, i32* %label_2
  %label_12 = add i32 1, 1
  %label_13 = icmp ne i32 1, %label_12
  %label_14 = zext i1 %label_13 to i32
  store i32 %label_14, i32* %label_0
  %label_15 = add i32 1, 0
  %label_16 = icmp ne i32 1, %label_15
  %label_17 = zext i1 %label_16 to i32
  store i32 %label_17, i32* %label_1
  %label_18 = sub i32 2, 1
  %label_19 = icmp ne i32 1, %label_18
  %label_20 = zext i1 %label_19 to i32
  store i32 %label_20, i32* %label_2
  %label_21 = add i32 1, 1
  %label_22 = icmp slt i32 1, %label_21
  %label_23 = zext i1 %label_22 to i32
  store i32 %label_23, i32* %label_0
  %label_24 = add i32 1, 0
  %label_25 = icmp slt i32 1, %label_24
  %label_26 = zext i1 %label_25 to i32
  store i32 %label_26, i32* %label_1
  %label_27 = sub i32 2, 1
  %label_28 = icmp slt i32 1, %label_27
  %label_29 = zext i1 %label_28 to i32
  store i32 %label_29, i32* %label_2
  %label_30 = add i32 1, 1
  %label_31 = icmp sgt i32 1, %label_30
  %label_32 = zext i1 %label_31 to i32
  store i32 %label_32, i32* %label_0
  %label_33 = add i32 1, 0
  %label_34 = icmp sgt i32 1, %label_33
  %label_35 = zext i1 %label_34 to i32
  store i32 %label_35, i32* %label_1
  %label_36 = sub i32 2, 1
  %label_37 = icmp sgt i32 1, %label_36
  %label_38 = zext i1 %label_37 to i32
  store i32 %label_38, i32* %label_2
  %label_39 = add i32 1, 1
  %label_40 = icmp sle i32 1, %label_39
  %label_41 = zext i1 %label_40 to i32
  store i32 %label_41, i32* %label_0
  %label_42 = add i32 1, 0
  %label_43 = icmp sle i32 1, %label_42
  %label_44 = zext i1 %label_43 to i32
  store i32 %label_44, i32* %label_1
  %label_45 = sub i32 2, 1
  %label_46 = icmp sle i32 1, %label_45
  %label_47 = zext i1 %label_46 to i32
  store i32 %label_47, i32* %label_2
  %label_48 = add i32 1, 1
  %label_49 = icmp sge i32 1, %label_48
  %label_50 = zext i1 %label_49 to i32
  store i32 %label_50, i32* %label_0
  %label_51 = add i32 1, 0
  %label_52 = icmp sge i32 1, %label_51
  %label_53 = zext i1 %label_52 to i32
  store i32 %label_53, i32* %label_1
  %label_54 = sub i32 2, 1
  %label_55 = icmp sge i32 1, %label_54
  %label_56 = zext i1 %label_55 to i32
  store i32 %label_56, i32* %label_2
  ret void
}



