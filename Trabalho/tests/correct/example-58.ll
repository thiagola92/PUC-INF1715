declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

@.print.string = constant [3 x i8] c"%s\00"

define i32* @nome() {

  ; string
  %label1 = alloca i32*
  %label2 = mul i64 4, 4
  %label3 = call i8* @malloc(i64 %label2)
  %label4 = bitcast i8* %label3 to i32*
  store i32* %label4, i32** %label1

  ; char
  %label5 = load i32*, i32** %label1
  %label6 = getelementptr inbounds i32, i32* %label5, i32 0
  store i32 99, i32* %label6
  %label7 = load i32*, i32** %label1
  %label8 = getelementptr inbounds i32, i32* %label7, i32 1
  store i32 111, i32* %label8
  %label9 = load i32*, i32** %label1
  %label10 = getelementptr inbounds i32, i32* %label9, i32 2
  store i32 101, i32* %label10
  %label11 = load i32*, i32** %label1
  %label12 = getelementptr inbounds i32, i32* %label11, i32 3
  store i32 0, i32* %label12
  ret i32* %label4
}

define void @main() {

  ; print
  %label1 = call i32* @nome()
  %label5 = alloca i32
  store i32 0, i32* %label5
  br label %label2

  label2:
  %label6 = load i32, i32* %label5
  %label7 = getelementptr inbounds i32, i32* %label1, i32 %label6
  %label8 = load i32, i32* %label7
  %label9 = icmp eq i32 %label8, 0
  br i1 %label9, label %label4, label %label3

  label3:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.string, i32 0, i32 0), i32* %label7)
  %label10 = add i32 1, %label6
  store i32 %label10, i32* %label5
  br label %label2

  label4:
  ret void
}



