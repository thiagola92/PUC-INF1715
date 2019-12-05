declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @first() {
  ret void
}

define void @main() {

  ; while
  br label %label_0

  label_0:
  %label_3 = icmp eq i32 1, 1
  br i1 %label_3, label %label_1, label %label_2

  label_1:
  br label %label_0

  label_2:

  ; while
  br label %label_4

  label_4:
  %label_7 = icmp eq i32 1, 1
  br i1 %label_7, label %label_5, label %label_6

  label_5:
  %label_8 = alloca i32
  br label %label_4

  label_6:

  ; while
  br label %label_9

  label_9:
  %label_12 = icmp eq i32 1, 1
  br i1 %label_12, label %label_10, label %label_11

  label_10:
  call void @first()
  br label %label_9

  label_11:

  ; while
  br label %label_13

  label_13:
  %label_16 = icmp eq i32 1, 1
  br i1 %label_16, label %label_14, label %label_15

  label_14:
  %label_17 = alloca i32
  call void @first()
  br label %label_13

  label_15:
  ret void
}



