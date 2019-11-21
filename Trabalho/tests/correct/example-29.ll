declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label1 = alloca i32*

  ; assignment
  %label2 = mul i64 4, 2
  %label3 = call i8* @malloc(i64 %label2)
  %label4 = bitcast i8* %label3 to i32*
  store i32* %label4, i32** %label1

  ; assignment

  ; array_position
  %label5 = load i32*, i32** %label1
  %label6 = getelementptr inbounds i32, i32* %label5, i64 0
  store i32 1, i32* %label6

  ; assignment

  ; array_position
  %label7 = load i32*, i32** %label1

  ; array_position
  %label8 = load i32*, i32** %label1
  %label9 = getelementptr inbounds i32, i32* %label8, i64 0
  %label10 = getelementptr inbounds i32, i32* %label7, i64 %label9

  ; array_position
  %label11 = load i32*, i32** %label1

  ; array_position
  %label12 = load i32*, i32** %label1
  %label13 = getelementptr inbounds i32, i32* %label12, i64 0
  %label14 = sub i32 %label13, 1
  %label15 = getelementptr inbounds i32, i32* %label11, i64 %label14
  store i32 %label15, i32* %label10
  ret void
}



