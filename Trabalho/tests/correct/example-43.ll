declare i32 @printf(i8*, ...)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label1 = alloca i32*
  store i32* (null), i32** %label1
  %label2 = sitofp i32 (null) to float
  %label3 = sitofp i32 97 to float
  %label4 = fcmp oeq float %label2, %label3
  %label5 = zext i1 %label4 to i32
  %label6 = icmp eq i32 %label5, 1
  br i1 %label6, label %label7, label %label8

  label7:
  br label %label8

  label8:
  ret void
}



