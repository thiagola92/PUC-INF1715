declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {

  ;5

  %label1 = alloca i32*
  %label2 = mul i64 4, 5
  %label3 = call i8* @malloc(i64 %label2)
  %label4 = bitcast i8* %label3 to i32*
  store i32* %label4, i32** %label1
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
  store i32 10, i32* %label12
  %label13 = load i32*, i32** %label1
  %label14 = getelementptr inbounds i32, i32* %label13, i32 4
  store i32 0, i32* %label14
  %label18 = alloca i32
  store i32 0, i32* %label18
  br label %label15

  label15:
  %label19 = load i32, i32* %label18
  %label20 = getelementptr inbounds i32, i32* %label4, i32 %label19
  %label21 = load i32, i32* %label20
  %label22 = icmp eq i32 %label21, 0
  br i1 %label22, label %label17, label %label16

  label16:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label21)
  %label23 = add i32 1, %label19
  store i32 %label23, i32* %label18
  br label %label15

  label17:

  ;17

  %label24 = alloca i32*
  %label25 = mul i64 4, 17
  %label26 = call i8* @malloc(i64 %label25)
  %label27 = bitcast i8* %label26 to i32*
  store i32* %label27, i32** %label24
  %label28 = load i32*, i32** %label24
  %label29 = getelementptr inbounds i32, i32* %label28, i32 0
  store i32 116, i32* %label29
  %label30 = load i32*, i32** %label24
  %label31 = getelementptr inbounds i32, i32* %label30, i32 1
  store i32 101, i32* %label31
  %label32 = load i32*, i32** %label24
  %label33 = getelementptr inbounds i32, i32* %label32, i32 2
  store i32 110, i32* %label33
  %label34 = load i32*, i32** %label24
  %label35 = getelementptr inbounds i32, i32* %label34, i32 3
  store i32 116, i32* %label35
  %label36 = load i32*, i32** %label24
  %label37 = getelementptr inbounds i32, i32* %label36, i32 4
  store i32 97, i32* %label37
  %label38 = load i32*, i32** %label24
  %label39 = getelementptr inbounds i32, i32* %label38, i32 5
  store i32 32, i32* %label39
  %label40 = load i32*, i32** %label24
  %label41 = getelementptr inbounds i32, i32* %label40, i32 6
  store i32 110, i32* %label41
  %label42 = load i32*, i32** %label24
  %label43 = getelementptr inbounds i32, i32* %label42, i32 7
  store i32 97, i32* %label43
  %label44 = load i32*, i32** %label24
  %label45 = getelementptr inbounds i32, i32* %label44, i32 8
  store i32 111, i32* %label45
  %label46 = load i32*, i32** %label24
  %label47 = getelementptr inbounds i32, i32* %label46, i32 9
  store i32 32, i32* %label47
  %label48 = load i32*, i32** %label24
  %label49 = getelementptr inbounds i32, i32* %label48, i32 10
  store i32 109, i32* %label49
  %label50 = load i32*, i32** %label24
  %label51 = getelementptr inbounds i32, i32* %label50, i32 11
  store i32 101, i32* %label51
  %label52 = load i32*, i32** %label24
  %label53 = getelementptr inbounds i32, i32* %label52, i32 12
  store i32 32, i32* %label53
  %label54 = load i32*, i32** %label24
  %label55 = getelementptr inbounds i32, i32* %label54, i32 13
  store i32 99, i32* %label55
  %label56 = load i32*, i32** %label24
  %label57 = getelementptr inbounds i32, i32* %label56, i32 14
  store i32 111, i32* %label57
  %label58 = load i32*, i32** %label24
  %label59 = getelementptr inbounds i32, i32* %label58, i32 15
  store i32 114, i32* %label59
  %label60 = load i32*, i32** %label24
  %label61 = getelementptr inbounds i32, i32* %label60, i32 16
  store i32 0, i32* %label61
  %label65 = alloca i32
  store i32 0, i32* %label65
  br label %label62

  label62:
  %label66 = load i32, i32* %label65
  %label67 = getelementptr inbounds i32, i32* %label27, i32 %label66
  %label68 = load i32, i32* %label67
  %label69 = icmp eq i32 %label68, 0
  br i1 %label69, label %label64, label %label63

  label63:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label68)
  %label70 = add i32 1, %label66
  store i32 %label70, i32* %label65
  br label %label62

  label64:
  ret void
}



