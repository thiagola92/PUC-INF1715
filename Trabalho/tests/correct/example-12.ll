declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_0 = alloca i32
  %label_1 = alloca i32
  %label_2 = alloca i32
  %label_3 = alloca float
  %label_4 = alloca i32*
  %label_5 = alloca i32*
  store i32 1, i32* %label_0
  store i32 0, i32* %label_0
  store i32 115, i32* %label_1
  store i32 1, i32* %label_2
  %label_6 = add i32 1, 1
  store i32 %label_6, i32* %label_2
  %label_7 = add i32 1, 99999
  store i32 %label_7, i32* %label_2
  %label_8 = add i32 0, 1
  store i32 %label_8, i32* %label_2
  %label_9 = add i32 0, 0
  store i32 %label_9, i32* %label_2
  %label_10 = fptrunc double 1.000000 to float
  store float %label_10, float* %label_3
  %label_11 = fptrunc double 1.000000 to float
  %label_12 = fptrunc double 1.000000 to float
  %label_13 = fadd float %label_11, %label_12
  store float %label_13, float* %label_3
  %label_14 = fptrunc double 1.000000 to float
  %label_15 = fptrunc double 99999.000000 to float
  %label_16 = fadd float %label_14, %label_15
  store float %label_16, float* %label_3
  %label_17 = fptrunc double 0.000000 to float
  %label_18 = fptrunc double 1.000000 to float
  %label_19 = fadd float %label_17, %label_18
  store float %label_19, float* %label_3
  %label_20 = fptrunc double 0.000000 to float
  %label_21 = fptrunc double 0.000000 to float
  %label_22 = fadd float %label_20, %label_21
  store float %label_22, float* %label_3
  %label_23 = fptrunc double 1.500000 to float
  %label_24 = fptrunc double 1.500000 to float
  %label_25 = fadd float %label_23, %label_24
  store float %label_25, float* %label_3
  %label_26 = fptrunc double 1.000000 to float
  %label_27 = fptrunc double 0.500000 to float
  %label_28 = fadd float %label_26, %label_27
  store float %label_28, float* %label_3
  %label_29 = fptrunc double 0.000000 to float
  %label_30 = fptrunc double 1.000000 to float
  %label_31 = fadd float %label_29, %label_30
  store float %label_31, float* %label_3
  %label_32 = mul i64 4, 2
  %label_33 = call i8* @malloc(i64 %label_32)
  %label_34 = bitcast i8* %label_33 to i32*
  store i32* %label_34, i32** %label_4
  %label_35 = load i32*, i32** %label_4
  %label_36 = getelementptr inbounds i32, i32* %label_35, i32 0
  store i32 1, i32* %label_36
  %label_37 = load i32*, i32** %label_4
  %label_38 = getelementptr inbounds i32, i32* %label_37, i32 1
  store i32 0, i32* %label_38
  %label_39 = alloca i32*
  %label_40 = mul i64 4, 12
  %label_41 = call i8* @malloc(i64 %label_40)
  %label_42 = bitcast i8* %label_41 to i32*
  store i32* %label_42, i32** %label_39
  %label_43 = load i32*, i32** %label_39
  %label_44 = getelementptr inbounds i32, i32* %label_43, i32 0
  store i32 104, i32* %label_44
  %label_45 = load i32*, i32** %label_39
  %label_46 = getelementptr inbounds i32, i32* %label_45, i32 1
  store i32 101, i32* %label_46
  %label_47 = load i32*, i32** %label_39
  %label_48 = getelementptr inbounds i32, i32* %label_47, i32 2
  store i32 108, i32* %label_48
  %label_49 = load i32*, i32** %label_39
  %label_50 = getelementptr inbounds i32, i32* %label_49, i32 3
  store i32 108, i32* %label_50
  %label_51 = load i32*, i32** %label_39
  %label_52 = getelementptr inbounds i32, i32* %label_51, i32 4
  store i32 111, i32* %label_52
  %label_53 = load i32*, i32** %label_39
  %label_54 = getelementptr inbounds i32, i32* %label_53, i32 5
  store i32 32, i32* %label_54
  %label_55 = load i32*, i32** %label_39
  %label_56 = getelementptr inbounds i32, i32* %label_55, i32 6
  store i32 119, i32* %label_56
  %label_57 = load i32*, i32** %label_39
  %label_58 = getelementptr inbounds i32, i32* %label_57, i32 7
  store i32 111, i32* %label_58
  %label_59 = load i32*, i32** %label_39
  %label_60 = getelementptr inbounds i32, i32* %label_59, i32 8
  store i32 114, i32* %label_60
  %label_61 = load i32*, i32** %label_39
  %label_62 = getelementptr inbounds i32, i32* %label_61, i32 9
  store i32 108, i32* %label_62
  %label_63 = load i32*, i32** %label_39
  %label_64 = getelementptr inbounds i32, i32* %label_63, i32 10
  store i32 100, i32* %label_64
  %label_65 = load i32*, i32** %label_39
  %label_66 = getelementptr inbounds i32, i32* %label_65, i32 11
  store i32 0, i32* %label_66
  store i32* %label_42, i32** %label_5
  %label_67 = alloca i32*
  %label_68 = mul i64 4, 14
  %label_69 = call i8* @malloc(i64 %label_68)
  %label_70 = bitcast i8* %label_69 to i32*
  store i32* %label_70, i32** %label_67
  %label_71 = load i32*, i32** %label_67
  %label_72 = getelementptr inbounds i32, i32* %label_71, i32 0
  store i32 34, i32* %label_72
  %label_73 = load i32*, i32** %label_67
  %label_74 = getelementptr inbounds i32, i32* %label_73, i32 1
  store i32 104, i32* %label_74
  %label_75 = load i32*, i32** %label_67
  %label_76 = getelementptr inbounds i32, i32* %label_75, i32 2
  store i32 101, i32* %label_76
  %label_77 = load i32*, i32** %label_67
  %label_78 = getelementptr inbounds i32, i32* %label_77, i32 3
  store i32 108, i32* %label_78
  %label_79 = load i32*, i32** %label_67
  %label_80 = getelementptr inbounds i32, i32* %label_79, i32 4
  store i32 108, i32* %label_80
  %label_81 = load i32*, i32** %label_67
  %label_82 = getelementptr inbounds i32, i32* %label_81, i32 5
  store i32 111, i32* %label_82
  %label_83 = load i32*, i32** %label_67
  %label_84 = getelementptr inbounds i32, i32* %label_83, i32 6
  store i32 10, i32* %label_84
  %label_85 = load i32*, i32** %label_67
  %label_86 = getelementptr inbounds i32, i32* %label_85, i32 7
  store i32 119, i32* %label_86
  %label_87 = load i32*, i32** %label_67
  %label_88 = getelementptr inbounds i32, i32* %label_87, i32 8
  store i32 111, i32* %label_88
  %label_89 = load i32*, i32** %label_67
  %label_90 = getelementptr inbounds i32, i32* %label_89, i32 9
  store i32 114, i32* %label_90
  %label_91 = load i32*, i32** %label_67
  %label_92 = getelementptr inbounds i32, i32* %label_91, i32 10
  store i32 108, i32* %label_92
  %label_93 = load i32*, i32** %label_67
  %label_94 = getelementptr inbounds i32, i32* %label_93, i32 11
  store i32 100, i32* %label_94
  %label_95 = load i32*, i32** %label_67
  %label_96 = getelementptr inbounds i32, i32* %label_95, i32 12
  store i32 34, i32* %label_96
  %label_97 = load i32*, i32** %label_67
  %label_98 = getelementptr inbounds i32, i32* %label_97, i32 13
  store i32 0, i32* %label_98
  store i32* %label_70, i32** %label_5
  ret void
}



