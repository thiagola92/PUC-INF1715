declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_0 = alloca i32*
  %label_1 = mul i64 4, 2
  %label_2 = call i8* @malloc(i64 %label_1)
  %label_3 = bitcast i8* %label_2 to i32*
  store i32* %label_3, i32** %label_0
  %label_4 = load i32*, i32** %label_0
  %label_5 = getelementptr inbounds i32, i32* %label_4, i32 0
  store i32 1, i32* %label_5
  %label_6 = load i32*, i32** %label_0
  %label_7 = getelementptr inbounds i32, i32* %label_6, i32 0
  %label_8 = load i32, i32* %label_7
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label_8)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label_9 = load i32*, i32** %label_0
  %label_10 = getelementptr inbounds i32, i32* %label_9, i32 0
  %label_11 = load i32, i32* %label_10
  %label_12 = sub i32 %label_11, 1
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label_12)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label_13 = load i32*, i32** %label_0
  %label_14 = sub i32 1, 1
  %label_15 = getelementptr inbounds i32, i32* %label_13, i32 %label_14
  %label_16 = load i32, i32* %label_15
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label_16)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label_17 = load i32*, i32** %label_0
  %label_18 = load i32*, i32** %label_0
  %label_19 = getelementptr inbounds i32, i32* %label_18, i32 0
  %label_20 = load i32, i32* %label_19
  %label_21 = sub i32 %label_20, 1
  %label_22 = getelementptr inbounds i32, i32* %label_17, i32 %label_21
  %label_23 = load i32, i32* %label_22
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label_23)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  %label_24 = load i32*, i32** %label_0
  %label_25 = load i32*, i32** %label_0
  %label_26 = getelementptr inbounds i32, i32* %label_25, i32 0
  %label_27 = load i32, i32* %label_26
  %label_28 = getelementptr inbounds i32, i32* %label_24, i32 %label_27
  %label_29 = load i32*, i32** %label_0
  %label_30 = load i32*, i32** %label_0
  %label_31 = getelementptr inbounds i32, i32* %label_30, i32 0
  %label_32 = load i32, i32* %label_31
  %label_33 = sub i32 %label_32, 1
  %label_34 = getelementptr inbounds i32, i32* %label_29, i32 %label_33
  %label_35 = load i32, i32* %label_34
  store i32 %label_35, i32* %label_28
  %label_36 = load i32*, i32** %label_0
  %label_37 = load i32*, i32** %label_0
  %label_38 = getelementptr inbounds i32, i32* %label_37, i32 0
  %label_39 = load i32, i32* %label_38
  %label_40 = getelementptr inbounds i32, i32* %label_36, i32 %label_39
  %label_41 = load i32, i32* %label_40
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label_41)
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 10)
  ret void
}



