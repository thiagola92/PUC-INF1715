declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

@.print.string = constant [3 x i8] c"%s\00"

define void @nome() {
  %label1 = alloca i32*

  ; string
  %label2 = alloca i32*
  %label3 = mul i64 4, 4
  %label4 = call i8* @malloc(i64 %label3)
  %label5 = bitcast i8* %label4 to i32*
  store i32* %label5, i32** %label2

  ; char
  %label6 = load i32*, i32** %label2
  %label7 = getelementptr inbounds i32, i32* %label6, i32 0
  store i32 99, i32* %label7
  %label8 = load i32*, i32** %label2
  %label9 = getelementptr inbounds i32, i32* %label8, i32 1
  store i32 111, i32* %label9
  %label10 = load i32*, i32** %label2
  %label11 = getelementptr inbounds i32, i32* %label10, i32 2
  store i32 101, i32* %label11
  %label12 = load i32*, i32** %label2
  %label13 = getelementptr inbounds i32, i32* %label12, i32 3
  store i32 0, i32* %label13

  ; assignment
  store i32* %label5, i32** %label1
  ret void
}



