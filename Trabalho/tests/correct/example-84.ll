declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_3 = icmp eq i32 0, 1
  br i1 %label_3, label %label_0, label %label_1

  label_0:

  ;4

  %label_4 = alloca i32*
  %label_5 = mul i64 4, 4
  %label_6 = call i8* @malloc(i64 %label_5)
  %label_7 = bitcast i8* %label_6 to i32*
  store i32* %label_7, i32** %label_4
  %label_8 = load i32*, i32** %label_4
  %label_9 = getelementptr inbounds i32, i32* %label_8, i32 0
  store i32 104, i32* %label_9
  %label_10 = load i32*, i32** %label_4
  %label_11 = getelementptr inbounds i32, i32* %label_10, i32 1
  store i32 105, i32* %label_11
  %label_12 = load i32*, i32** %label_4
  %label_13 = getelementptr inbounds i32, i32* %label_12, i32 2
  store i32 10, i32* %label_13
  %label_14 = load i32*, i32** %label_4
  %label_15 = getelementptr inbounds i32, i32* %label_14, i32 3
  store i32 0, i32* %label_15
  %label_19 = alloca i32
  store i32 0, i32* %label_19
  br label %label_16

  label_16:
  %label_20 = load i32, i32* %label_19
  %label_21 = getelementptr inbounds i32, i32* %label_7, i32 %label_20
  %label_22 = load i32, i32* %label_21
  %label_23 = icmp eq i32 %label_22, 0
  br i1 %label_23, label %label_18, label %label_17

  label_17:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label_22)
  %label_24 = add i32 1, %label_20
  store i32 %label_24, i32* %label_19
  br label %label_16

  label_18:
  br label %label_2

  label_1:

  ;5

  %label_25 = alloca i32*
  %label_26 = mul i64 4, 5
  %label_27 = call i8* @malloc(i64 %label_26)
  %label_28 = bitcast i8* %label_27 to i32*
  store i32* %label_28, i32** %label_25
  %label_29 = load i32*, i32** %label_25
  %label_30 = getelementptr inbounds i32, i32* %label_29, i32 0
  store i32 104, i32* %label_30
  %label_31 = load i32*, i32** %label_25
  %label_32 = getelementptr inbounds i32, i32* %label_31, i32 1
  store i32 105, i32* %label_32
  %label_33 = load i32*, i32** %label_25
  %label_34 = getelementptr inbounds i32, i32* %label_33, i32 2
  store i32 50, i32* %label_34
  %label_35 = load i32*, i32** %label_25
  %label_36 = getelementptr inbounds i32, i32* %label_35, i32 3
  store i32 10, i32* %label_36
  %label_37 = load i32*, i32** %label_25
  %label_38 = getelementptr inbounds i32, i32* %label_37, i32 4
  store i32 0, i32* %label_38
  %label_42 = alloca i32
  store i32 0, i32* %label_42
  br label %label_39

  label_39:
  %label_43 = load i32, i32* %label_42
  %label_44 = getelementptr inbounds i32, i32* %label_28, i32 %label_43
  %label_45 = load i32, i32* %label_44
  %label_46 = icmp eq i32 %label_45, 0
  br i1 %label_46, label %label_41, label %label_40

  label_40:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label_45)
  %label_47 = add i32 1, %label_43
  store i32 %label_47, i32* %label_42
  br label %label_39

  label_41:
  br label %label_2

  label_2:

  ;5

  %label_48 = alloca i32*
  %label_49 = mul i64 4, 5
  %label_50 = call i8* @malloc(i64 %label_49)
  %label_51 = bitcast i8* %label_50 to i32*
  store i32* %label_51, i32** %label_48
  %label_52 = load i32*, i32** %label_48
  %label_53 = getelementptr inbounds i32, i32* %label_52, i32 0
  store i32 98, i32* %label_53
  %label_54 = load i32*, i32** %label_48
  %label_55 = getelementptr inbounds i32, i32* %label_54, i32 1
  store i32 121, i32* %label_55
  %label_56 = load i32*, i32** %label_48
  %label_57 = getelementptr inbounds i32, i32* %label_56, i32 2
  store i32 101, i32* %label_57
  %label_58 = load i32*, i32** %label_48
  %label_59 = getelementptr inbounds i32, i32* %label_58, i32 3
  store i32 10, i32* %label_59
  %label_60 = load i32*, i32** %label_48
  %label_61 = getelementptr inbounds i32, i32* %label_60, i32 4
  store i32 0, i32* %label_61
  %label_65 = alloca i32
  store i32 0, i32* %label_65
  br label %label_62

  label_62:
  %label_66 = load i32, i32* %label_65
  %label_67 = getelementptr inbounds i32, i32* %label_51, i32 %label_66
  %label_68 = load i32, i32* %label_67
  %label_69 = icmp eq i32 %label_68, 0
  br i1 %label_69, label %label_64, label %label_63

  label_63:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label_68)
  %label_70 = add i32 1, %label_66
  store i32 %label_70, i32* %label_65
  br label %label_62

  label_64:
  ret void
}



