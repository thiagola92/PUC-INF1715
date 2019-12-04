declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_0 = alloca i32*
  %label_1 = mul i64 4, 5
  %label_2 = call i8* @malloc(i64 %label_1)
  %label_3 = bitcast i8* %label_2 to i32*
  store i32* %label_3, i32** %label_0
  %label_4 = load i32*, i32** %label_0
  %label_5 = getelementptr inbounds i32, i32* %label_4, i32 0
  store i32 99, i32* %label_5
  %label_6 = load i32*, i32** %label_0
  %label_7 = getelementptr inbounds i32, i32* %label_6, i32 1
  store i32 111, i32* %label_7
  %label_8 = load i32*, i32** %label_0
  %label_9 = getelementptr inbounds i32, i32* %label_8, i32 2
  store i32 101, i32* %label_9
  %label_10 = load i32*, i32** %label_0
  %label_11 = getelementptr inbounds i32, i32* %label_10, i32 3
  store i32 10, i32* %label_11
  %label_12 = load i32*, i32** %label_0
  %label_13 = getelementptr inbounds i32, i32* %label_12, i32 4
  store i32 0, i32* %label_13
  %label_17 = alloca i32
  store i32 0, i32* %label_17
  br label %label_14

  label_14:
  %label_18 = load i32, i32* %label_17
  %label_19 = getelementptr inbounds i32, i32* %label_3, i32 %label_18
  %label_20 = load i32, i32* %label_19
  %label_21 = icmp eq i32 %label_20, 0
  br i1 %label_21, label %label_16, label %label_15

  label_15:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label_20)
  %label_22 = add i32 1, %label_18
  store i32 %label_22, i32* %label_17
  br label %label_14

  label_16:
  %label_23 = alloca i32*
  %label_24 = mul i64 4, 17
  %label_25 = call i8* @malloc(i64 %label_24)
  %label_26 = bitcast i8* %label_25 to i32*
  store i32* %label_26, i32** %label_23
  %label_27 = load i32*, i32** %label_23
  %label_28 = getelementptr inbounds i32, i32* %label_27, i32 0
  store i32 116, i32* %label_28
  %label_29 = load i32*, i32** %label_23
  %label_30 = getelementptr inbounds i32, i32* %label_29, i32 1
  store i32 101, i32* %label_30
  %label_31 = load i32*, i32** %label_23
  %label_32 = getelementptr inbounds i32, i32* %label_31, i32 2
  store i32 110, i32* %label_32
  %label_33 = load i32*, i32** %label_23
  %label_34 = getelementptr inbounds i32, i32* %label_33, i32 3
  store i32 116, i32* %label_34
  %label_35 = load i32*, i32** %label_23
  %label_36 = getelementptr inbounds i32, i32* %label_35, i32 4
  store i32 97, i32* %label_36
  %label_37 = load i32*, i32** %label_23
  %label_38 = getelementptr inbounds i32, i32* %label_37, i32 5
  store i32 32, i32* %label_38
  %label_39 = load i32*, i32** %label_23
  %label_40 = getelementptr inbounds i32, i32* %label_39, i32 6
  store i32 110, i32* %label_40
  %label_41 = load i32*, i32** %label_23
  %label_42 = getelementptr inbounds i32, i32* %label_41, i32 7
  store i32 97, i32* %label_42
  %label_43 = load i32*, i32** %label_23
  %label_44 = getelementptr inbounds i32, i32* %label_43, i32 8
  store i32 111, i32* %label_44
  %label_45 = load i32*, i32** %label_23
  %label_46 = getelementptr inbounds i32, i32* %label_45, i32 9
  store i32 32, i32* %label_46
  %label_47 = load i32*, i32** %label_23
  %label_48 = getelementptr inbounds i32, i32* %label_47, i32 10
  store i32 109, i32* %label_48
  %label_49 = load i32*, i32** %label_23
  %label_50 = getelementptr inbounds i32, i32* %label_49, i32 11
  store i32 101, i32* %label_50
  %label_51 = load i32*, i32** %label_23
  %label_52 = getelementptr inbounds i32, i32* %label_51, i32 12
  store i32 32, i32* %label_52
  %label_53 = load i32*, i32** %label_23
  %label_54 = getelementptr inbounds i32, i32* %label_53, i32 13
  store i32 99, i32* %label_54
  %label_55 = load i32*, i32** %label_23
  %label_56 = getelementptr inbounds i32, i32* %label_55, i32 14
  store i32 111, i32* %label_56
  %label_57 = load i32*, i32** %label_23
  %label_58 = getelementptr inbounds i32, i32* %label_57, i32 15
  store i32 114, i32* %label_58
  %label_59 = load i32*, i32** %label_23
  %label_60 = getelementptr inbounds i32, i32* %label_59, i32 16
  store i32 0, i32* %label_60
  %label_64 = alloca i32
  store i32 0, i32* %label_64
  br label %label_61

  label_61:
  %label_65 = load i32, i32* %label_64
  %label_66 = getelementptr inbounds i32, i32* %label_26, i32 %label_65
  %label_67 = load i32, i32* %label_66
  %label_68 = icmp eq i32 %label_67, 0
  br i1 %label_68, label %label_63, label %label_62

  label_62:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label_67)
  %label_69 = add i32 1, %label_65
  store i32 %label_69, i32* %label_64
  br label %label_61

  label_63:
  ret void
}



