define void @first() {
  %label1 = alloca i32
  %label2 = alloca i32
  call void @first()
  call void @first()
  ret void
}



