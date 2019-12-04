declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @first() {
  ret void
}

define void @second(i32) {
  %label_1 = alloca i32
  store i32 %0, i32* %label_1
  ret void
}

define void @third(i32, i32) {
  %label_2 = alloca i32
  store i32 %0, i32* %label_2
  %label_3 = alloca i32
  store i32 %1, i32* %label_3
  ret void
}

define void @fourth(i32, i32, i32) {
  %label_3 = alloca i32
  store i32 %0, i32* %label_3
  %label_4 = alloca i32
  store i32 %1, i32* %label_4
  %label_5 = alloca i32
  store i32 %2, i32* %label_5
  ret void
}



