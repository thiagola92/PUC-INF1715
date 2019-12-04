declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_0 = alloca i32*
  %label_1 = mul i64 4, 18
  %label_2 = call i8* @malloc(i64 %label_1)
  %label_3 = bitcast i8* %label_2 to i32*
  store i32* %label_3, i32** %label_0
  %label_4 = load i32*, i32** %label_0
  %label_5 = getelementptr inbounds i32, i32* %label_4, i32 0
  store i32 101, i32* %label_5
  %label_6 = load i32*, i32** %label_0
  %label_7 = getelementptr inbounds i32, i32* %label_6, i32 1
  store i32 115, i32* %label_7
  %label_8 = load i32*, i32** %label_0
  %label_9 = getelementptr inbounds i32, i32* %label_8, i32 2
  store i32 116, i32* %label_9
  %label_10 = load i32*, i32** %label_0
  %label_11 = getelementptr inbounds i32, i32* %label_10, i32 3
  store i32 111, i32* %label_11
  %label_12 = load i32*, i32** %label_0
  %label_13 = getelementptr inbounds i32, i32* %label_12, i32 4
  store i32 117, i32* %label_13
  %label_14 = load i32*, i32** %label_0
  %label_15 = getelementptr inbounds i32, i32* %label_14, i32 5
  store i32 32, i32* %label_15
  %label_16 = load i32*, i32** %label_0
  %label_17 = getelementptr inbounds i32, i32* %label_16, i32 6
  store i32 101, i32* %label_17
  %label_18 = load i32*, i32** %label_0
  %label_19 = getelementptr inbounds i32, i32* %label_18, i32 7
  store i32 115, i32* %label_19
  %label_20 = load i32*, i32** %label_0
  %label_21 = getelementptr inbounds i32, i32* %label_20, i32 8
  store i32 99, i32* %label_21
  %label_22 = load i32*, i32** %label_0
  %label_23 = getelementptr inbounds i32, i32* %label_22, i32 9
  store i32 114, i32* %label_23
  %label_24 = load i32*, i32** %label_0
  %label_25 = getelementptr inbounds i32, i32* %label_24, i32 10
  store i32 101, i32* %label_25
  %label_26 = load i32*, i32** %label_0
  %label_27 = getelementptr inbounds i32, i32* %label_26, i32 11
  store i32 118, i32* %label_27
  %label_28 = load i32*, i32** %label_0
  %label_29 = getelementptr inbounds i32, i32* %label_28, i32 12
  store i32 101, i32* %label_29
  %label_30 = load i32*, i32** %label_0
  %label_31 = getelementptr inbounds i32, i32* %label_30, i32 13
  store i32 110, i32* %label_31
  %label_32 = load i32*, i32** %label_0
  %label_33 = getelementptr inbounds i32, i32* %label_32, i32 14
  store i32 100, i32* %label_33
  %label_34 = load i32*, i32** %label_0
  %label_35 = getelementptr inbounds i32, i32* %label_34, i32 15
  store i32 111, i32* %label_35
  %label_36 = load i32*, i32** %label_0
  %label_37 = getelementptr inbounds i32, i32* %label_36, i32 16
  store i32 10, i32* %label_37
  %label_38 = load i32*, i32** %label_0
  %label_39 = getelementptr inbounds i32, i32* %label_38, i32 17
  store i32 0, i32* %label_39
  %label_40 = load i32*, i32** %label_0
  %label_44 = alloca i32
  store i32 0, i32* %label_44
  br label %label_41

  label_41:
  %label_45 = load i32, i32* %label_44
  %label_46 = getelementptr inbounds i32, i32* %label_40, i32 %label_45
  %label_47 = load i32, i32* %label_46
  %label_48 = icmp eq i32 %label_47, 0
  br i1 %label_48, label %label_43, label %label_42

  label_42:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label_47)
  %label_49 = add i32 1, %label_45
  store i32 %label_49, i32* %label_44
  br label %label_41

  label_43:
  ret void
}



