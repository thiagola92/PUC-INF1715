declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_0 = alloca i32
  %label_1 = alloca i32
  %label_2 = alloca i32

  ; or
  %label_3 = icmp ne i32 1, 0
  br i1 %label_3, label %label_4, label %label_6

  label_6:

  ; and
  %label_9 = icmp ne i32 0, 0
  br i1 %label_9, label %label_12, label %label_11

  label_12:
  %label_13 = icmp ne i32 1, 0
  br i1 %label_13, label %label_10, label %label_11

  label_10:
  br label %label_15

  label_11:
  br label %label_15

  label_15:
  %label_16 = phi i1 [ true, %label_10 ], [ false, %label_11 ]
  %label_14 = zext i1 %label_16 to i32
  %label_7 = icmp ne i32 %label_14, 0
  br i1 %label_7, label %label_4, label %label_5

  label_4:
  br label %label_17

  label_5:
  br label %label_17

  label_17:
  %label_18 = phi i1 [ true, %label_4 ], [ false, %label_5 ]
  %label_8 = zext i1 %label_18 to i32
  store i32 %label_8, i32* %label_0

  ; or

  ; and
  %label_23 = icmp ne i32 1, 0
  br i1 %label_23, label %label_26, label %label_25

  label_26:
  %label_27 = icmp ne i32 0, 0
  br i1 %label_27, label %label_24, label %label_25

  label_24:
  br label %label_29

  label_25:
  br label %label_29

  label_29:
  %label_30 = phi i1 [ true, %label_24 ], [ false, %label_25 ]
  %label_28 = zext i1 %label_30 to i32
  %label_19 = icmp ne i32 %label_28, 0
  br i1 %label_19, label %label_20, label %label_22

  label_22:
  %label_31 = icmp ne i32 1, 0
  br i1 %label_31, label %label_20, label %label_21

  label_20:
  br label %label_33

  label_21:
  br label %label_33

  label_33:
  %label_34 = phi i1 [ true, %label_20 ], [ false, %label_21 ]
  %label_32 = zext i1 %label_34 to i32
  store i32 %label_32, i32* %label_1

  ; or
  %label_35 = icmp ne i32 1, 0
  br i1 %label_35, label %label_36, label %label_38

  label_38:

  ; and
  %label_41 = icmp ne i32 0, 0
  br i1 %label_41, label %label_44, label %label_43

  label_44:
  %label_45 = icmp ne i32 1, 0
  br i1 %label_45, label %label_42, label %label_43

  label_42:
  br label %label_47

  label_43:
  br label %label_47

  label_47:
  %label_48 = phi i1 [ true, %label_42 ], [ false, %label_43 ]
  %label_46 = zext i1 %label_48 to i32
  %label_39 = icmp ne i32 %label_46, 0
  br i1 %label_39, label %label_36, label %label_37

  label_36:
  br label %label_49

  label_37:
  br label %label_49

  label_49:
  %label_50 = phi i1 [ true, %label_36 ], [ false, %label_37 ]
  %label_40 = zext i1 %label_50 to i32
  store i32 %label_40, i32* %label_0

  ; or

  ; and
  %label_55 = icmp ne i32 1, 0
  br i1 %label_55, label %label_58, label %label_57

  label_58:
  %label_59 = icmp ne i32 0, 0
  br i1 %label_59, label %label_56, label %label_57

  label_56:
  br label %label_61

  label_57:
  br label %label_61

  label_61:
  %label_62 = phi i1 [ true, %label_56 ], [ false, %label_57 ]
  %label_60 = zext i1 %label_62 to i32
  %label_51 = icmp ne i32 %label_60, 0
  br i1 %label_51, label %label_52, label %label_54

  label_54:
  %label_63 = icmp ne i32 1, 0
  br i1 %label_63, label %label_52, label %label_53

  label_52:
  br label %label_65

  label_53:
  br label %label_65

  label_65:
  %label_66 = phi i1 [ true, %label_52 ], [ false, %label_53 ]
  %label_64 = zext i1 %label_66 to i32
  store i32 %label_64, i32* %label_1
  ret void
}



