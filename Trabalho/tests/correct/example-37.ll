declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_0 = alloca i32
  %label_1 = mul i64 4, 1
  %label_2 = call i8* @malloc(i64 %label_1)
  %label_3 = bitcast i8* %label_2 to i32*
  %label_4 = getelementptr inbounds i32, i32* %label_3, i32 0
  %label_5 = load i32, i32* %label_4
  store i32 %label_5, i32* %label_0
  ret void
}



