declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label1 = alloca i32*
  %label2 = mul i64 4, 1
  %label3 = call i8* @malloc(i64 %label2)
  %label4 = bitcast i8* %label3 to i32*
  store i32* %label4, i32** %label1
  %label5 = sitofp i32 (null) to float
  %label6 = sitofp i32 97 to float
  %label7 = fcmp oeq float %label5, %label6
  %label8 = zext i1 %label7 to i32
  %label9 = icmp eq i32 %label8, 1
  br i1 %label9, label %label10, label %label11

  label10:
  br label %label11

  label11:
  ret void
}



