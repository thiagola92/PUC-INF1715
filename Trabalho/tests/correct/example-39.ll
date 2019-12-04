declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label_0 = alloca i32
  store i32 97, i32* %label_0
  %label_3 = load i32, i32* %label_0
  %label_4 = load i32, i32* %label_0
  %label_5 = icmp eq i32 %label_3, %label_4
  %label_6 = zext i1 %label_5 to i32
  %label_7 = icmp eq i32 %label_6, 1
  br i1 %label_7, label %label_1, label %label_2

  label_1:
  br label %label_2

  label_2:
  %label_10 = icmp eq i32 97, 97
  %label_11 = zext i1 %label_10 to i32
  %label_12 = icmp eq i32 %label_11, 1
  br i1 %label_12, label %label_8, label %label_9

  label_8:
  br label %label_9

  label_9:
  %label_15 = load i32, i32* %label_0
  %label_16 = icmp eq i32 97, %label_15
  %label_17 = zext i1 %label_16 to i32
  %label_18 = icmp eq i32 %label_17, 1
  br i1 %label_18, label %label_13, label %label_14

  label_13:
  br label %label_14

  label_14:
  ret void
}



