declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label1 = alloca i32*
  %label2 = alloca i32*
  %label3 = alloca i32*
  %label4 = alloca float*
  %label5 = alloca i32
  %label6 = alloca i32
  %label7 = alloca i32
  %label8 = alloca float

  ; assignment
  %label9 = mul i64 4, 2
  %label10 = call i8* @malloc(i64 %label9)
  %label11 = bitcast i8* %label10 to i32*
  store i32* %label11, i32** %label1

  ; assignment

  ; array_position
  %label12 = load i32*, i32** %label1
  %label13 = getelementptr inbounds i32, i32* %label12, i64 0
  store i32 1, i32* %label13

  ; assignment

  ; array_position
  %label14 = load i32*, i32** %label1
  %label15 = getelementptr inbounds i32, i32* %label14, i64 1
  store i32 0, i32* %label15

  ; assignment
  %label16 = mul i64 4, 2
  %label17 = call i8* @malloc(i64 %label16)
  %label18 = bitcast i8* %label17 to i32*
  store i32* %label18, i32** %label2

  ; assignment

  ; array_position
  %label19 = load i32*, i32** %label2
  %label20 = getelementptr inbounds i32, i32* %label19, i64 0
  store i32 97, i32* %label20

  ; assignment

  ; array_position
  %label21 = load i32*, i32** %label2
  %label22 = getelementptr inbounds i32, i32* %label21, i64 1
  store i32 98, i32* %label22

  ; assignment
  %label23 = mul i64 4, 2
  %label24 = call i8* @malloc(i64 %label23)
  %label25 = bitcast i8* %label24 to i32*
  store i32* %label25, i32** %label3

  ; assignment

  ; array_position
  %label26 = load i32*, i32** %label3
  %label27 = getelementptr inbounds i32, i32* %label26, i64 0
  store i32 1, i32* %label27

  ; assignment

  ; array_position
  %label28 = load i32*, i32** %label3
  %label29 = getelementptr inbounds i32, i32* %label28, i64 1
  store i32 2, i32* %label29

  ; assignment
  %label30 = mul i64 4, 2
  %label31 = call i8* @malloc(i64 %label30)
  %label32 = bitcast i8* %label31 to float*
  store float* %label32, float** %label4

  ; assignment

  ; array_position
  %label33 = load float*, float** %label4
  %label34 = getelementptr inbounds float, float* %label33, i64 0
  %label35 = fptrunc double 1.000000 to float
  store float %label35, float* %label34

  ; assignment

  ; array_position
  %label36 = load float*, float** %label4
  %label37 = getelementptr inbounds float, float* %label36, i64 1
  %label38 = fptrunc double 1.500000 to float
  store float %label38, float* %label37

  ; assignment

  ; array_position
  %label39 = load i32*, i32** %label1
  %label40 = getelementptr inbounds i32, i32* %label39, i64 0
  store i32 %label40, i32* %label5

  ; assignment

  ; array_position
  %label41 = load i32*, i32** %label2
  %label42 = getelementptr inbounds i32, i32* %label41, i64 1
  store i32 %label42, i32* %label6

  ; assignment

  ; array_position
  %label43 = load i32*, i32** %label3
  %label44 = getelementptr inbounds i32, i32* %label43, i64 0
  store i32 %label44, i32* %label7

  ; assignment

  ; array_position
  %label45 = load float*, float** %label4
  %label46 = getelementptr inbounds float, float* %label45, i64 1
  store float %label46, float* %label8
  ret void
}



