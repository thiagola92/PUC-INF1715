declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_0 = alloca i32*
  %label_1 = mul i64 4, 1
  %label_2 = call i8* @malloc(i64 %label_1)
  %label_3 = bitcast i8* %label_2 to i32*
  store i32* %label_3, i32** %label_0

  ; if
  %label_6 = load i32*, i32** %label_0
  %label_7 = getelementptr inbounds i32, i32* %label_6, i32 0
  %label_8 = load i32, i32* %label_7
  %label_9 = icmp eq i32 %label_8, 97
  %label_10 = zext i1 %label_9 to i32
  %label_11 = icmp eq i32 %label_10, 1
  br i1 %label_11, label %label_4, label %label_5

  label_4:
  br label %label_5

  label_5:
  ret void
}



