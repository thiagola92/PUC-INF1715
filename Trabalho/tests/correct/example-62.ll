declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @nome(i32, i32) {
  %label_2 = alloca i32
  store i32 %0, i32* %label_2
  %label_3 = alloca i32
  store i32 %1, i32* %label_3
  %label_4 = alloca i32
  %label_9 = load i32, i32* %label_2
  %label_5 = icmp ne i32 %label_9, 0
  br i1 %label_5, label %label_6, label %label_8

  label_8:
  %label_12 = load i32, i32* %label_3
  %label_10 = icmp ne i32 %label_12, 0
  br i1 %label_10, label %label_6, label %label_7

  label_6:
  br label %label_13

  label_7:
  br label %label_13

  label_13:
  %label_14 = phi i1 [ true, %label_6 ], [ false, %label_7 ]
  %label_11 = zext i1 %label_14 to i32
  store i32 %label_11, i32* %label_4
  %label_19 = load i32, i32* %label_2
  %label_15 = icmp ne i32 %label_19, 0
  br i1 %label_15, label %label_18, label %label_17

  label_18:
  %label_22 = load i32, i32* %label_3
  %label_20 = icmp ne i32 %label_22, 0
  br i1 %label_20, label %label_16, label %label_17

  label_16:
  br label %label_23

  label_17:
  br label %label_23

  label_23:
  %label_24 = phi i1 [ true, %label_16 ], [ false, %label_17 ]
  %label_21 = zext i1 %label_24 to i32
  store i32 %label_21, i32* %label_4
  ret void
}



