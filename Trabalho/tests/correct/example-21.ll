declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_0 = alloca i32
  %label_1 = alloca i32
  %label_2 = mul i32 2, 3
  %label_3 = add i32 1, %label_2
  store i32 %label_3, i32* %label_0
  %label_4 = mul i32 2, 3
  %label_5 = add i32 %label_4, 1
  store i32 %label_5, i32* %label_1
  %label_6 = mul i32 2, 3
  %label_7 = add i32 1, %label_6
  %label_8 = add i32 %label_7, 4
  store i32 %label_8, i32* %label_0
  %label_9 = add i32 1, 4
  %label_10 = mul i32 2, 3
  %label_11 = add i32 %label_9, %label_10
  store i32 %label_11, i32* %label_1
  %label_12 = mul i32 2, 3
  %label_13 = add i32 %label_12, 1
  %label_14 = add i32 %label_13, 4
  store i32 %label_14, i32* %label_0
  %label_15 = mul i32 4, 2
  %label_16 = mul i32 %label_15, 3
  %label_17 = add i32 1, %label_16
  store i32 %label_17, i32* %label_1
  ret void
}



