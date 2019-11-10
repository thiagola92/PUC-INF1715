define i32* @nome() {
  %1 = alloca [4 x i32]
  %2 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  store i32 99, i32* %2
  %3 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 1
  store i32 111, i32* %3
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 2
  store i32 101, i32* %4
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 3
  store i32 0, i32* %5
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i32 0, i32 0
  ret i32* %6
}



