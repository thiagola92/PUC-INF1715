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
  %label_12 = load i32, i32* %label_3
  %label_6 = icmp ne i32 %label_12, 0
  br i1 %label_6, label %label_7, label %label_8

  label_7:
  br label %label_13

  label_8:
  br label %label_13

  label_13:
  %label_14 = phi i1 [ true, %label_7 ], [ false, %label_8 ]
  %label_10 = zext i1 %label_14 to i32
  store i32 %label_10, i32* %label_4
  %label_21 = load i32, i32* %label_2
  %label_15 = icmp ne i32 %label_21, 0
  br i1 %label_15, label %label_19, label %label_18

  label_19:
  %label_22 = load i32, i32* %label_3
  %label_16 = icmp ne i32 %label_22, 0
  br i1 %label_16, label %label_17, label %label_18

  label_17:
  br label %label_23

  label_18:
  br label %label_23

  label_23:
  %label_24 = phi i1 [ true, %label_17 ], [ false, %label_18 ]
  %label_20 = zext i1 %label_24 to i32
  store i32 %label_20, i32* %label_4
  ret void
}



