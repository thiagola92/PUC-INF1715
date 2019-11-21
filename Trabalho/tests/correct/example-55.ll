declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @nome() {
  %label1 = alloca i32*

  ; assignment
  %label2 = alloca [4 x i32]
  %label3 = getelementptr inbounds [4 x i32], [4 x i32]* %label2, i64 0, i64 0
  store i32 99, i32* %label3
  %label4 = getelementptr inbounds [4 x i32], [4 x i32]* %label2, i64 0, i64 1
  store i32 111, i32* %label4
  %label5 = getelementptr inbounds [4 x i32], [4 x i32]* %label2, i64 0, i64 2
  store i32 101, i32* %label5
  %label6 = getelementptr inbounds [4 x i32], [4 x i32]* %label2, i64 0, i64 3
  store i32 0, i32* %label6
  %label7 = getelementptr inbounds [4 x i32], [4 x i32]* %label2, i32 0, i32 0
  store i32* %label7, i32** %label1
  ret void
}



