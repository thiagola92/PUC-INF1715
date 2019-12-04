declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_2 = icmp eq i32 1, 1
  %label_3 = zext i1 %label_2 to i32
  %label_4 = icmp eq i32 %label_3, 1
  br i1 %label_4, label %label_0, label %label_1

  label_0:
  br label %label_1

  label_1:
  %label_7 = icmp ne i32 2, 2
  %label_8 = zext i1 %label_7 to i32
  %label_9 = icmp eq i32 %label_8, 1
  br i1 %label_9, label %label_5, label %label_6

  label_5:
  br label %label_6

  label_6:
  %label_12 = add i32 1, 1
  %label_13 = icmp eq i32 %label_12, 1
  %label_14 = zext i1 %label_13 to i32
  %label_15 = icmp eq i32 %label_14, 1
  br i1 %label_15, label %label_10, label %label_11

  label_10:
  br label %label_11

  label_11:
  %label_18 = icmp eq i32 1, 1
  br i1 %label_18, label %label_16, label %label_17

  label_16:
  br label %label_17

  label_17:
  %label_21 = icmp slt i32 1, 1
  %label_22 = zext i1 %label_21 to i32
  %label_23 = icmp eq i32 %label_22, 1
  br i1 %label_23, label %label_19, label %label_20

  label_19:
  br label %label_20

  label_20:
  %label_26 = add i32 1, 1
  %label_27 = icmp slt i32 1, %label_26
  %label_28 = zext i1 %label_27 to i32
  %label_29 = icmp eq i32 %label_28, 1
  br i1 %label_29, label %label_24, label %label_25

  label_24:
  br label %label_25

  label_25:
  ret void
}



