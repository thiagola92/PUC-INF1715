define void @main() {
  %label1 = alloca i32
  %label2 = alloca i32
  %label3 = alloca i32
  %label4 = alloca i32
  store i32 10, i32* %label4
  %label5 = load i32, i32* %label4
  store i32 %label5, i32* %label1
  %label6 = alloca i32
  store i32 20, i32* %label6
  %label7 = load i32, i32* %label6
  store i32 %label7, i32* %label2
  %label8 = load i32, i32* %label2
  %label9 = load i32, i32* %label1
  %label10 = add i32 %label8, %label9
  store i32 %label10, i32* %label3
  %label11 = alloca i32
  store i32 10, i32* %label11
  %label12 = load i32, i32* %label11
  %label13 = alloca i32
  store i32 10, i32* %label13
  %label14 = load i32, i32* %label13
  %label15 = add i32 %label12, %label14
  store i32 %label15, i32* %label3
  %label16 = alloca i32
  store i32 10, i32* %label16
  %label17 = load i32, i32* %label16
  %label18 = load i32, i32* %label1
  %label19 = add i32 %label17, %label18
  store i32 %label19, i32* %label3
  %label20 = load i32, i32* %label1
  %label21 = alloca i32
  store i32 10, i32* %label21
  %label22 = load i32, i32* %label21
  %label23 = add i32 %label20, %label22
  store i32 %label23, i32* %label3
  %label24 = load i32, i32* %label2
  %label25 = load i32, i32* %label1
  %label26 = sub i32 %label24, %label25
  store i32 %label26, i32* %label3
  %label27 = alloca i32
  store i32 10, i32* %label27
  %label28 = load i32, i32* %label27
  %label29 = alloca i32
  store i32 10, i32* %label29
  %label30 = load i32, i32* %label29
  %label31 = sub i32 %label28, %label30
  store i32 %label31, i32* %label3
  %label32 = alloca i32
  store i32 10, i32* %label32
  %label33 = load i32, i32* %label32
  %label34 = load i32, i32* %label1
  %label35 = sub i32 %label33, %label34
  store i32 %label35, i32* %label3
  %label36 = load i32, i32* %label1
  %label37 = alloca i32
  store i32 10, i32* %label37
  %label38 = load i32, i32* %label37
  %label39 = sub i32 %label36, %label38
  store i32 %label39, i32* %label3
  %label40 = load i32, i32* %label2
  %label41 = load i32, i32* %label1
  %label42 = mul i32 %label40, %label41
  store i32 %label42, i32* %label3
  %label43 = alloca i32
  store i32 10, i32* %label43
  %label44 = load i32, i32* %label43
  %label45 = alloca i32
  store i32 10, i32* %label45
  %label46 = load i32, i32* %label45
  %label47 = mul i32 %label44, %label46
  store i32 %label47, i32* %label3
  %label48 = alloca i32
  store i32 10, i32* %label48
  %label49 = load i32, i32* %label48
  %label50 = load i32, i32* %label1
  %label51 = mul i32 %label49, %label50
  store i32 %label51, i32* %label3
  %label52 = load i32, i32* %label1
  %label53 = alloca i32
  store i32 10, i32* %label53
  %label54 = load i32, i32* %label53
  %label55 = mul i32 %label52, %label54
  store i32 %label55, i32* %label3
  %label56 = load i32, i32* %label2
  %label57 = load i32, i32* %label2
  %label58 = sdiv i32 %label56, %label57
  store i32 %label58, i32* %label3
  %label59 = alloca i32
  store i32 10, i32* %label59
  %label60 = load i32, i32* %label59
  %label61 = alloca i32
  store i32 10, i32* %label61
  %label62 = load i32, i32* %label61
  %label63 = sdiv i32 %label60, %label62
  store i32 %label63, i32* %label3
  %label64 = alloca i32
  store i32 10, i32* %label64
  %label65 = load i32, i32* %label64
  %label66 = load i32, i32* %label1
  %label67 = sdiv i32 %label65, %label66
  store i32 %label67, i32* %label3
  %label68 = load i32, i32* %label1
  %label69 = alloca i32
  store i32 10, i32* %label69
  %label70 = load i32, i32* %label69
  %label71 = sdiv i32 %label68, %label70
  store i32 %label71, i32* %label3
  ret void
}



