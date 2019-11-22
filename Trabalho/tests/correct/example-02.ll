declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

@.print.string = constant [3 x i8] c"%s\00"

@aaa = global i32 0
@bbb = global i32 0
@ccc = global i32 0
@ddd = global float 0.000000e+00
@eee = global i32* null
@fff = global i32** null


