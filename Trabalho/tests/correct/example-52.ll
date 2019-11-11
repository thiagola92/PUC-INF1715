define void @main() {
  %label1 = alloca i32
  %label2 = alloca float
  store float 1.000000, float* %label2
  %label3 = load float, float* %label2
  %label4 = icmp slt float (null), %label3
  %label5 = zext i1 %label4 to i32
  store i32 %label5, i32* %label1
  ret void
}



