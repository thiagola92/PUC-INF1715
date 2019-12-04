declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @nome(i32, i32, i32) {
  %label_3 = alloca i32
  store i32 %0, i32* %label_3
  %label_4 = alloca i32
  store i32 %1, i32* %label_4
  %label_5 = alloca i32
  store i32 %2, i32* %label_5
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
  %label_16 = alloca i32
  %label_17 = alloca i32
  %label_18 = alloca i32
  %label_19 = alloca i32
  %label_20 = alloca i32
  %label_21 = alloca i32
  ret void
}



