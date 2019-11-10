; ModuleID = 'c.c'
source_filename = "c.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define i32* @nome() #0 {
  %1 = alloca [4 x i32], align 16
  %2 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  store i32 99, i32* %2, align 16
  %3 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 1
  store i32 111, i32* %3, align 4
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 2
  store i32 101, i32* %4, align 8
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 3
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i32 0, i32 0
  ret i32* %6
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.1-11 (tags/RELEASE_601/final)"}
