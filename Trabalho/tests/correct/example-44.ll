declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label1 = alloca float*
  %label2 = mul i64 4, 1
  %label3 = call i8* @malloc(i64 %label2)
  %label4 = bitcast i8* %label3 to float*
  store float* %label4, float** %label1
  %label5 = sitofp i32 97 to float
  %label6 = fcmp oeq float (null), %label5
  %label7 = zext i1 %label6 to i32
  %label8 = icmp eq i32 %label7, 1
  br i1 %label8, label %label9, label %label10

  label9:
  br label %label10

  label10:
  ret void
}



