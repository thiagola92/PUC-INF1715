declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @first() {
  %label_0 = alloca i32
  ret void
}

define void @second() {
  %label_0 = alloca i32
  %label_1 = alloca i32
  ret void
}

define void @third() {
  %label_0 = alloca i32
  %label_1 = alloca i32
  %label_2 = alloca i32
  ret void
}

define void @fourth() {
  %label_0 = alloca i32
  %label_1 = alloca i32
  %label_2 = alloca i32
  %label_3 = alloca i32
  ret void
}

define void @fifth() {
  %label_0 = alloca i32
  %label_1 = alloca i32
  %label_2 = alloca i32
  %label_3 = alloca i32
  %label_4 = alloca i32
  ret void
}



