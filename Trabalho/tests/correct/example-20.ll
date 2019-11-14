define void @main() {
  %label1 = alloca i32
  %label2 = alloca i32
  %label3 = alloca i32
  br label %label4

  label4:
  %label7 = icmp ne i32 1, 0
  br i1 %label7, label %label6, label %label5

  label5:
  br label %label8

  label8:
  %label11 = icmp ne i32 0, 0
  br i1 %label11, label %label9, label %label10

  label9:
  %label12 = icmp ne i32 1, 0
  br label %label10

  label10:
  %label13 = phi i1 [ false, %label8 ], [ %label12, %label9 ]
  %label14 = zext i1 %label13 to i32
  %label15 = icmp ne i32 %label14, 0
  br label %label6

  label6:
  %label16 = phi i1 [ true, %label4 ], [ %label15, %label5 ]
  %label17 = zext i1 %label16 to i32
  store i32 %label17, i32* %label1
  br label %label18

  label18:
  br label %label21

  label21:
  %label24 = icmp ne i32 1, 0
  br i1 %label24, label %label22, label %label23

  label22:
  %label25 = icmp ne i32 0, 0
  br label %label23

  label23:
  %label26 = phi i1 [ false, %label21 ], [ %label25, %label22 ]
  %label27 = zext i1 %label26 to i32
  %label28 = icmp ne i32 %label27, 0
  br i1 %label28, label %label20, label %label19

  label19:
  %label29 = icmp ne i32 1, 0
  br label %label20

  label20:
  %label30 = phi i1 [ true, %label18 ], [ %label29, %label19 ]
  %label31 = zext i1 %label30 to i32
  store i32 %label31, i32* %label2
  br label %label32

  label32:
  %label35 = icmp ne i32 1, 0
  br i1 %label35, label %label34, label %label33

  label33:
  br label %label36

  label36:
  %label39 = icmp ne i32 0, 0
  br i1 %label39, label %label37, label %label38

  label37:
  %label40 = icmp ne i32 1, 0
  br label %label38

  label38:
  %label41 = phi i1 [ false, %label36 ], [ %label40, %label37 ]
  %label42 = zext i1 %label41 to i32
  %label43 = icmp ne i32 %label42, 0
  br label %label34

  label34:
  %label44 = phi i1 [ true, %label32 ], [ %label43, %label33 ]
  %label45 = zext i1 %label44 to i32
  store i32 %label45, i32* %label1
  br label %label46

  label46:
  br label %label49

  label49:
  %label52 = icmp ne i32 1, 0
  br i1 %label52, label %label50, label %label51

  label50:
  %label53 = icmp ne i32 0, 0
  br label %label51

  label51:
  %label54 = phi i1 [ false, %label49 ], [ %label53, %label50 ]
  %label55 = zext i1 %label54 to i32
  %label56 = icmp ne i32 %label55, 0
  br i1 %label56, label %label48, label %label47

  label47:
  %label57 = icmp ne i32 1, 0
  br label %label48

  label48:
  %label58 = phi i1 [ true, %label46 ], [ %label57, %label47 ]
  %label59 = zext i1 %label58 to i32
  store i32 %label59, i32* %label2
  ret void
}



