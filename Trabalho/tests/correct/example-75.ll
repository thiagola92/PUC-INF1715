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
  %label_5 = getelementptr inbounds i32, i32* %label_4, i32 1
  store i32 1, i32* %label_5
  %label_6 = load i32*, i32** %label_0
  %label_7 = getelementptr inbounds i32, i32* %label_6, i32 1
  %label_8 = load i32, i32* %label_7
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label_8)
  ret void
}



