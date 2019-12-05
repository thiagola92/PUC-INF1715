declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_0 = alloca float*
  %label_1 = mul i64 4, 1
  %label_2 = call i8* @malloc(i64 %label_1)
  %label_3 = bitcast i8* %label_2 to float*
  store float* %label_3, float** %label_0

  ; if
  %label_6 = load float*, float** %label_0
  %label_7 = getelementptr inbounds float, float* %label_6, i32 0
  %label_8 = load float, float* %label_7
  %label_10 = sitofp i32 97 to float
  %label_11 = fcmp oeq float %label_8, %label_10
  %label_12 = zext i1 %label_11 to i32
  %label_13 = icmp eq i32 %label_12, 1
  br i1 %label_13, label %label_4, label %label_5

  label_4:
  br label %label_5

  label_5:
  ret void
}



