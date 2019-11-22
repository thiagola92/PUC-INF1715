declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

@.print.string = constant [3 x i8] c"%s\00"

define void @first() {
  ret void
}

define void @main() {
  br label %label1

  label1:
  %label2 = icmp eq i32 1, 1
  br i1 %label2, label %label3, label %label4

  label3:
  br label %label1

  label4:
  br label %label5

  label5:
  %label6 = icmp eq i32 1, 1
  br i1 %label6, label %label7, label %label8

  label7:
  %label9 = alloca i32
  br label %label5

  label8:
  br label %label10

  label10:
  %label11 = icmp eq i32 1, 1
  br i1 %label11, label %label12, label %label13

  label12:
  call void @first()
  br label %label10

  label13:
  br label %label14

  label14:
  %label15 = icmp eq i32 1, 1
  br i1 %label15, label %label16, label %label17

  label16:
  %label18 = alloca i32
  call void @first()
  br label %label14

  label17:
  ret void
}



