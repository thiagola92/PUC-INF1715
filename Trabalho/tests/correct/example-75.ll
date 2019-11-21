declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label1 = alloca i32*

  ; assignment
  %label2 = mul i64 4, 3
  %label3 = call i8* @malloc(i64 %label2)
  %label4 = bitcast i8* %label3 to i32*
  store i32* %label4, i32** %label1

  ; assignment

  ; array_position
  %label5 = load i32*, i32** %label1
  %label6 = getelementptr inbounds i32, i32* %label5, i64 0
  store i32 1, i32* %label6

  ; array_position
  %label7 = load i32*, i32** %label1
  %label8 = getelementptr inbounds i32, i32* %label7, i64 0
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label8)
  ret void
}



