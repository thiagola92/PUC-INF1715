define void @main() {
  %label1 = alloca i32
  %label2 = alloca i32
  %label3 = alloca i32
  store i32 1, i32* %label3
  %label4 = load i32, i32* %label3
  %label5 = alloca i32
  store i32 2, i32* %label5
  %label6 = load i32, i32* %label5
  %label7 = alloca i32
  store i32 3, i32* %label7
  %label8 = load i32, i32* %label7
  %label9 = mul i32 %label6, %label8
  %label10 = add i32 %label4, %label9
  store i32 %label10, i32* %label1
  %label11 = alloca i32
  store i32 2, i32* %label11
  %label12 = load i32, i32* %label11
  %label13 = alloca i32
  store i32 3, i32* %label13
  %label14 = load i32, i32* %label13
  %label15 = mul i32 %label12, %label14
  %label16 = alloca i32
  store i32 1, i32* %label16
  %label17 = load i32, i32* %label16
  %label18 = add i32 %label15, %label17
  store i32 %label18, i32* %label2
  %label19 = alloca i32
  store i32 1, i32* %label19
  %label20 = load i32, i32* %label19
  %label21 = alloca i32
  store i32 2, i32* %label21
  %label22 = load i32, i32* %label21
  %label23 = alloca i32
  store i32 3, i32* %label23
  %label24 = load i32, i32* %label23
  %label25 = mul i32 %label22, %label24
  %label26 = add i32 %label20, %label25
  %label27 = alloca i32
  store i32 4, i32* %label27
  %label28 = load i32, i32* %label27
  %label29 = add i32 %label26, %label28
  store i32 %label29, i32* %label1
  %label30 = alloca i32
  store i32 1, i32* %label30
  %label31 = load i32, i32* %label30
  %label32 = alloca i32
  store i32 4, i32* %label32
  %label33 = load i32, i32* %label32
  %label34 = add i32 %label31, %label33
  %label35 = alloca i32
  store i32 2, i32* %label35
  %label36 = load i32, i32* %label35
  %label37 = alloca i32
  store i32 3, i32* %label37
  %label38 = load i32, i32* %label37
  %label39 = mul i32 %label36, %label38
  %label40 = add i32 %label34, %label39
  store i32 %label40, i32* %label2
  %label41 = alloca i32
  store i32 2, i32* %label41
  %label42 = load i32, i32* %label41
  %label43 = alloca i32
  store i32 3, i32* %label43
  %label44 = load i32, i32* %label43
  %label45 = mul i32 %label42, %label44
  %label46 = alloca i32
  store i32 1, i32* %label46
  %label47 = load i32, i32* %label46
  %label48 = add i32 %label45, %label47
  %label49 = alloca i32
  store i32 4, i32* %label49
  %label50 = load i32, i32* %label49
  %label51 = add i32 %label48, %label50
  store i32 %label51, i32* %label1
  %label52 = alloca i32
  store i32 1, i32* %label52
  %label53 = load i32, i32* %label52
  %label54 = alloca i32
  store i32 4, i32* %label54
  %label55 = load i32, i32* %label54
  %label56 = alloca i32
  store i32 2, i32* %label56
  %label57 = load i32, i32* %label56
  %label58 = mul i32 %label55, %label57
  %label59 = alloca i32
  store i32 3, i32* %label59
  %label60 = load i32, i32* %label59
  %label61 = mul i32 %label58, %label60
  %label62 = add i32 %label53, %label61
  store i32 %label62, i32* %label2
  ret void
}



