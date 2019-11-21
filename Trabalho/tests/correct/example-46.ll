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
  %label5 = icmp eq i32 (null), 97
  %label6 = zext i1 %label5 to i32
  %label7 = icmp eq i32 %label6, 1
  br i1 %label7, label %label8, label %label9

  label8:
  br label %label9

  label9:
  ret void
}



