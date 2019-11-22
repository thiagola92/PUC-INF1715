declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

@.print.string = constant [3 x i8] c"%s\00"

define void @main() {
  %label1 = alloca i32
  %label2 = alloca i32
  %label3 = alloca i32

  ; assignment
  store i32 10, i32* %label1

  ; assignment
  store i32 20, i32* %label2
  %label4 = load i32, i32* %label2
  %label5 = load i32, i32* %label1
  %label6 = add i32 %label4, %label5

  ; assignment
  store i32 %label6, i32* %label3
  %label7 = add i32 10, 10

  ; assignment
  store i32 %label7, i32* %label3
  %label8 = load i32, i32* %label1
  %label9 = add i32 10, %label8

  ; assignment
  store i32 %label9, i32* %label3
  %label10 = load i32, i32* %label1
  %label11 = add i32 %label10, 10

  ; assignment
  store i32 %label11, i32* %label3
  %label12 = load i32, i32* %label2
  %label13 = load i32, i32* %label1
  %label14 = sub i32 %label12, %label13

  ; assignment
  store i32 %label14, i32* %label3
  %label15 = sub i32 10, 10

  ; assignment
  store i32 %label15, i32* %label3
  %label16 = load i32, i32* %label1
  %label17 = sub i32 10, %label16

  ; assignment
  store i32 %label17, i32* %label3
  %label18 = load i32, i32* %label1
  %label19 = sub i32 %label18, 10

  ; assignment
  store i32 %label19, i32* %label3
  %label20 = load i32, i32* %label2
  %label21 = load i32, i32* %label1
  %label22 = mul i32 %label20, %label21

  ; assignment
  store i32 %label22, i32* %label3
  %label23 = mul i32 10, 10

  ; assignment
  store i32 %label23, i32* %label3
  %label24 = load i32, i32* %label1
  %label25 = mul i32 10, %label24

  ; assignment
  store i32 %label25, i32* %label3
  %label26 = load i32, i32* %label1
  %label27 = mul i32 %label26, 10

  ; assignment
  store i32 %label27, i32* %label3
  %label28 = load i32, i32* %label2
  %label29 = load i32, i32* %label2
  %label30 = sdiv i32 %label28, %label29

  ; assignment
  store i32 %label30, i32* %label3
  %label31 = sdiv i32 10, 10

  ; assignment
  store i32 %label31, i32* %label3
  %label32 = load i32, i32* %label1
  %label33 = sdiv i32 10, %label32

  ; assignment
  store i32 %label33, i32* %label3
  %label34 = load i32, i32* %label1
  %label35 = sdiv i32 %label34, 10

  ; assignment
  store i32 %label35, i32* %label3
  ret void
}



