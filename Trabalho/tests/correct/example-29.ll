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
  %label6 = getelementptr inbounds i32, i32* %label5, i32 0
  store i32 1, i32* %label6

  ; pritn

  ; expression_array_position
  %label7 = load i32*, i32** %label1
  %label8 = getelementptr inbounds i32, i32* %label7, i32 0
  %label9 = load i32, i32* %label8
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label9)

  ; pritn
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 10)

  ; pritn

  ; expression_array_position
  %label10 = load i32*, i32** %label1
  %label11 = getelementptr inbounds i32, i32* %label10, i32 0
  %label12 = load i32, i32* %label11
  %label13 = sub i32 %label12, 1
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label13)

  ; pritn
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 10)

  ; pritn

  ; expression_array_position
  %label14 = load i32*, i32** %label1
  %label15 = sub i32 1, 1
  %label16 = getelementptr inbounds i32, i32* %label14, i32 %label15
  %label17 = load i32, i32* %label16
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label17)

  ; pritn
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 10)

  ; pritn

  ; expression_array_position
  %label18 = load i32*, i32** %label1

  ; expression_array_position
  %label19 = load i32*, i32** %label1
  %label20 = getelementptr inbounds i32, i32* %label19, i32 0
  %label21 = load i32, i32* %label20
  %label22 = sub i32 %label21, 1
  %label23 = getelementptr inbounds i32, i32* %label18, i32 %label22
  %label24 = load i32, i32* %label23
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label24)

  ; pritn
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 10)

  ; assignment

  ; array_position
  %label25 = load i32*, i32** %label1

  ; expression_array_position
  %label26 = load i32*, i32** %label1
  %label27 = getelementptr inbounds i32, i32* %label26, i32 0
  %label28 = load i32, i32* %label27
  %label29 = getelementptr inbounds i32, i32* %label25, i32 %label28

  ; expression_array_position
  %label30 = load i32*, i32** %label1

  ; expression_array_position
  %label31 = load i32*, i32** %label1
  %label32 = getelementptr inbounds i32, i32* %label31, i32 0
  %label33 = load i32, i32* %label32
  %label34 = sub i32 %label33, 1
  %label35 = getelementptr inbounds i32, i32* %label30, i32 %label34
  %label36 = load i32, i32* %label35
  store i32 %label36, i32* %label29

  ; pritn

  ; expression_array_position
  %label37 = load i32*, i32** %label1

  ; expression_array_position
  %label38 = load i32*, i32** %label1
  %label39 = getelementptr inbounds i32, i32* %label38, i32 0
  %label40 = load i32, i32* %label39
  %label41 = getelementptr inbounds i32, i32* %label37, i32 %label40
  %label42 = load i32, i32* %label41
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label42)

  ; pritn
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 10)
  ret void
}



