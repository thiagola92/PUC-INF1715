declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_2 = icmp ne i32 1, 0
  %label_3 = xor i1 %label_2, true
  %label_4 = zext i1 %label_3 to i32
  %label_5 = icmp eq i32 %label_4, 1
  br i1 %label_5, label %label_0, label %label_1

  label_0:
  br label %label_1

  label_1:
  %label_8 = icmp ne i32 0, 0
  %label_9 = xor i1 %label_8, true
  %label_10 = zext i1 %label_9 to i32
  %label_11 = icmp eq i32 %label_10, 1
  br i1 %label_11, label %label_6, label %label_7

  label_6:
  br label %label_7

  label_7:
  %label_14 = icmp ne i32 0, 0
  %label_15 = xor i1 %label_14, true
  %label_16 = zext i1 %label_15 to i32
  %label_17 = icmp eq i32 %label_16, 1
  %label_18 = zext i1 %label_17 to i32
  %label_19 = icmp eq i32 %label_18, 1
  br i1 %label_19, label %label_12, label %label_13

  label_12:
  br label %label_13

  label_13:
  %label_22 = icmp ne i32 1, 0
  %label_23 = xor i1 %label_22, true
  %label_24 = zext i1 %label_23 to i32
  %label_25 = icmp eq i32 %label_24, 0
  %label_26 = zext i1 %label_25 to i32
  %label_27 = icmp eq i32 %label_26, 1
  br i1 %label_27, label %label_20, label %label_21

  label_20:
  br label %label_21

  label_21:
  %label_30 = icmp ne i32 1, 0
  %label_31 = xor i1 %label_30, true
  %label_32 = zext i1 %label_31 to i32
  %label_33 = icmp ne i32 0, 0
  %label_34 = xor i1 %label_33, true
  %label_35 = zext i1 %label_34 to i32
  %label_36 = icmp eq i32 %label_32, %label_35
  %label_37 = zext i1 %label_36 to i32
  %label_38 = icmp eq i32 %label_37, 1
  br i1 %label_38, label %label_28, label %label_29

  label_28:
  br label %label_29

  label_29:
  ret void
}



