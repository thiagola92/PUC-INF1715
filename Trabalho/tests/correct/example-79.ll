declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_0 = alloca i32*
  %label_1 = mul i64 4, 3
  %label_2 = call i8* @malloc(i64 %label_1)
  %label_3 = bitcast i8* %label_2 to i32*
  store i32* %label_3, i32** %label_0
  %label_4 = load i32*, i32** %label_0
  %label_5 = getelementptr inbounds i32, i32* %label_4, i32 0
  store i32 111, i32* %label_5
  %label_6 = load i32*, i32** %label_0
  %label_7 = getelementptr inbounds i32, i32* %label_6, i32 1
  store i32 105, i32* %label_7
  %label_8 = load i32*, i32** %label_0
  %label_9 = getelementptr inbounds i32, i32* %label_8, i32 2
  store i32 0, i32* %label_9
  %label_10 = load i32*, i32** %label_0
  %label_14 = alloca i32
  store i32 0, i32* %label_14
  br label %label_11

  label_11:
  %label_15 = load i32, i32* %label_14
  %label_16 = getelementptr inbounds i32, i32* %label_10, i32 %label_15
  %label_17 = load i32, i32* %label_16
  %label_18 = icmp eq i32 %label_17, 0
  br i1 %label_18, label %label_13, label %label_12

  label_12:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label_17)
  %label_19 = add i32 1, %label_15
  store i32 %label_19, i32* %label_14
  br label %label_11

  label_13:
  ret void
}



