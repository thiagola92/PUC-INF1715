; ModuleID = 'c.c'
source_filename = "c.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define void @test3() #0 {
  %1 = alloca i32*
  %2 = call noalias i8* @malloc(i64 12) #2
  %3 = bitcast i8* %2 to i32*
  store i32* %3, i32** %1
  %4 = load i32*, i32** %1
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  store i32 10, i32* %5
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @test2() #0 {
  %1 = alloca float*
  %2 = call noalias i8* @malloc(i64 12) #2
  %3 = bitcast i8* %2 to float*
  store float* %3, float** %1
  %4 = load float*, float** %1
  %5 = getelementptr inbounds float, float* %4, i64 0
  store float 1.000000e+01, float* %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @test1() #0 {
  %1 = alloca i8*
  %2 = call noalias i8* @malloc(i64 12) #2
  store i8* %2, i8** %1
  %3 = load i8*, i8** %1
  %4 = getelementptr inbounds i8, i8* %3, i64 0
  store i8 10, i8* %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.1-11 (tags/RELEASE_601/final)"}
