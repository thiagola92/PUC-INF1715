declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define i32 @nome(i32, i32) {
  %label_2 = alloca i32
  store i32 %0, i32* %label_2
  %label_3 = alloca i32
  store i32 %1, i32* %label_3

  ; or
  %label_8 = load i32, i32* %label_2
  %label_4 = icmp ne i32 %label_8, 0
  br i1 %label_4, label %label_5, label %label_7

  label_7:
  %label_11 = load i32, i32* %label_3
  %label_9 = icmp ne i32 %label_11, 0
  br i1 %label_9, label %label_5, label %label_6

  label_5:
  br label %label_12

  label_6:
  br label %label_12

  label_12:
  %label_13 = phi i1 [ true, %label_5 ], [ false, %label_6 ]
  %label_10 = zext i1 %label_13 to i32
  ret i32 %label_10
  ret i32 0
}



