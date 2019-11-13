define void @first() {
  ret void
}

define void @main() {
  %label1 = icmp eq i32 1, 1
  br i1 %label1, label %label2, label %label3

  label2:
  %label4 = alloca i32
  call void @first()
  br label %label3

  label3:
  %label5 = icmp eq i32 0, 1
  br i1 %label5, label %label6, label %label8

  label6:
  %label9 = alloca i32
  call void @first()
  br label %label8

  label7:
  %label10 = alloca i32
  call void @first()
  br label %label8

  label8:
  %label11 = icmp eq i32 1, 1
  br i1 %label11, label %label12, label %label13

  label12:
  %label14 = alloca i32
  %label15 = icmp eq i32 1, 1
  br i1 %label15, label %label16, label %label17

  label16:
  %label18 = alloca i32
  call void @first()
  br label %label17

  label17:
  call void @first()
  br label %label13

  label13:
  %label19 = icmp eq i32 1, 1
  br i1 %label19, label %label20, label %label21

  label20:
  %label22 = alloca i32
  %label23 = icmp eq i32 0, 1
  br i1 %label23, label %label24, label %label26

  label24:
  %label27 = alloca i32
  call void @first()
  br label %label26

  label25:
  %label28 = alloca i32
  call void @first()
  br label %label26

  label26:
  call void @first()
  br label %label21

  label21:
  %label29 = icmp eq i32 0, 1
  br i1 %label29, label %label30, label %label32

  label30:
  %label33 = alloca i32
  call void @first()
  br label %label32

  label31:
  %label34 = alloca i32
  %label35 = icmp eq i32 1, 1
  br i1 %label35, label %label36, label %label37

  label36:
  %label38 = alloca i32
  call void @first()
  br label %label37

  label37:
  call void @first()
  br label %label32

  label32:
  %label39 = icmp eq i32 0, 1
  br i1 %label39, label %label40, label %label42

  label40:
  %label43 = alloca i32
  call void @first()
  br label %label42

  label41:
  %label44 = alloca i32
  %label45 = icmp eq i32 0, 1
  br i1 %label45, label %label46, label %label48

  label46:
  %label49 = alloca i32
  call void @first()
  br label %label48

  label47:
  %label50 = alloca i32
  call void @first()
  br label %label48

  label48:
  call void @first()
  br label %label42

  label42:
  ret void
}



