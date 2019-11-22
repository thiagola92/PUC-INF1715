declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

@.print.string = constant [3 x i8] c"%s\00"

define void @main() {
  %label1 = alloca i32*
  %label2 = alloca i32*
  %label3 = alloca i32*
  %label4 = alloca float*
  %label5 = alloca i32
  %label6 = alloca i32
  %label7 = alloca i32
  %label8 = alloca float
  %label9 = mul i64 4, 2
  %label10 = call i8* @malloc(i64 %label9)
  %label11 = bitcast i8* %label10 to i32*

  ; assignment
  store i32* %label11, i32** %label1
  %label12 = load i32*, i32** %label1
  %label13 = getelementptr inbounds i32, i32* %label12, i32 0

  ; assignment
  store i32 1, i32* %label13
  %label14 = load i32*, i32** %label1
  %label15 = getelementptr inbounds i32, i32* %label14, i32 1

  ; assignment
  store i32 0, i32* %label15
  %label16 = mul i64 4, 2
  %label17 = call i8* @malloc(i64 %label16)
  %label18 = bitcast i8* %label17 to i32*

  ; assignment
  store i32* %label18, i32** %label2
  %label19 = load i32*, i32** %label2
  %label20 = getelementptr inbounds i32, i32* %label19, i32 0

  ; assignment
  store i32 97, i32* %label20
  %label21 = load i32*, i32** %label2
  %label22 = getelementptr inbounds i32, i32* %label21, i32 1

  ; assignment
  store i32 98, i32* %label22
  %label23 = mul i64 4, 2
  %label24 = call i8* @malloc(i64 %label23)
  %label25 = bitcast i8* %label24 to i32*

  ; assignment
  store i32* %label25, i32** %label3
  %label26 = load i32*, i32** %label3
  %label27 = getelementptr inbounds i32, i32* %label26, i32 0

  ; assignment
  store i32 1, i32* %label27
  %label28 = load i32*, i32** %label3
  %label29 = getelementptr inbounds i32, i32* %label28, i32 1

  ; assignment
  store i32 2, i32* %label29
  %label30 = mul i64 4, 2
  %label31 = call i8* @malloc(i64 %label30)
  %label32 = bitcast i8* %label31 to float*

  ; assignment
  store float* %label32, float** %label4
  %label33 = load float*, float** %label4
  %label34 = getelementptr inbounds float, float* %label33, i32 0
  %label35 = fptrunc double 1.000000 to float

  ; assignment
  store float %label35, float* %label34
  %label36 = load float*, float** %label4
  %label37 = getelementptr inbounds float, float* %label36, i32 1
  %label38 = fptrunc double 1.500000 to float

  ; assignment
  store float %label38, float* %label37
  %label39 = load i32*, i32** %label1
  %label40 = getelementptr inbounds i32, i32* %label39, i32 0
  %label41 = load i32, i32* %label40

  ; assignment
  store i32 %label41, i32* %label5
  %label42 = load i32*, i32** %label2
  %label43 = getelementptr inbounds i32, i32* %label42, i32 1
  %label44 = load i32, i32* %label43

  ; assignment
  store i32 %label44, i32* %label6
  %label45 = load i32*, i32** %label3
  %label46 = getelementptr inbounds i32, i32* %label45, i32 0
  %label47 = load i32, i32* %label46

  ; assignment
  store i32 %label47, i32* %label7
  %label48 = load float*, float** %label4
  %label49 = getelementptr inbounds float, float* %label48, i32 1
  %label50 = load float, float* %label49

  ; assignment
  store float %label50, float* %label8
  ret void
}



