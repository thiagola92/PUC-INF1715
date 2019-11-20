declare i32 @printf(i8*, ...)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label1 = alloca float*
  store float* (null), float** %label1
  %label2 = sitofp i32 97 to float
  %label3 = fcmp oeq float (null), %label2
  %label4 = zext i1 %label3 to i32
  %label5 = icmp eq i32 %label4, 1
  br i1 %label5, label %label6, label %label7

  label6:
  br label %label7

  label7:
  ret void
}



