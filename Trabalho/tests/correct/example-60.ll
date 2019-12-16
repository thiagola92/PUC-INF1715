declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define i32 @nome() {
  %label_0 = alloca i32
  %label_1 = alloca i32

  ; or
  %label_6 = load i32, i32* %label_0
  %label_2 = icmp ne i32 %label_6, 0
  br i1 %label_2, label %label_3, label %label_5

  label_5:
  %label_9 = load i32, i32* %label_1
  %label_7 = icmp ne i32 %label_9, 0
  br i1 %label_7, label %label_3, label %label_4

  label_3:
  br label %label_10

  label_4:
  br label %label_10

  label_10:
  %label_11 = phi i1 [ true, %label_3 ], [ false, %label_4 ]
  %label_8 = zext i1 %label_11 to i32
  ret i32 %label_8
  ret i32 0
}



