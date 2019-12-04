declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_0 = alloca i32*
  %label_1 = alloca i32**
  %label_2 = mul i64 4, 1
  %label_3 = call i8* @malloc(i64 %label_2)
  %label_4 = bitcast i8* %label_3 to i32*
  store i32* %label_4, i32** %label_0
  %label_5 = mul i64 4, 1
  %label_6 = call i8* @malloc(i64 %label_5)
  %label_7 = bitcast i8* %label_6 to i32**
  store i32** %label_7, i32*** %label_1
  %label_8 = load i32**, i32*** %label_1
  %label_9 = getelementptr inbounds i32*, i32** %label_8, i32 0
  %label_10 = load i32*, i32** %label_0
  store i32* %label_10, i32** %label_9
  ret void
}



