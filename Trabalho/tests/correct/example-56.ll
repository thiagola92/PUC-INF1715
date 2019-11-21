declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @nome() {
  %label1 = alloca i32*
  %label2 = load i32*, i32** %label1
  %label3 = getelementptr inbounds i32, i32* %label2, i32 0
  store i32 99, i32* %label3
  %label4 = load i32*, i32** %label1
  %label5 = getelementptr inbounds i32, i32* %label4, i32 1
  store i32 111, i32* %label5
  %label6 = load i32*, i32** %label1
  %label7 = getelementptr inbounds i32, i32* %label6, i32 2
  store i32 101, i32* %label7
  %label8 = load i32*, i32** %label1
  %label9 = getelementptr inbounds i32, i32* %label8, i32 3
  store i32 92, i32* %label9
  ret void
}



