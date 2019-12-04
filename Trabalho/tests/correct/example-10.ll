declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @first() {
  ret void
}

define void @main() {
  %label_2 = icmp eq i32 1, 1
  br i1 %label_2, label %label_0, label %label_1

  label_0:
  %label_3 = alloca i32
  call void @first()
  br label %label_1

  label_1:
  %label_7 = icmp eq i32 0, 1
  br i1 %label_7, label %label_4, label %label_5

  label_4:
  %label_8 = alloca i32
  call void @first()
  br label %label_6

  label_5:
  %label_9 = alloca i32
  call void @first()
  br label %label_6

  label_6:
  %label_12 = icmp eq i32 1, 1
  br i1 %label_12, label %label_10, label %label_11

  label_10:
  %label_13 = alloca i32
  %label_16 = icmp eq i32 1, 1
  br i1 %label_16, label %label_14, label %label_15

  label_14:
  %label_17 = alloca i32
  call void @first()
  br label %label_15

  label_15:
  call void @first()
  br label %label_11

  label_11:
  %label_20 = icmp eq i32 1, 1
  br i1 %label_20, label %label_18, label %label_19

  label_18:
  %label_21 = alloca i32
  %label_25 = icmp eq i32 0, 1
  br i1 %label_25, label %label_22, label %label_23

  label_22:
  %label_26 = alloca i32
  call void @first()
  br label %label_24

  label_23:
  %label_27 = alloca i32
  call void @first()
  br label %label_24

  label_24:
  call void @first()
  br label %label_19

  label_19:
  %label_31 = icmp eq i32 0, 1
  br i1 %label_31, label %label_28, label %label_29

  label_28:
  %label_32 = alloca i32
  call void @first()
  br label %label_30

  label_29:
  %label_33 = alloca i32
  %label_36 = icmp eq i32 1, 1
  br i1 %label_36, label %label_34, label %label_35

  label_34:
  %label_37 = alloca i32
  call void @first()
  br label %label_35

  label_35:
  call void @first()
  br label %label_30

  label_30:
  %label_41 = icmp eq i32 0, 1
  br i1 %label_41, label %label_38, label %label_39

  label_38:
  %label_42 = alloca i32
  call void @first()
  br label %label_40

  label_39:
  %label_43 = alloca i32
  %label_47 = icmp eq i32 0, 1
  br i1 %label_47, label %label_44, label %label_45

  label_44:
  %label_48 = alloca i32
  call void @first()
  br label %label_46

  label_45:
  %label_49 = alloca i32
  call void @first()
  br label %label_46

  label_46:
  call void @first()
  br label %label_40

  label_40:
  ret void
}



