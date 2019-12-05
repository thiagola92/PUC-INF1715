declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @test() {
  %label_0 = alloca i32*
  %label_1 = mul i64 4, 4
  %label_2 = call i8* @malloc(i64 %label_1)
  %label_3 = bitcast i8* %label_2 to i32*
  store i32* %label_3, i32** %label_0
  %label_4 = load i32*, i32** %label_0
  %label_5 = getelementptr inbounds i32, i32* %label_4, i32 0
  store i32 111, i32* %label_5
  %label_6 = load i32*, i32** %label_0
  %label_7 = getelementptr inbounds i32, i32* %label_6, i32 1
  store i32 108, i32* %label_7
  %label_8 = load i32*, i32** %label_0
  %label_9 = getelementptr inbounds i32, i32* %label_8, i32 2
  store i32 97, i32* %label_9
  %label_10 = load i32*, i32** %label_0
  %label_11 = getelementptr inbounds i32, i32* %label_10, i32 3
  store i32 0, i32* %label_11
  ret void
}

define void @main() {
  %label_0 = alloca i32*

  ; string
  %label_1 = alloca i32*
  %label_2 = mul i64 4, 4
  %label_3 = call i8* @malloc(i64 %label_2)
  %label_4 = bitcast i8* %label_3 to i32*
  store i32* %label_4, i32** %label_1
  %label_5 = load i32*, i32** %label_1
  %label_6 = getelementptr inbounds i32, i32* %label_5, i32 0
  store i32 111, i32* %label_6
  %label_7 = load i32*, i32** %label_1
  %label_8 = getelementptr inbounds i32, i32* %label_7, i32 1
  store i32 108, i32* %label_8
  %label_9 = load i32*, i32** %label_1
  %label_10 = getelementptr inbounds i32, i32* %label_9, i32 2
  store i32 97, i32* %label_10
  %label_11 = load i32*, i32** %label_1
  %label_12 = getelementptr inbounds i32, i32* %label_11, i32 3
  store i32 0, i32* %label_12
  store i32* %label_4, i32** %label_0
  ret void
}



