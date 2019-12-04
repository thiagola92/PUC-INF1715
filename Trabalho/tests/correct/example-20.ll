declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_0 = alloca i32
  %label_1 = alloca i32
  %label_2 = alloca i32
  %label_3 = icmp ne i32 1, 0
  br i1 %label_3, label %label_5, label %label_7

  label_7:
  %label_9 = icmp ne i32 0, 0
  br i1 %label_9, label %label_13, label %label_12

  label_13:
  %label_10 = icmp ne i32 1, 0
  br i1 %label_10, label %label_11, label %label_12

  label_11:
  br label %label_15

  label_12:
  br label %label_15

  label_15:
  %label_16 = phi i1 [ true, %label_11 ], [ false, %label_12 ]
  %label_14 = zext i1 %label_16 to i32
  %label_4 = icmp ne i32 %label_14, 0
  br i1 %label_4, label %label_5, label %label_6

  label_5:
  br label %label_17

  label_6:
  br label %label_17

  label_17:
  %label_18 = phi i1 [ true, %label_5 ], [ false, %label_6 ]
  %label_8 = zext i1 %label_18 to i32
  store i32 %label_8, i32* %label_0
  %label_25 = icmp ne i32 1, 0
  br i1 %label_25, label %label_29, label %label_28

  label_29:
  %label_26 = icmp ne i32 0, 0
  br i1 %label_26, label %label_27, label %label_28

  label_27:
  br label %label_31

  label_28:
  br label %label_31

  label_31:
  %label_32 = phi i1 [ true, %label_27 ], [ false, %label_28 ]
  %label_30 = zext i1 %label_32 to i32
  %label_19 = icmp ne i32 %label_30, 0
  br i1 %label_19, label %label_21, label %label_23

  label_23:
  %label_20 = icmp ne i32 1, 0
  br i1 %label_20, label %label_21, label %label_22

  label_21:
  br label %label_33

  label_22:
  br label %label_33

  label_33:
  %label_34 = phi i1 [ true, %label_21 ], [ false, %label_22 ]
  %label_24 = zext i1 %label_34 to i32
  store i32 %label_24, i32* %label_1
  %label_35 = icmp ne i32 1, 0
  br i1 %label_35, label %label_37, label %label_39

  label_39:
  %label_41 = icmp ne i32 0, 0
  br i1 %label_41, label %label_45, label %label_44

  label_45:
  %label_42 = icmp ne i32 1, 0
  br i1 %label_42, label %label_43, label %label_44

  label_43:
  br label %label_47

  label_44:
  br label %label_47

  label_47:
  %label_48 = phi i1 [ true, %label_43 ], [ false, %label_44 ]
  %label_46 = zext i1 %label_48 to i32
  %label_36 = icmp ne i32 %label_46, 0
  br i1 %label_36, label %label_37, label %label_38

  label_37:
  br label %label_49

  label_38:
  br label %label_49

  label_49:
  %label_50 = phi i1 [ true, %label_37 ], [ false, %label_38 ]
  %label_40 = zext i1 %label_50 to i32
  store i32 %label_40, i32* %label_0
  %label_57 = icmp ne i32 1, 0
  br i1 %label_57, label %label_61, label %label_60

  label_61:
  %label_58 = icmp ne i32 0, 0
  br i1 %label_58, label %label_59, label %label_60

  label_59:
  br label %label_63

  label_60:
  br label %label_63

  label_63:
  %label_64 = phi i1 [ true, %label_59 ], [ false, %label_60 ]
  %label_62 = zext i1 %label_64 to i32
  %label_51 = icmp ne i32 %label_62, 0
  br i1 %label_51, label %label_53, label %label_55

  label_55:
  %label_52 = icmp ne i32 1, 0
  br i1 %label_52, label %label_53, label %label_54

  label_53:
  br label %label_65

  label_54:
  br label %label_65

  label_65:
  %label_66 = phi i1 [ true, %label_53 ], [ false, %label_54 ]
  %label_56 = zext i1 %label_66 to i32
  store i32 %label_56, i32* %label_1
  ret void
}



