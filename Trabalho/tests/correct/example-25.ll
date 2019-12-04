declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_0 = alloca i32*
  %label_1 = alloca i32*
  %label_2 = alloca i32*
  %label_3 = alloca float*
  %label_4 = alloca i32
  %label_5 = alloca i32
  %label_6 = alloca i32
  %label_7 = alloca float
  %label_8 = mul i64 4, 2
  %label_9 = call i8* @malloc(i64 %label_8)
  %label_10 = bitcast i8* %label_9 to i32*
  store i32* %label_10, i32** %label_0
  %label_11 = load i32*, i32** %label_0
  %label_12 = getelementptr inbounds i32, i32* %label_11, i32 0
  store i32 1, i32* %label_12
  %label_13 = load i32*, i32** %label_0
  %label_14 = getelementptr inbounds i32, i32* %label_13, i32 1
  store i32 0, i32* %label_14
  %label_15 = mul i64 4, 2
  %label_16 = call i8* @malloc(i64 %label_15)
  %label_17 = bitcast i8* %label_16 to i32*
  store i32* %label_17, i32** %label_1
  %label_18 = load i32*, i32** %label_1
  %label_19 = getelementptr inbounds i32, i32* %label_18, i32 0
  store i32 97, i32* %label_19
  %label_20 = load i32*, i32** %label_1
  %label_21 = getelementptr inbounds i32, i32* %label_20, i32 1
  store i32 98, i32* %label_21
  %label_22 = mul i64 4, 2
  %label_23 = call i8* @malloc(i64 %label_22)
  %label_24 = bitcast i8* %label_23 to i32*
  store i32* %label_24, i32** %label_2
  %label_25 = load i32*, i32** %label_2
  %label_26 = getelementptr inbounds i32, i32* %label_25, i32 0
  store i32 1, i32* %label_26
  %label_27 = load i32*, i32** %label_2
  %label_28 = getelementptr inbounds i32, i32* %label_27, i32 1
  store i32 2, i32* %label_28
  %label_29 = mul i64 4, 2
  %label_30 = call i8* @malloc(i64 %label_29)
  %label_31 = bitcast i8* %label_30 to float*
  store float* %label_31, float** %label_3
  %label_32 = load float*, float** %label_3
  %label_33 = getelementptr inbounds float, float* %label_32, i32 0
  %label_34 = fptrunc double 1.000000 to float
  store float %label_34, float* %label_33
  %label_35 = load float*, float** %label_3
  %label_36 = getelementptr inbounds float, float* %label_35, i32 1
  %label_37 = fptrunc double 1.500000 to float
  store float %label_37, float* %label_36
  %label_38 = load i32*, i32** %label_0
  %label_39 = getelementptr inbounds i32, i32* %label_38, i32 0
  %label_40 = load i32, i32* %label_39
  store i32 %label_40, i32* %label_4
  %label_41 = load i32*, i32** %label_1
  %label_42 = getelementptr inbounds i32, i32* %label_41, i32 1
  %label_43 = load i32, i32* %label_42
  store i32 %label_43, i32* %label_5
  %label_44 = load i32*, i32** %label_2
  %label_45 = getelementptr inbounds i32, i32* %label_44, i32 0
  %label_46 = load i32, i32* %label_45
  store i32 %label_46, i32* %label_6
  %label_47 = load float*, float** %label_3
  %label_48 = getelementptr inbounds float, float* %label_47, i32 1
  %label_49 = load float, float* %label_48
  store float %label_49, float* %label_7
  ret void
}



