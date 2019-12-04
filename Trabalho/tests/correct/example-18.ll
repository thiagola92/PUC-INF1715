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
  %label_22 = icmp eq i32 1, 1
  %label_23 = zext i1 %label_22 to i32
  %label_16 = icmp ne i32 %label_23, 0
  br i1 %label_16, label %label_20, label %label_19

  label_20:
  %label_24 = icmp eq i32 1, 1
  %label_25 = zext i1 %label_24 to i32
  %label_17 = icmp ne i32 %label_25, 0
  br i1 %label_17, label %label_18, label %label_19

  label_18:
  br label %label_26

  label_19:
  br label %label_26

  label_26:
  %label_27 = phi i1 [ true, %label_18 ], [ false, %label_19 ]
  %label_21 = zext i1 %label_27 to i32
  store i32 %label_21, i32* %label_0
  %label_34 = icmp eq i32 1, 2
  %label_35 = zext i1 %label_34 to i32
  %label_28 = icmp ne i32 %label_35, 0
  br i1 %label_28, label %label_32, label %label_31

  label_32:
  %label_36 = icmp eq i32 2, 2
  %label_37 = zext i1 %label_36 to i32
  %label_29 = icmp ne i32 %label_37, 0
  br i1 %label_29, label %label_30, label %label_31

  label_30:
  br label %label_38

  label_31:
  br label %label_38

  label_38:
  %label_39 = phi i1 [ true, %label_30 ], [ false, %label_31 ]
  %label_33 = zext i1 %label_39 to i32
  store i32 %label_33, i32* %label_1
  %label_46 = icmp ne i32 1, 1
  %label_47 = zext i1 %label_46 to i32
  %label_40 = icmp ne i32 %label_47, 0
  br i1 %label_40, label %label_44, label %label_43

  label_44:
  %label_48 = icmp eq i32 1, 1
  %label_49 = zext i1 %label_48 to i32
  %label_41 = icmp ne i32 %label_49, 0
  br i1 %label_41, label %label_42, label %label_43

  label_42:
  br label %label_50

  label_43:
  br label %label_50

  label_50:
  %label_51 = phi i1 [ true, %label_42 ], [ false, %label_43 ]
  %label_45 = zext i1 %label_51 to i32
  store i32 %label_45, i32* %label_2
  %label_58 = icmp ne i32 1, 2
  %label_59 = zext i1 %label_58 to i32
  %label_52 = icmp ne i32 %label_59, 0
  br i1 %label_52, label %label_56, label %label_55

  label_56:
  %label_60 = icmp eq i32 2, 2
  %label_61 = zext i1 %label_60 to i32
  %label_53 = icmp ne i32 %label_61, 0
  br i1 %label_53, label %label_54, label %label_55

  label_54:
  br label %label_62

  label_55:
  br label %label_62

  label_62:
  %label_63 = phi i1 [ true, %label_54 ], [ false, %label_55 ]
  %label_57 = zext i1 %label_63 to i32
  store i32 %label_57, i32* %label_3
  %label_70 = icmp slt i32 1, 1
  %label_71 = zext i1 %label_70 to i32
  %label_64 = icmp ne i32 %label_71, 0
  br i1 %label_64, label %label_68, label %label_67

  label_68:
  %label_72 = icmp sgt i32 1, 1
  %label_73 = zext i1 %label_72 to i32
  %label_65 = icmp ne i32 %label_73, 0
  br i1 %label_65, label %label_66, label %label_67

  label_66:
  br label %label_74

  label_67:
  br label %label_74

  label_74:
  %label_75 = phi i1 [ true, %label_66 ], [ false, %label_67 ]
  %label_69 = zext i1 %label_75 to i32
  store i32 %label_69, i32* %label_4
  %label_82 = icmp slt i32 1, 2
  %label_83 = zext i1 %label_82 to i32
  %label_76 = icmp ne i32 %label_83, 0
  br i1 %label_76, label %label_80, label %label_79

  label_80:
  %label_84 = icmp sgt i32 1, 2
  %label_85 = zext i1 %label_84 to i32
  %label_77 = icmp ne i32 %label_85, 0
  br i1 %label_77, label %label_78, label %label_79

  label_78:
  br label %label_86

  label_79:
  br label %label_86

  label_86:
  %label_87 = phi i1 [ true, %label_78 ], [ false, %label_79 ]
  %label_81 = zext i1 %label_87 to i32
  store i32 %label_81, i32* %label_5
  %label_94 = icmp slt i32 1, 0
  %label_95 = zext i1 %label_94 to i32
  %label_88 = icmp ne i32 %label_95, 0
  br i1 %label_88, label %label_92, label %label_91

  label_92:
  %label_96 = icmp sgt i32 1, 0
  %label_97 = zext i1 %label_96 to i32
  %label_89 = icmp ne i32 %label_97, 0
  br i1 %label_89, label %label_90, label %label_91

  label_90:
  br label %label_98

  label_91:
  br label %label_98

  label_98:
  %label_99 = phi i1 [ true, %label_90 ], [ false, %label_91 ]
  %label_93 = zext i1 %label_99 to i32
  store i32 %label_93, i32* %label_6
  %label_106 = icmp sgt i32 1, 1
  %label_107 = zext i1 %label_106 to i32
  %label_100 = icmp ne i32 %label_107, 0
  br i1 %label_100, label %label_104, label %label_103

  label_104:
  %label_108 = icmp slt i32 1, 1
  %label_109 = zext i1 %label_108 to i32
  %label_101 = icmp ne i32 %label_109, 0
  br i1 %label_101, label %label_102, label %label_103

  label_102:
  br label %label_110

  label_103:
  br label %label_110

  label_110:
  %label_111 = phi i1 [ true, %label_102 ], [ false, %label_103 ]
  %label_105 = zext i1 %label_111 to i32
  store i32 %label_105, i32* %label_7
  %label_118 = icmp sgt i32 1, 2
  %label_119 = zext i1 %label_118 to i32
  %label_112 = icmp ne i32 %label_119, 0
  br i1 %label_112, label %label_116, label %label_115

  label_116:
  %label_120 = icmp slt i32 1, 2
  %label_121 = zext i1 %label_120 to i32
  %label_113 = icmp ne i32 %label_121, 0
  br i1 %label_113, label %label_114, label %label_115

  label_114:
  br label %label_122

  label_115:
  br label %label_122

  label_122:
  %label_123 = phi i1 [ true, %label_114 ], [ false, %label_115 ]
  %label_117 = zext i1 %label_123 to i32
  store i32 %label_117, i32* %label_8
  %label_130 = icmp sgt i32 1, 0
  %label_131 = zext i1 %label_130 to i32
  %label_124 = icmp ne i32 %label_131, 0
  br i1 %label_124, label %label_128, label %label_127

  label_128:
  %label_132 = icmp slt i32 1, 0
  %label_133 = zext i1 %label_132 to i32
  %label_125 = icmp ne i32 %label_133, 0
  br i1 %label_125, label %label_126, label %label_127

  label_126:
  br label %label_134

  label_127:
  br label %label_134

  label_134:
  %label_135 = phi i1 [ true, %label_126 ], [ false, %label_127 ]
  %label_129 = zext i1 %label_135 to i32
  store i32 %label_129, i32* %label_9
  %label_142 = icmp sle i32 1, 1
  %label_143 = zext i1 %label_142 to i32
  %label_136 = icmp ne i32 %label_143, 0
  br i1 %label_136, label %label_140, label %label_139

  label_140:
  %label_144 = icmp sge i32 1, 1
  %label_145 = zext i1 %label_144 to i32
  %label_137 = icmp ne i32 %label_145, 0
  br i1 %label_137, label %label_138, label %label_139

  label_138:
  br label %label_146

  label_139:
  br label %label_146

  label_146:
  %label_147 = phi i1 [ true, %label_138 ], [ false, %label_139 ]
  %label_141 = zext i1 %label_147 to i32
  store i32 %label_141, i32* %label_10
  %label_154 = icmp sle i32 1, 2
  %label_155 = zext i1 %label_154 to i32
  %label_148 = icmp ne i32 %label_155, 0
  br i1 %label_148, label %label_152, label %label_151

  label_152:
  %label_156 = icmp sge i32 1, 2
  %label_157 = zext i1 %label_156 to i32
  %label_149 = icmp ne i32 %label_157, 0
  br i1 %label_149, label %label_150, label %label_151

  label_150:
  br label %label_158

  label_151:
  br label %label_158

  label_158:
  %label_159 = phi i1 [ true, %label_150 ], [ false, %label_151 ]
  %label_153 = zext i1 %label_159 to i32
  store i32 %label_153, i32* %label_11
  %label_166 = icmp sle i32 1, 0
  %label_167 = zext i1 %label_166 to i32
  %label_160 = icmp ne i32 %label_167, 0
  br i1 %label_160, label %label_164, label %label_163

  label_164:
  %label_168 = icmp sge i32 1, 0
  %label_169 = zext i1 %label_168 to i32
  %label_161 = icmp ne i32 %label_169, 0
  br i1 %label_161, label %label_162, label %label_163

  label_162:
  br label %label_170

  label_163:
  br label %label_170

  label_170:
  %label_171 = phi i1 [ true, %label_162 ], [ false, %label_163 ]
  %label_165 = zext i1 %label_171 to i32
  store i32 %label_165, i32* %label_12
  %label_178 = icmp sge i32 1, 1
  %label_179 = zext i1 %label_178 to i32
  %label_172 = icmp ne i32 %label_179, 0
  br i1 %label_172, label %label_176, label %label_175

  label_176:
  %label_180 = icmp sle i32 1, 1
  %label_181 = zext i1 %label_180 to i32
  %label_173 = icmp ne i32 %label_181, 0
  br i1 %label_173, label %label_174, label %label_175

  label_174:
  br label %label_182

  label_175:
  br label %label_182

  label_182:
  %label_183 = phi i1 [ true, %label_174 ], [ false, %label_175 ]
  %label_177 = zext i1 %label_183 to i32
  store i32 %label_177, i32* %label_13
  %label_190 = icmp sge i32 1, 2
  %label_191 = zext i1 %label_190 to i32
  %label_184 = icmp ne i32 %label_191, 0
  br i1 %label_184, label %label_188, label %label_187

  label_188:
  %label_192 = icmp sle i32 1, 2
  %label_193 = zext i1 %label_192 to i32
  %label_185 = icmp ne i32 %label_193, 0
  br i1 %label_185, label %label_186, label %label_187

  label_186:
  br label %label_194

  label_187:
  br label %label_194

  label_194:
  %label_195 = phi i1 [ true, %label_186 ], [ false, %label_187 ]
  %label_189 = zext i1 %label_195 to i32
  store i32 %label_189, i32* %label_14
  %label_202 = icmp sge i32 1, 0
  %label_203 = zext i1 %label_202 to i32
  %label_196 = icmp ne i32 %label_203, 0
  br i1 %label_196, label %label_200, label %label_199

  label_200:
  %label_204 = icmp sle i32 1, 0
  %label_205 = zext i1 %label_204 to i32
  %label_197 = icmp ne i32 %label_205, 0
  br i1 %label_197, label %label_198, label %label_199

  label_198:
  br label %label_206

  label_199:
  br label %label_206

  label_206:
  %label_207 = phi i1 [ true, %label_198 ], [ false, %label_199 ]
  %label_201 = zext i1 %label_207 to i32
  store i32 %label_201, i32* %label_15
  ret void
}



