define void @main() {
  %label1 = alloca i32
  %label2 = alloca i32
  %label3 = alloca i32
  %label4 = alloca i32
  %label5 = alloca i32
  %label6 = alloca i32
  %label7 = alloca i32
  %label8 = alloca i32
  %label9 = alloca i32
  %label10 = alloca i32
  %label11 = alloca i32
  %label12 = alloca i32
  %label13 = alloca i32
  %label14 = alloca i32
  %label15 = alloca i32
  %label16 = alloca i32
  %label17 = add i32 1, 1
  %label18 = add i32 %label17, 1
  store i32 %label18, i32* %label1
  %label19 = sub i32 1, 1
  %label20 = sub i32 %label19, 1
  store i32 %label20, i32* %label2
  %label21 = mul i32 1, 1
  %label22 = mul i32 %label21, 1
  store i32 %label22, i32* %label3
  %label23 = sdiv i32 1, 1
  %label24 = sdiv i32 %label23, 1
  store i32 %label24, i32* %label4
  %label25 = add i32 1, 1
  %label26 = sub i32 %label25, 1
  store i32 %label26, i32* %label5
  %label27 = mul i32 1, 1
  %label28 = add i32 1, %label27
  store i32 %label28, i32* %label6
  %label29 = sdiv i32 1, 1
  %label30 = add i32 1, %label29
  store i32 %label30, i32* %label7
  %label31 = sub i32 1, 1
  %label32 = add i32 %label31, 1
  store i32 %label32, i32* %label8
  %label33 = mul i32 1, 1
  %label34 = add i32 %label33, 1
  store i32 %label34, i32* %label9
  %label35 = sdiv i32 1, 1
  %label36 = add i32 %label35, 1
  store i32 %label36, i32* %label10
  %label37 = add i32 1, 1
  %label38 = add i32 %label37, 1
  %label39 = add i32 1, %label38
  store i32 %label39, i32* %label11
  %label40 = add i32 1, 1
  %label41 = add i32 %label40, 1
  %label42 = sub i32 1, %label41
  store i32 %label42, i32* %label12
  %label43 = add i32 1, 1
  %label44 = add i32 %label43, 1
  %label45 = mul i32 1, %label44
  store i32 %label45, i32* %label13
  %label46 = add i32 1, 1
  %label47 = add i32 %label46, 1
  %label48 = sdiv i32 1, %label47
  store i32 %label48, i32* %label14
  %label49 = sdiv i32 1, 1
  %label50 = mul i32 %label49, 1
  store i32 %label50, i32* %label15
  %label51 = mul i32 1, 1
  %label52 = sdiv i32 %label51, 1
  store i32 %label52, i32* %label16
  ret void
}



