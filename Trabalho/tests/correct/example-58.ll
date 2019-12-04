declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define i32* @nome() {
  %label_0 = alloca i32*
  %label_1 = mul i64 4, 4
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
  store i32 0, i32* %label_11
  ret i32* %label_3
}

define void @main() {
  %label_0 = call i32* @nome()
  %label_4 = alloca i32
  store i32 0, i32* %label_4
  br label %label_1

  label_1:
  %label_5 = load i32, i32* %label_4
  %label_6 = getelementptr inbounds i32, i32* %label_0, i32 %label_5
  %label_7 = load i32, i32* %label_6
  %label_8 = icmp eq i32 %label_7, 0
  br i1 %label_8, label %label_3, label %label_2

  label_2:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label_7)
  %label_9 = add i32 1, %label_5
  store i32 %label_9, i32* %label_4
  br label %label_1

  label_3:
  ret void
}



