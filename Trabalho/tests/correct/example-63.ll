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

  ; or
  %label_9 = load i32, i32* %label_2
  %label_5 = icmp ne i32 %label_9, 0
  br i1 %label_5, label %label_6, label %label_8

  label_8:

  ; and
  %label_16 = load i32, i32* %label_3
  %label_12 = icmp ne i32 %label_16, 0
  br i1 %label_12, label %label_15, label %label_14

  label_15:
  %label_19 = load i32, i32* %label_2
  %label_17 = icmp ne i32 %label_19, 0
  br i1 %label_17, label %label_13, label %label_14

  label_13:
  br label %label_20

  label_14:
  br label %label_20

  label_20:
  %label_21 = phi i1 [ true, %label_13 ], [ false, %label_14 ]
  %label_18 = zext i1 %label_21 to i32
  %label_10 = icmp ne i32 %label_18, 0
  br i1 %label_10, label %label_6, label %label_7

  label_6:
  br label %label_22

  label_7:
  br label %label_22

  label_22:
  %label_23 = phi i1 [ true, %label_6 ], [ false, %label_7 ]
  %label_11 = zext i1 %label_23 to i32
  store i32 %label_11, i32* %label_4
  ret void
}



