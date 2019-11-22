declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

@.print.string = constant [3 x i8] c"%s\00"

define void @main() {
  %label1 = alloca i32**
  %label2 = mul i64 4, 2
  %label3 = call i8* @malloc(i64 %label2)
  %label4 = bitcast i8* %label3 to i32**

  ; assignment
  store i32** %label4, i32*** %label1
  ret void
}



