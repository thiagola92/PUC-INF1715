declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

@.print.string = constant [3 x i8] c"%s\00"

define void @main() {
  %label1 = alloca i32
  %label2 = sitofp i32 97 to float
  %label3 = fptrunc double 1.000000 to float
  %label4 = fcmp olt float %label2, %label3
  %label5 = zext i1 %label4 to i32

  ; assignment
  store i32 %label5, i32* %label1
  ret void
}



