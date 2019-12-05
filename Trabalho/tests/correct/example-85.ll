declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_0 = alloca i32
  %label_1 = alloca i32
  %label_2 = alloca i32
  %label_3 = alloca i32

  ; and
  %label_4 = icmp ne i32 1, 0
  br i1 %label_4, label %label_7, label %label_6

  label_7:
  %label_8 = icmp ne i32 1, 0
  br i1 %label_8, label %label_5, label %label_6

  label_5:
  br label %label_10

  label_6:
  br label %label_10

  label_10:
  %label_11 = phi i1 [ true, %label_5 ], [ false, %label_6 ]
  %label_9 = zext i1 %label_11 to i32
  store i32 %label_9, i32* %label_0

  ; and
  %label_12 = icmp ne i32 0, 0
  br i1 %label_12, label %label_15, label %label_14

  label_15:
  %label_16 = icmp ne i32 0, 0
  br i1 %label_16, label %label_13, label %label_14

  label_13:
  br label %label_18

  label_14:
  br label %label_18

  label_18:
  %label_19 = phi i1 [ true, %label_13 ], [ false, %label_14 ]
  %label_17 = zext i1 %label_19 to i32
  store i32 %label_17, i32* %label_1

  ; and
  %label_20 = icmp ne i32 1, 0
  br i1 %label_20, label %label_23, label %label_22

  label_23:
  %label_24 = icmp ne i32 0, 0
  br i1 %label_24, label %label_21, label %label_22

  label_21:
  br label %label_26

  label_22:
  br label %label_26

  label_26:
  %label_27 = phi i1 [ true, %label_21 ], [ false, %label_22 ]
  %label_25 = zext i1 %label_27 to i32
  store i32 %label_25, i32* %label_2

  ; and
  %label_28 = icmp ne i32 0, 0
  br i1 %label_28, label %label_31, label %label_30

  label_31:
  %label_32 = icmp ne i32 1, 0
  br i1 %label_32, label %label_29, label %label_30

  label_29:
  br label %label_34

  label_30:
  br label %label_34

  label_34:
  %label_35 = phi i1 [ true, %label_29 ], [ false, %label_30 ]
  %label_33 = zext i1 %label_35 to i32
  store i32 %label_33, i32* %label_3
  %label_36 = load i32, i32* %label_0
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label_36)

  ; string
  %label_37 = alloca i32*
  %label_38 = mul i64 4, 2
  %label_39 = call i8* @malloc(i64 %label_38)
  %label_40 = bitcast i8* %label_39 to i32*
  store i32* %label_40, i32** %label_37
  %label_41 = load i32*, i32** %label_37
  %label_42 = getelementptr inbounds i32, i32* %label_41, i32 0
  store i32 10, i32* %label_42
  %label_43 = load i32*, i32** %label_37
  %label_44 = getelementptr inbounds i32, i32* %label_43, i32 1
  store i32 0, i32* %label_44

  ; print string
  %label_48 = alloca i32
  store i32 0, i32* %label_48
  br label %label_45

  label_45:
  %label_49 = load i32, i32* %label_48
  %label_50 = getelementptr inbounds i32, i32* %label_40, i32 %label_49
  %label_51 = load i32, i32* %label_50
  %label_52 = icmp eq i32 %label_51, 0
  br i1 %label_52, label %label_47, label %label_46

  label_46:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label_51)
  %label_53 = add i32 1, %label_49
  store i32 %label_53, i32* %label_48
  br label %label_45

  label_47:
  %label_54 = load i32, i32* %label_1
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label_54)

  ; string
  %label_55 = alloca i32*
  %label_56 = mul i64 4, 2
  %label_57 = call i8* @malloc(i64 %label_56)
  %label_58 = bitcast i8* %label_57 to i32*
  store i32* %label_58, i32** %label_55
  %label_59 = load i32*, i32** %label_55
  %label_60 = getelementptr inbounds i32, i32* %label_59, i32 0
  store i32 10, i32* %label_60
  %label_61 = load i32*, i32** %label_55
  %label_62 = getelementptr inbounds i32, i32* %label_61, i32 1
  store i32 0, i32* %label_62

  ; print string
  %label_66 = alloca i32
  store i32 0, i32* %label_66
  br label %label_63

  label_63:
  %label_67 = load i32, i32* %label_66
  %label_68 = getelementptr inbounds i32, i32* %label_58, i32 %label_67
  %label_69 = load i32, i32* %label_68
  %label_70 = icmp eq i32 %label_69, 0
  br i1 %label_70, label %label_65, label %label_64

  label_64:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label_69)
  %label_71 = add i32 1, %label_67
  store i32 %label_71, i32* %label_66
  br label %label_63

  label_65:
  %label_72 = load i32, i32* %label_2
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label_72)

  ; string
  %label_73 = alloca i32*
  %label_74 = mul i64 4, 2
  %label_75 = call i8* @malloc(i64 %label_74)
  %label_76 = bitcast i8* %label_75 to i32*
  store i32* %label_76, i32** %label_73
  %label_77 = load i32*, i32** %label_73
  %label_78 = getelementptr inbounds i32, i32* %label_77, i32 0
  store i32 10, i32* %label_78
  %label_79 = load i32*, i32** %label_73
  %label_80 = getelementptr inbounds i32, i32* %label_79, i32 1
  store i32 0, i32* %label_80

  ; print string
  %label_84 = alloca i32
  store i32 0, i32* %label_84
  br label %label_81

  label_81:
  %label_85 = load i32, i32* %label_84
  %label_86 = getelementptr inbounds i32, i32* %label_76, i32 %label_85
  %label_87 = load i32, i32* %label_86
  %label_88 = icmp eq i32 %label_87, 0
  br i1 %label_88, label %label_83, label %label_82

  label_82:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label_87)
  %label_89 = add i32 1, %label_85
  store i32 %label_89, i32* %label_84
  br label %label_81

  label_83:
  %label_90 = load i32, i32* %label_3
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label_90)

  ; string
  %label_91 = alloca i32*
  %label_92 = mul i64 4, 17
  %label_93 = call i8* @malloc(i64 %label_92)
  %label_94 = bitcast i8* %label_93 to i32*
  store i32* %label_94, i32** %label_91
  %label_95 = load i32*, i32** %label_91
  %label_96 = getelementptr inbounds i32, i32* %label_95, i32 0
  store i32 10, i32* %label_96
  %label_97 = load i32*, i32** %label_91
  %label_98 = getelementptr inbounds i32, i32* %label_97, i32 1
  store i32 61, i32* %label_98
  %label_99 = load i32*, i32** %label_91
  %label_100 = getelementptr inbounds i32, i32* %label_99, i32 2
  store i32 61, i32* %label_100
  %label_101 = load i32*, i32** %label_91
  %label_102 = getelementptr inbounds i32, i32* %label_101, i32 3
  store i32 61, i32* %label_102
  %label_103 = load i32*, i32** %label_91
  %label_104 = getelementptr inbounds i32, i32* %label_103, i32 4
  store i32 61, i32* %label_104
  %label_105 = load i32*, i32** %label_91
  %label_106 = getelementptr inbounds i32, i32* %label_105, i32 5
  store i32 61, i32* %label_106
  %label_107 = load i32*, i32** %label_91
  %label_108 = getelementptr inbounds i32, i32* %label_107, i32 6
  store i32 61, i32* %label_108
  %label_109 = load i32*, i32** %label_91
  %label_110 = getelementptr inbounds i32, i32* %label_109, i32 7
  store i32 61, i32* %label_110
  %label_111 = load i32*, i32** %label_91
  %label_112 = getelementptr inbounds i32, i32* %label_111, i32 8
  store i32 61, i32* %label_112
  %label_113 = load i32*, i32** %label_91
  %label_114 = getelementptr inbounds i32, i32* %label_113, i32 9
  store i32 61, i32* %label_114
  %label_115 = load i32*, i32** %label_91
  %label_116 = getelementptr inbounds i32, i32* %label_115, i32 10
  store i32 61, i32* %label_116
  %label_117 = load i32*, i32** %label_91
  %label_118 = getelementptr inbounds i32, i32* %label_117, i32 11
  store i32 61, i32* %label_118
  %label_119 = load i32*, i32** %label_91
  %label_120 = getelementptr inbounds i32, i32* %label_119, i32 12
  store i32 61, i32* %label_120
  %label_121 = load i32*, i32** %label_91
  %label_122 = getelementptr inbounds i32, i32* %label_121, i32 13
  store i32 61, i32* %label_122
  %label_123 = load i32*, i32** %label_91
  %label_124 = getelementptr inbounds i32, i32* %label_123, i32 14
  store i32 61, i32* %label_124
  %label_125 = load i32*, i32** %label_91
  %label_126 = getelementptr inbounds i32, i32* %label_125, i32 15
  store i32 10, i32* %label_126
  %label_127 = load i32*, i32** %label_91
  %label_128 = getelementptr inbounds i32, i32* %label_127, i32 16
  store i32 0, i32* %label_128

  ; print string
  %label_132 = alloca i32
  store i32 0, i32* %label_132
  br label %label_129

  label_129:
  %label_133 = load i32, i32* %label_132
  %label_134 = getelementptr inbounds i32, i32* %label_94, i32 %label_133
  %label_135 = load i32, i32* %label_134
  %label_136 = icmp eq i32 %label_135, 0
  br i1 %label_136, label %label_131, label %label_130

  label_130:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label_135)
  %label_137 = add i32 1, %label_133
  store i32 %label_137, i32* %label_132
  br label %label_129

  label_131:

  ; or
  %label_142 = icmp ne i32 1, 0
  %label_143 = xor i1 %label_142, true
  %label_144 = zext i1 %label_143 to i32
  %label_138 = icmp ne i32 %label_144, 0
  br i1 %label_138, label %label_139, label %label_141

  label_141:
  %label_147 = icmp ne i32 1, 0
  %label_148 = xor i1 %label_147, true
  %label_149 = zext i1 %label_148 to i32
  %label_145 = icmp ne i32 %label_149, 0
  br i1 %label_145, label %label_139, label %label_140

  label_139:
  br label %label_150

  label_140:
  br label %label_150

  label_150:
  %label_151 = phi i1 [ true, %label_139 ], [ false, %label_140 ]
  %label_146 = zext i1 %label_151 to i32
  %label_152 = icmp ne i32 %label_146, 0
  %label_153 = xor i1 %label_152, true
  %label_154 = zext i1 %label_153 to i32
  store i32 %label_154, i32* %label_0

  ; or
  %label_159 = icmp ne i32 0, 0
  %label_160 = xor i1 %label_159, true
  %label_161 = zext i1 %label_160 to i32
  %label_155 = icmp ne i32 %label_161, 0
  br i1 %label_155, label %label_156, label %label_158

  label_158:
  %label_164 = icmp ne i32 0, 0
  %label_165 = xor i1 %label_164, true
  %label_166 = zext i1 %label_165 to i32
  %label_162 = icmp ne i32 %label_166, 0
  br i1 %label_162, label %label_156, label %label_157

  label_156:
  br label %label_167

  label_157:
  br label %label_167

  label_167:
  %label_168 = phi i1 [ true, %label_156 ], [ false, %label_157 ]
  %label_163 = zext i1 %label_168 to i32
  %label_169 = icmp ne i32 %label_163, 0
  %label_170 = xor i1 %label_169, true
  %label_171 = zext i1 %label_170 to i32
  store i32 %label_171, i32* %label_1

  ; or
  %label_176 = icmp ne i32 1, 0
  %label_177 = xor i1 %label_176, true
  %label_178 = zext i1 %label_177 to i32
  %label_172 = icmp ne i32 %label_178, 0
  br i1 %label_172, label %label_173, label %label_175

  label_175:
  %label_181 = icmp ne i32 0, 0
  %label_182 = xor i1 %label_181, true
  %label_183 = zext i1 %label_182 to i32
  %label_179 = icmp ne i32 %label_183, 0
  br i1 %label_179, label %label_173, label %label_174

  label_173:
  br label %label_184

  label_174:
  br label %label_184

  label_184:
  %label_185 = phi i1 [ true, %label_173 ], [ false, %label_174 ]
  %label_180 = zext i1 %label_185 to i32
  %label_186 = icmp ne i32 %label_180, 0
  %label_187 = xor i1 %label_186, true
  %label_188 = zext i1 %label_187 to i32
  store i32 %label_188, i32* %label_2

  ; or
  %label_193 = icmp ne i32 0, 0
  %label_194 = xor i1 %label_193, true
  %label_195 = zext i1 %label_194 to i32
  %label_189 = icmp ne i32 %label_195, 0
  br i1 %label_189, label %label_190, label %label_192

  label_192:
  %label_198 = icmp ne i32 1, 0
  %label_199 = xor i1 %label_198, true
  %label_200 = zext i1 %label_199 to i32
  %label_196 = icmp ne i32 %label_200, 0
  br i1 %label_196, label %label_190, label %label_191

  label_190:
  br label %label_201

  label_191:
  br label %label_201

  label_201:
  %label_202 = phi i1 [ true, %label_190 ], [ false, %label_191 ]
  %label_197 = zext i1 %label_202 to i32
  %label_203 = icmp ne i32 %label_197, 0
  %label_204 = xor i1 %label_203, true
  %label_205 = zext i1 %label_204 to i32
  store i32 %label_205, i32* %label_3
  %label_206 = load i32, i32* %label_0
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label_206)

  ; string
  %label_207 = alloca i32*
  %label_208 = mul i64 4, 2
  %label_209 = call i8* @malloc(i64 %label_208)
  %label_210 = bitcast i8* %label_209 to i32*
  store i32* %label_210, i32** %label_207
  %label_211 = load i32*, i32** %label_207
  %label_212 = getelementptr inbounds i32, i32* %label_211, i32 0
  store i32 10, i32* %label_212
  %label_213 = load i32*, i32** %label_207
  %label_214 = getelementptr inbounds i32, i32* %label_213, i32 1
  store i32 0, i32* %label_214

  ; print string
  %label_218 = alloca i32
  store i32 0, i32* %label_218
  br label %label_215

  label_215:
  %label_219 = load i32, i32* %label_218
  %label_220 = getelementptr inbounds i32, i32* %label_210, i32 %label_219
  %label_221 = load i32, i32* %label_220
  %label_222 = icmp eq i32 %label_221, 0
  br i1 %label_222, label %label_217, label %label_216

  label_216:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label_221)
  %label_223 = add i32 1, %label_219
  store i32 %label_223, i32* %label_218
  br label %label_215

  label_217:
  %label_224 = load i32, i32* %label_1
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label_224)

  ; string
  %label_225 = alloca i32*
  %label_226 = mul i64 4, 2
  %label_227 = call i8* @malloc(i64 %label_226)
  %label_228 = bitcast i8* %label_227 to i32*
  store i32* %label_228, i32** %label_225
  %label_229 = load i32*, i32** %label_225
  %label_230 = getelementptr inbounds i32, i32* %label_229, i32 0
  store i32 10, i32* %label_230
  %label_231 = load i32*, i32** %label_225
  %label_232 = getelementptr inbounds i32, i32* %label_231, i32 1
  store i32 0, i32* %label_232

  ; print string
  %label_236 = alloca i32
  store i32 0, i32* %label_236
  br label %label_233

  label_233:
  %label_237 = load i32, i32* %label_236
  %label_238 = getelementptr inbounds i32, i32* %label_228, i32 %label_237
  %label_239 = load i32, i32* %label_238
  %label_240 = icmp eq i32 %label_239, 0
  br i1 %label_240, label %label_235, label %label_234

  label_234:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label_239)
  %label_241 = add i32 1, %label_237
  store i32 %label_241, i32* %label_236
  br label %label_233

  label_235:
  %label_242 = load i32, i32* %label_2
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label_242)

  ; string
  %label_243 = alloca i32*
  %label_244 = mul i64 4, 2
  %label_245 = call i8* @malloc(i64 %label_244)
  %label_246 = bitcast i8* %label_245 to i32*
  store i32* %label_246, i32** %label_243
  %label_247 = load i32*, i32** %label_243
  %label_248 = getelementptr inbounds i32, i32* %label_247, i32 0
  store i32 10, i32* %label_248
  %label_249 = load i32*, i32** %label_243
  %label_250 = getelementptr inbounds i32, i32* %label_249, i32 1
  store i32 0, i32* %label_250

  ; print string
  %label_254 = alloca i32
  store i32 0, i32* %label_254
  br label %label_251

  label_251:
  %label_255 = load i32, i32* %label_254
  %label_256 = getelementptr inbounds i32, i32* %label_246, i32 %label_255
  %label_257 = load i32, i32* %label_256
  %label_258 = icmp eq i32 %label_257, 0
  br i1 %label_258, label %label_253, label %label_252

  label_252:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label_257)
  %label_259 = add i32 1, %label_255
  store i32 %label_259, i32* %label_254
  br label %label_251

  label_253:
  %label_260 = load i32, i32* %label_3
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.int, i32 0, i32 0), i32 %label_260)

  ; string
  %label_261 = alloca i32*
  %label_262 = mul i64 4, 2
  %label_263 = call i8* @malloc(i64 %label_262)
  %label_264 = bitcast i8* %label_263 to i32*
  store i32* %label_264, i32** %label_261
  %label_265 = load i32*, i32** %label_261
  %label_266 = getelementptr inbounds i32, i32* %label_265, i32 0
  store i32 10, i32* %label_266
  %label_267 = load i32*, i32** %label_261
  %label_268 = getelementptr inbounds i32, i32* %label_267, i32 1
  store i32 0, i32* %label_268

  ; print string
  %label_272 = alloca i32
  store i32 0, i32* %label_272
  br label %label_269

  label_269:
  %label_273 = load i32, i32* %label_272
  %label_274 = getelementptr inbounds i32, i32* %label_264, i32 %label_273
  %label_275 = load i32, i32* %label_274
  %label_276 = icmp eq i32 %label_275, 0
  br i1 %label_276, label %label_271, label %label_270

  label_270:
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.print.char, i32 0, i32 0), i32 %label_275)
  %label_277 = add i32 1, %label_273
  store i32 %label_277, i32* %label_272
  br label %label_269

  label_271:
  ret void
}



