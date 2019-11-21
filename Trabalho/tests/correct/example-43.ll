declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label1 = alloca i32*

  ; assignment
  %label2 = mul i64 4, 1
  %label3 = call i8* @malloc(i64 %label2)
  %label4 = bitcast i8* %label3 to i32*
  store i32* %label4, i32** %label1

  ; array_position
  %label5 = load i32*, i32** %label1
  %label6 = getelementptr inbounds i32, i32* %label5, i64 0
  %label7 = sitofp i32 %label6 to float
  %label8 = sitofp i32 97 to float
  %label9 = fcmp oeq float %label7, %label8
  %label10 = zext i1 %label9 to i32
  %label11 = icmp eq i32 %label10, 1
  br i1 %label11, label %label12, label %label13

  label12:
  br label %label13

  label13:
  ret void
}



