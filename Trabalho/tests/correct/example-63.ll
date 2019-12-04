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
  %label_11 = load i32, i32* %label_2
  %label_5 = icmp ne i32 %label_11, 0
  br i1 %label_5, label %label_7, label %label_9

  label_9:
  %label_18 = load i32, i32* %label_3
  %label_12 = icmp ne i32 %label_18, 0
  br i1 %label_12, label %label_16, label %label_15

  label_16:
  %label_19 = load i32, i32* %label_2
  %label_13 = icmp ne i32 %label_19, 0
  br i1 %label_13, label %label_14, label %label_15

  label_14:
  br label %label_20

  label_15:
  br label %label_20

  label_20:
  %label_21 = phi i1 [ true, %label_14 ], [ false, %label_15 ]
  %label_17 = zext i1 %label_21 to i32
  %label_6 = icmp ne i32 %label_17, 0
  br i1 %label_6, label %label_7, label %label_8

  label_7:
  br label %label_22

  label_8:
  br label %label_22

  label_22:
  %label_23 = phi i1 [ true, %label_7 ], [ false, %label_8 ]
  %label_10 = zext i1 %label_23 to i32
  store i32 %label_10, i32* %label_4
  ret void
}



