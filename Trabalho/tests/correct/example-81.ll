declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

@.print.string = constant [3 x i8] c"%s\00"

define void @main() {
  %label1 = alloca i32*
  %label2 = mul i64 4, 18
  %label3 = call i8* @malloc(i64 %label2)
  %label4 = bitcast i8* %label3 to i32*

  ; assignment
  store i32* %label4, i32** %label1
  %label5 = load i32*, i32** %label1
  %label6 = getelementptr inbounds i32, i32* %label5, i32 0

  ; assignment
  store i32 101, i32* %label6
  %label7 = load i32*, i32** %label1
  %label8 = getelementptr inbounds i32, i32* %label7, i32 1

  ; assignment
  store i32 115, i32* %label8
  %label9 = load i32*, i32** %label1
  %label10 = getelementptr inbounds i32, i32* %label9, i32 2

  ; assignment
  store i32 116, i32* %label10
  %label11 = load i32*, i32** %label1
  %label12 = getelementptr inbounds i32, i32* %label11, i32 3

  ; assignment
  store i32 111, i32* %label12
  %label13 = load i32*, i32** %label1
  %label14 = getelementptr inbounds i32, i32* %label13, i32 4

  ; assignment
  store i32 117, i32* %label14
  %label15 = load i32*, i32** %label1
  %label16 = getelementptr inbounds i32, i32* %label15, i32 5

  ; assignment
  store i32 32, i32* %label16
  %label17 = load i32*, i32** %label1
  %label18 = getelementptr inbounds i32, i32* %label17, i32 6

  ; assignment
  store i32 101, i32* %label18
  %label19 = load i32*, i32** %label1
  %label20 = getelementptr inbounds i32, i32* %label19, i32 7

  ; assignment
  store i32 115, i32* %label20
  %label21 = load i32*, i32** %label1
  %label22 = getelementptr inbounds i32, i32* %label21, i32 8

  ; assignment
  store i32 99, i32* %label22
  %label23 = load i32*, i32** %label1
  %label24 = getelementptr inbounds i32, i32* %label23, i32 9

  ; assignment
  store i32 114, i32* %label24
  %label25 = load i32*, i32** %label1
  %label26 = getelementptr inbounds i32, i32* %label25, i32 10

  ; assignment
  store i32 101, i32* %label26
  %label27 = load i32*, i32** %label1
  %label28 = getelementptr inbounds i32, i32* %label27, i32 11

  ; assignment
  store i32 118, i32* %label28
  %label29 = load i32*, i32** %label1
  %label30 = getelementptr inbounds i32, i32* %label29, i32 12

  ; assignment
  store i32 101, i32* %label30
  %label31 = load i32*, i32** %label1
  %label32 = getelementptr inbounds i32, i32* %label31, i32 13

  ; assignment
  store i32 110, i32* %label32
  %label33 = load i32*, i32** %label1
  %label34 = getelementptr inbounds i32, i32* %label33, i32 14

  ; assignment
  store i32 100, i32* %label34
  %label35 = load i32*, i32** %label1
  %label36 = getelementptr inbounds i32, i32* %label35, i32 15

  ; assignment
  store i32 111, i32* %label36
  %label37 = load i32*, i32** %label1
  %label38 = getelementptr inbounds i32, i32* %label37, i32 16

  ; assignment
  store i32 10, i32* %label38
  %label39 = load i32*, i32** %label1
  %label40 = getelementptr inbounds i32, i32* %label39, i32 17

  ; assignment
  store i32 0, i32* %label40

  ; print
  %label41 = load i32*, i32** %label1
  %label45 = alloca i32
  store i32 0, i32* %label45
  br label %label42

  label42:
  %label46 = load i32, i32* %label45
  %label47 = getelementptr inbounds i32, i32* %label41, i32 %label46
  %label48 = load i32, i32* %label47
  %label49 = icmp eq i32 %label48, 0
  br i1 %label49, label %label44, label %label43

  label43:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.string, i32 0, i32 0), i32* %label47)
  %label50 = add i32 1, %label46
  store i32 %label50, i32* %label45
  br label %label42

  label44:
  ret void
}



