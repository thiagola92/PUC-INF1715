declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_0 = alloca i32
  %label_1 = alloca i32
  %label_2 = alloca i32
  %label_3 = alloca i32
  %label_4 = alloca i32
  %label_5 = alloca i32
  %label_6 = alloca i32
  %label_7 = alloca i32
  %label_8 = alloca i32
  %label_9 = alloca i32
  %label_10 = alloca i32
  %label_11 = alloca i32
  %label_12 = alloca i32
  %label_13 = alloca i32
  %label_14 = alloca i32
  %label_15 = alloca i32
  %label_16 = add i32 1, 1
  %label_17 = add i32 %label_16, 1
  store i32 %label_17, i32* %label_0
  %label_18 = sub i32 1, 1
  %label_19 = sub i32 %label_18, 1
  store i32 %label_19, i32* %label_1
  %label_20 = mul i32 1, 1
  %label_21 = mul i32 %label_20, 1
  store i32 %label_21, i32* %label_2
  %label_22 = sdiv i32 1, 1
  %label_23 = sdiv i32 %label_22, 1
  store i32 %label_23, i32* %label_3
  %label_24 = add i32 1, 1
  %label_25 = sub i32 %label_24, 1
  store i32 %label_25, i32* %label_4
  %label_26 = mul i32 1, 1
  %label_27 = add i32 1, %label_26
  store i32 %label_27, i32* %label_5
  %label_28 = sdiv i32 1, 1
  %label_29 = add i32 1, %label_28
  store i32 %label_29, i32* %label_6
  %label_30 = sub i32 1, 1
  %label_31 = add i32 %label_30, 1
  store i32 %label_31, i32* %label_7
  %label_32 = mul i32 1, 1
  %label_33 = add i32 %label_32, 1
  store i32 %label_33, i32* %label_8
  %label_34 = sdiv i32 1, 1
  %label_35 = add i32 %label_34, 1
  store i32 %label_35, i32* %label_9
  %label_36 = add i32 1, 1
  %label_37 = add i32 %label_36, 1
  %label_38 = add i32 1, %label_37
  store i32 %label_38, i32* %label_10
  %label_39 = add i32 1, 1
  %label_40 = add i32 %label_39, 1
  %label_41 = sub i32 1, %label_40
  store i32 %label_41, i32* %label_11
  %label_42 = add i32 1, 1
  %label_43 = add i32 %label_42, 1
  %label_44 = mul i32 1, %label_43
  store i32 %label_44, i32* %label_12
  %label_45 = add i32 1, 1
  %label_46 = add i32 %label_45, 1
  %label_47 = sdiv i32 1, %label_46
  store i32 %label_47, i32* %label_13
  %label_48 = sdiv i32 1, 1
  %label_49 = mul i32 %label_48, 1
  store i32 %label_49, i32* %label_14
  %label_50 = mul i32 1, 1
  %label_51 = sdiv i32 %label_50, 1
  store i32 %label_51, i32* %label_15
  ret void
}



