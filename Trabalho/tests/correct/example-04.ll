declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

@.print.string = constant [3 x i8] c"%s\00"

define void @first() {
  %label1 = alloca i32
  ret void
}

define void @second() {
  %label1 = alloca i32
  %label2 = alloca i32
  ret void
}

define void @third() {
  %label1 = alloca i32
  %label2 = alloca i32
  %label3 = alloca i32
  ret void
}

define void @fourth() {
  %label1 = alloca i32
  %label2 = alloca i32
  %label3 = alloca i32
  %label4 = alloca i32
  ret void
}

define void @fifth() {
  %label1 = alloca i32
  %label2 = alloca i32
  %label3 = alloca i32
  %label4 = alloca i32
  %label5 = alloca i32
  ret void
}



