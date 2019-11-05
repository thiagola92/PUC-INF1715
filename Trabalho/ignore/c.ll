; ModuleID = 'c.c'
source_filename = "c.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@nome0 = dso_local global i32 1, align 4
@nome1 = dso_local global i32 1, align 4
@nome2 = dso_local global float 2.000000e+00, align 4
@nome3 = dso_local global i8 48, align 1
@nome4 = dso_local global i32* null, align 8
@nome5 = dso_local global [3 x i32] [i32 1, i32 2, i32 3], align 4
@nome6 = dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nome7() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nome8() #0 {
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nome9() #0 {
  %1 = load i32, i32* @nome0, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nome10(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @nome0, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nome11(i32, float) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  store i32 %0, i32* %3, align 4
  store float %1, float* %4, align 4
  %5 = load i32, i32* @nome0, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nome12() #0 {
  %1 = call i32 @nome9()
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nome13() #0 {
  %1 = call i32 @nome13()
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nome14() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.0-3 (tags/RELEASE_800/final)"}
