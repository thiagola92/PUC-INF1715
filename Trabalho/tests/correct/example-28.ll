define void @main() {
  %label1 = alloca i32
  %label2 = alloca float
  store i32 (null), i32* %label1
  store float (null), float* %label2
  store i32 (null), i32* %label1
  ret void
}



