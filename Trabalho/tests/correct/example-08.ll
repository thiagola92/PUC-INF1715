declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_2 = icmp eq i32 1, 1
  br i1 %label_2, label %label_0, label %label_1

  label_0:
  br label %label_1

  label_1:
  %label_6 = icmp eq i32 0, 1
  br i1 %label_6, label %label_3, label %label_4

  label_3:
  br label %label_5

  label_4:
  br label %label_5

  label_5:
  %label_9 = icmp eq i32 1, 1
  br i1 %label_9, label %label_7, label %label_8

  label_7:
  %label_12 = icmp eq i32 1, 1
  br i1 %label_12, label %label_10, label %label_11

  label_10:
  br label %label_11

  label_11:
  br label %label_8

  label_8:
  %label_15 = icmp eq i32 1, 1
  br i1 %label_15, label %label_13, label %label_14

  label_13:
  %label_19 = icmp eq i32 0, 1
  br i1 %label_19, label %label_16, label %label_17

  label_16:
  br label %label_18

  label_17:
  br label %label_18

  label_18:
  br label %label_14

  label_14:
  %label_23 = icmp eq i32 0, 1
  br i1 %label_23, label %label_20, label %label_21

  label_20:
  br label %label_22

  label_21:
  %label_26 = icmp eq i32 1, 1
  br i1 %label_26, label %label_24, label %label_25

  label_24:
  br label %label_25

  label_25:
  br label %label_22

  label_22:
  %label_30 = icmp eq i32 0, 1
  br i1 %label_30, label %label_27, label %label_28

  label_27:
  br label %label_29

  label_28:
  %label_34 = icmp eq i32 0, 1
  br i1 %label_34, label %label_31, label %label_32

  label_31:
  br label %label_33

  label_32:
  br label %label_33

  label_33:
  br label %label_29

  label_29:
  ret void
}



