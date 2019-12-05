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
  %label_4 = alloca i32
  %label_5 = alloca i32
  %label_6 = alloca i32
  %label_7 = alloca i32
  %label_8 = alloca i32
  %label_9 = alloca i32
  %label_10 = alloca i32
  %label_11 = alloca i32
  %label_12 = alloca i32
  %label_13 = alloca i32
  %label_14 = alloca i32
  %label_15 = alloca i32

  ; and
  %label_20 = icmp eq i32 1, 1
  %label_21 = zext i1 %label_20 to i32
  %label_16 = icmp ne i32 %label_21, 0
  br i1 %label_16, label %label_19, label %label_18

  label_19:
  %label_24 = icmp eq i32 1, 1
  %label_25 = zext i1 %label_24 to i32
  %label_22 = icmp ne i32 %label_25, 0
  br i1 %label_22, label %label_17, label %label_18

  label_17:
  br label %label_26

  label_18:
  br label %label_26

  label_26:
  %label_27 = phi i1 [ true, %label_17 ], [ false, %label_18 ]
  %label_23 = zext i1 %label_27 to i32
  store i32 %label_23, i32* %label_0

  ; and
  %label_32 = icmp eq i32 1, 2
  %label_33 = zext i1 %label_32 to i32
  %label_28 = icmp ne i32 %label_33, 0
  br i1 %label_28, label %label_31, label %label_30

  label_31:
  %label_36 = icmp eq i32 2, 2
  %label_37 = zext i1 %label_36 to i32
  %label_34 = icmp ne i32 %label_37, 0
  br i1 %label_34, label %label_29, label %label_30

  label_29:
  br label %label_38

  label_30:
  br label %label_38

  label_38:
  %label_39 = phi i1 [ true, %label_29 ], [ false, %label_30 ]
  %label_35 = zext i1 %label_39 to i32
  store i32 %label_35, i32* %label_1

  ; and
  %label_44 = icmp ne i32 1, 1
  %label_45 = zext i1 %label_44 to i32
  %label_40 = icmp ne i32 %label_45, 0
  br i1 %label_40, label %label_43, label %label_42

  label_43:
  %label_48 = icmp eq i32 1, 1
  %label_49 = zext i1 %label_48 to i32
  %label_46 = icmp ne i32 %label_49, 0
  br i1 %label_46, label %label_41, label %label_42

  label_41:
  br label %label_50

  label_42:
  br label %label_50

  label_50:
  %label_51 = phi i1 [ true, %label_41 ], [ false, %label_42 ]
  %label_47 = zext i1 %label_51 to i32
  store i32 %label_47, i32* %label_2

  ; and
  %label_56 = icmp ne i32 1, 2
  %label_57 = zext i1 %label_56 to i32
  %label_52 = icmp ne i32 %label_57, 0
  br i1 %label_52, label %label_55, label %label_54

  label_55:
  %label_60 = icmp eq i32 2, 2
  %label_61 = zext i1 %label_60 to i32
  %label_58 = icmp ne i32 %label_61, 0
  br i1 %label_58, label %label_53, label %label_54

  label_53:
  br label %label_62

  label_54:
  br label %label_62

  label_62:
  %label_63 = phi i1 [ true, %label_53 ], [ false, %label_54 ]
  %label_59 = zext i1 %label_63 to i32
  store i32 %label_59, i32* %label_3

  ; and
  %label_68 = icmp slt i32 1, 1
  %label_69 = zext i1 %label_68 to i32
  %label_64 = icmp ne i32 %label_69, 0
  br i1 %label_64, label %label_67, label %label_66

  label_67:
  %label_72 = icmp sgt i32 1, 1
  %label_73 = zext i1 %label_72 to i32
  %label_70 = icmp ne i32 %label_73, 0
  br i1 %label_70, label %label_65, label %label_66

  label_65:
  br label %label_74

  label_66:
  br label %label_74

  label_74:
  %label_75 = phi i1 [ true, %label_65 ], [ false, %label_66 ]
  %label_71 = zext i1 %label_75 to i32
  store i32 %label_71, i32* %label_4

  ; and
  %label_80 = icmp slt i32 1, 2
  %label_81 = zext i1 %label_80 to i32
  %label_76 = icmp ne i32 %label_81, 0
  br i1 %label_76, label %label_79, label %label_78

  label_79:
  %label_84 = icmp sgt i32 1, 2
  %label_85 = zext i1 %label_84 to i32
  %label_82 = icmp ne i32 %label_85, 0
  br i1 %label_82, label %label_77, label %label_78

  label_77:
  br label %label_86

  label_78:
  br label %label_86

  label_86:
  %label_87 = phi i1 [ true, %label_77 ], [ false, %label_78 ]
  %label_83 = zext i1 %label_87 to i32
  store i32 %label_83, i32* %label_5

  ; and
  %label_92 = icmp slt i32 1, 0
  %label_93 = zext i1 %label_92 to i32
  %label_88 = icmp ne i32 %label_93, 0
  br i1 %label_88, label %label_91, label %label_90

  label_91:
  %label_96 = icmp sgt i32 1, 0
  %label_97 = zext i1 %label_96 to i32
  %label_94 = icmp ne i32 %label_97, 0
  br i1 %label_94, label %label_89, label %label_90

  label_89:
  br label %label_98

  label_90:
  br label %label_98

  label_98:
  %label_99 = phi i1 [ true, %label_89 ], [ false, %label_90 ]
  %label_95 = zext i1 %label_99 to i32
  store i32 %label_95, i32* %label_6

  ; and
  %label_104 = icmp sgt i32 1, 1
  %label_105 = zext i1 %label_104 to i32
  %label_100 = icmp ne i32 %label_105, 0
  br i1 %label_100, label %label_103, label %label_102

  label_103:
  %label_108 = icmp slt i32 1, 1
  %label_109 = zext i1 %label_108 to i32
  %label_106 = icmp ne i32 %label_109, 0
  br i1 %label_106, label %label_101, label %label_102

  label_101:
  br label %label_110

  label_102:
  br label %label_110

  label_110:
  %label_111 = phi i1 [ true, %label_101 ], [ false, %label_102 ]
  %label_107 = zext i1 %label_111 to i32
  store i32 %label_107, i32* %label_7

  ; and
  %label_116 = icmp sgt i32 1, 2
  %label_117 = zext i1 %label_116 to i32
  %label_112 = icmp ne i32 %label_117, 0
  br i1 %label_112, label %label_115, label %label_114

  label_115:
  %label_120 = icmp slt i32 1, 2
  %label_121 = zext i1 %label_120 to i32
  %label_118 = icmp ne i32 %label_121, 0
  br i1 %label_118, label %label_113, label %label_114

  label_113:
  br label %label_122

  label_114:
  br label %label_122

  label_122:
  %label_123 = phi i1 [ true, %label_113 ], [ false, %label_114 ]
  %label_119 = zext i1 %label_123 to i32
  store i32 %label_119, i32* %label_8

  ; and
  %label_128 = icmp sgt i32 1, 0
  %label_129 = zext i1 %label_128 to i32
  %label_124 = icmp ne i32 %label_129, 0
  br i1 %label_124, label %label_127, label %label_126

  label_127:
  %label_132 = icmp slt i32 1, 0
  %label_133 = zext i1 %label_132 to i32
  %label_130 = icmp ne i32 %label_133, 0
  br i1 %label_130, label %label_125, label %label_126

  label_125:
  br label %label_134

  label_126:
  br label %label_134

  label_134:
  %label_135 = phi i1 [ true, %label_125 ], [ false, %label_126 ]
  %label_131 = zext i1 %label_135 to i32
  store i32 %label_131, i32* %label_9

  ; and
  %label_140 = icmp sle i32 1, 1
  %label_141 = zext i1 %label_140 to i32
  %label_136 = icmp ne i32 %label_141, 0
  br i1 %label_136, label %label_139, label %label_138

  label_139:
  %label_144 = icmp sge i32 1, 1
  %label_145 = zext i1 %label_144 to i32
  %label_142 = icmp ne i32 %label_145, 0
  br i1 %label_142, label %label_137, label %label_138

  label_137:
  br label %label_146

  label_138:
  br label %label_146

  label_146:
  %label_147 = phi i1 [ true, %label_137 ], [ false, %label_138 ]
  %label_143 = zext i1 %label_147 to i32
  store i32 %label_143, i32* %label_10

  ; and
  %label_152 = icmp sle i32 1, 2
  %label_153 = zext i1 %label_152 to i32
  %label_148 = icmp ne i32 %label_153, 0
  br i1 %label_148, label %label_151, label %label_150

  label_151:
  %label_156 = icmp sge i32 1, 2
  %label_157 = zext i1 %label_156 to i32
  %label_154 = icmp ne i32 %label_157, 0
  br i1 %label_154, label %label_149, label %label_150

  label_149:
  br label %label_158

  label_150:
  br label %label_158

  label_158:
  %label_159 = phi i1 [ true, %label_149 ], [ false, %label_150 ]
  %label_155 = zext i1 %label_159 to i32
  store i32 %label_155, i32* %label_11

  ; and
  %label_164 = icmp sle i32 1, 0
  %label_165 = zext i1 %label_164 to i32
  %label_160 = icmp ne i32 %label_165, 0
  br i1 %label_160, label %label_163, label %label_162

  label_163:
  %label_168 = icmp sge i32 1, 0
  %label_169 = zext i1 %label_168 to i32
  %label_166 = icmp ne i32 %label_169, 0
  br i1 %label_166, label %label_161, label %label_162

  label_161:
  br label %label_170

  label_162:
  br label %label_170

  label_170:
  %label_171 = phi i1 [ true, %label_161 ], [ false, %label_162 ]
  %label_167 = zext i1 %label_171 to i32
  store i32 %label_167, i32* %label_12

  ; and
  %label_176 = icmp sge i32 1, 1
  %label_177 = zext i1 %label_176 to i32
  %label_172 = icmp ne i32 %label_177, 0
  br i1 %label_172, label %label_175, label %label_174

  label_175:
  %label_180 = icmp sle i32 1, 1
  %label_181 = zext i1 %label_180 to i32
  %label_178 = icmp ne i32 %label_181, 0
  br i1 %label_178, label %label_173, label %label_174

  label_173:
  br label %label_182

  label_174:
  br label %label_182

  label_182:
  %label_183 = phi i1 [ true, %label_173 ], [ false, %label_174 ]
  %label_179 = zext i1 %label_183 to i32
  store i32 %label_179, i32* %label_13

  ; and
  %label_188 = icmp sge i32 1, 2
  %label_189 = zext i1 %label_188 to i32
  %label_184 = icmp ne i32 %label_189, 0
  br i1 %label_184, label %label_187, label %label_186

  label_187:
  %label_192 = icmp sle i32 1, 2
  %label_193 = zext i1 %label_192 to i32
  %label_190 = icmp ne i32 %label_193, 0
  br i1 %label_190, label %label_185, label %label_186

  label_185:
  br label %label_194

  label_186:
  br label %label_194

  label_194:
  %label_195 = phi i1 [ true, %label_185 ], [ false, %label_186 ]
  %label_191 = zext i1 %label_195 to i32
  store i32 %label_191, i32* %label_14

  ; and
  %label_200 = icmp sge i32 1, 0
  %label_201 = zext i1 %label_200 to i32
  %label_196 = icmp ne i32 %label_201, 0
  br i1 %label_196, label %label_199, label %label_198

  label_199:
  %label_204 = icmp sle i32 1, 0
  %label_205 = zext i1 %label_204 to i32
  %label_202 = icmp ne i32 %label_205, 0
  br i1 %label_202, label %label_197, label %label_198

  label_197:
  br label %label_206

  label_198:
  br label %label_206

  label_206:
  %label_207 = phi i1 [ true, %label_197 ], [ false, %label_198 ]
  %label_203 = zext i1 %label_207 to i32
  store i32 %label_203, i32* %label_15
  ret void
}



