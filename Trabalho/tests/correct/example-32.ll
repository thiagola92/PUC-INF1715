declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label1 = alloca i32*
  %label2 = alloca i32**

  ; assignment
  %label3 = mul i64 4, 1
  %label4 = call i8* @malloc(i64 %label3)
  %label5 = bitcast i8* %label4 to i32*
  store i32* %label5, i32** %label1

  ; assignment
  %label6 = mul i64 4, 1
  %label7 = call i8* @malloc(i64 %label6)
  %label8 = bitcast i8* %label7 to i32**
  store i32** %label8, i32*** %label2

  ; assignment

  ; array_position
  %label9 = load i32**, i32*** %label2
  %label10 = getelementptr inbounds i32*, i32** %label9, i64 0
  %label11 = load i32*, i32** %label1
  store i32* %label11, i32** %label10
  ret void
}



