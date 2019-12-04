declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_0 = alloca i32
  %label_1 = alloca i32
  %label_2 = alloca i32
  store i32 10, i32* %label_0
  store i32 20, i32* %label_1
  %label_3 = load i32, i32* %label_1
  %label_4 = load i32, i32* %label_0
  %label_5 = add i32 %label_3, %label_4
  store i32 %label_5, i32* %label_2
  %label_6 = add i32 10, 10
  store i32 %label_6, i32* %label_2
  %label_7 = load i32, i32* %label_0
  %label_8 = add i32 10, %label_7
  store i32 %label_8, i32* %label_2
  %label_9 = load i32, i32* %label_0
  %label_10 = add i32 %label_9, 10
  store i32 %label_10, i32* %label_2
  %label_11 = load i32, i32* %label_1
  %label_12 = load i32, i32* %label_0
  %label_13 = sub i32 %label_11, %label_12
  store i32 %label_13, i32* %label_2
  %label_14 = sub i32 10, 10
  store i32 %label_14, i32* %label_2
  %label_15 = load i32, i32* %label_0
  %label_16 = sub i32 10, %label_15
  store i32 %label_16, i32* %label_2
  %label_17 = load i32, i32* %label_0
  %label_18 = sub i32 %label_17, 10
  store i32 %label_18, i32* %label_2
  %label_19 = load i32, i32* %label_1
  %label_20 = load i32, i32* %label_0
  %label_21 = mul i32 %label_19, %label_20
  store i32 %label_21, i32* %label_2
  %label_22 = mul i32 10, 10
  store i32 %label_22, i32* %label_2
  %label_23 = load i32, i32* %label_0
  %label_24 = mul i32 10, %label_23
  store i32 %label_24, i32* %label_2
  %label_25 = load i32, i32* %label_0
  %label_26 = mul i32 %label_25, 10
  store i32 %label_26, i32* %label_2
  %label_27 = load i32, i32* %label_1
  %label_28 = load i32, i32* %label_1
  %label_29 = sdiv i32 %label_27, %label_28
  store i32 %label_29, i32* %label_2
  %label_30 = sdiv i32 10, 10
  store i32 %label_30, i32* %label_2
  %label_31 = load i32, i32* %label_0
  %label_32 = sdiv i32 10, %label_31
  store i32 %label_32, i32* %label_2
  %label_33 = load i32, i32* %label_0
  %label_34 = sdiv i32 %label_33, 10
  store i32 %label_34, i32* %label_2
  ret void
}



