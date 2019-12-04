declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define i32 @nome() {
  %label_0 = alloca i32
  %label_1 = alloca i32
  %label_8 = load i32, i32* %label_0
  %label_2 = icmp ne i32 %label_8, 0
  br i1 %label_2, label %label_4, label %label_6

  label_6:
  %label_9 = load i32, i32* %label_1
  %label_3 = icmp ne i32 %label_9, 0
  br i1 %label_3, label %label_4, label %label_5

  label_4:
  br label %label_10

  label_5:
  br label %label_10

  label_10:
  %label_11 = phi i1 [ true, %label_4 ], [ false, %label_5 ]
  %label_7 = zext i1 %label_11 to i32
  ret i32 %label_7
}



