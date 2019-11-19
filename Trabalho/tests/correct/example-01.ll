declare i32 @printf(i8*, ...)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

@s = global i32 0
@normal_name = global i32 0
@long_long_long_long_long_long_name = global i32 0
@s1 = global i32 0
@s_1 = global i32 0
@abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_012345679 = global i32 0


