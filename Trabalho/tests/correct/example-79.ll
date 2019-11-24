declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label1 = alloca i32*
  %label2 = mul i64 4, 3
  %label3 = call i8* @malloc(i64 %label2)
  %label4 = bitcast i8* %label3 to i32*
  store i32* %label4, i32** %label1
  %label5 = load i32*, i32** %label1
  %label6 = getelementptr inbounds i32, i32* %label5, i32 0
  store i32 111, i32* %label6
  %label7 = load i32*, i32** %label1
  %label8 = getelementptr inbounds i32, i32* %label7, i32 1
  store i32 105, i32* %label8
  %label9 = load i32*, i32** %label1
  %label10 = getelementptr inbounds i32, i32* %label9, i32 2
  store i32 0, i32* %label10
  %label11 = load i32*, i32** %label1
  %label15 = alloca i32
  store i32 0, i32* %label15
  br label %label12

  label12:
  %label16 = load i32, i32* %label15
  %label17 = getelementptr inbounds i32, i32* %label11, i32 %label16
  %label18 = load i32, i32* %label17
  %label19 = icmp eq i32 %label18, 0
  br i1 %label19, label %label14, label %label13

  label13:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label18)
  %label20 = add i32 1, %label16
  store i32 %label20, i32* %label15
  br label %label12

  label14:
  ret void
}



