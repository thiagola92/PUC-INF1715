declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @nome() {
  %label1 = alloca i32*

  ; assignment

  ; array_position
  %label2 = load i32*, i32** %label1
  %label3 = getelementptr inbounds i32, i32* %label2, i64 0
  store i32 99, i32* %label3

  ; assignment

  ; array_position
  %label4 = load i32*, i32** %label1
  %label5 = getelementptr inbounds i32, i32* %label4, i64 1
  store i32 111, i32* %label5

  ; assignment

  ; array_position
  %label6 = load i32*, i32** %label1
  %label7 = getelementptr inbounds i32, i32* %label6, i64 2
  store i32 101, i32* %label7

  ; assignment

  ; array_position
  %label8 = load i32*, i32** %label1
  %label9 = getelementptr inbounds i32, i32* %label8, i64 3
  store i32 92, i32* %label9
  ret void
}



