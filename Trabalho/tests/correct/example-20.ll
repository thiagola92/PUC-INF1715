declare i32 @printf(i8*, ...)
declare i8* @malloc(i64)

@.print.char = constant [3 x i8] c"%c\00"
@.print.int = constant [3 x i8] c"%d\00"
@.print.float = constant [3 x i8] c"%f\00"

define void @main() {
  %label1 = alloca i32
  %label2 = alloca i32
  %label3 = alloca i32
  %label4 = icmp ne i32 1, 0
  br i1 %label4, label %label6, label %label8

  label8:
  %label10 = icmp ne i32 0, 0
  br i1 %label10, label %label14, label %label13

  label14:
  %label11 = icmp ne i32 1, 0
  br i1 %label11, label %label12, label %label13

  label12:
  br label %label16

  label13:
  br label %label16

  label16:
  %label17 = phi i1 [ true, %label12 ], [ false, %label13 ]
  %label15 = zext i1 %label17 to i32
  %label5 = icmp ne i32 %label15, 0
  br i1 %label5, label %label6, label %label7

  label6:
  br label %label18

  label7:
  br label %label18

  label18:
  %label19 = phi i1 [ true, %label6 ], [ false, %label7 ]
  %label9 = zext i1 %label19 to i32
  store i32 %label9, i32* %label1
  %label26 = icmp ne i32 1, 0
  br i1 %label26, label %label30, label %label29

  label30:
  %label27 = icmp ne i32 0, 0
  br i1 %label27, label %label28, label %label29

  label28:
  br label %label32

  label29:
  br label %label32

  label32:
  %label33 = phi i1 [ true, %label28 ], [ false, %label29 ]
  %label31 = zext i1 %label33 to i32
  %label20 = icmp ne i32 %label31, 0
  br i1 %label20, label %label22, label %label24

  label24:
  %label21 = icmp ne i32 1, 0
  br i1 %label21, label %label22, label %label23

  label22:
  br label %label34

  label23:
  br label %label34

  label34:
  %label35 = phi i1 [ true, %label22 ], [ false, %label23 ]
  %label25 = zext i1 %label35 to i32
  store i32 %label25, i32* %label2
  %label36 = icmp ne i32 1, 0
  br i1 %label36, label %label38, label %label40

  label40:
  %label42 = icmp ne i32 0, 0
  br i1 %label42, label %label46, label %label45

  label46:
  %label43 = icmp ne i32 1, 0
  br i1 %label43, label %label44, label %label45

  label44:
  br label %label48

  label45:
  br label %label48

  label48:
  %label49 = phi i1 [ true, %label44 ], [ false, %label45 ]
  %label47 = zext i1 %label49 to i32
  %label37 = icmp ne i32 %label47, 0
  br i1 %label37, label %label38, label %label39

  label38:
  br label %label50

  label39:
  br label %label50

  label50:
  %label51 = phi i1 [ true, %label38 ], [ false, %label39 ]
  %label41 = zext i1 %label51 to i32
  store i32 %label41, i32* %label1
  %label58 = icmp ne i32 1, 0
  br i1 %label58, label %label62, label %label61

  label62:
  %label59 = icmp ne i32 0, 0
  br i1 %label59, label %label60, label %label61

  label60:
  br label %label64

  label61:
  br label %label64

  label64:
  %label65 = phi i1 [ true, %label60 ], [ false, %label61 ]
  %label63 = zext i1 %label65 to i32
  %label52 = icmp ne i32 %label63, 0
  br i1 %label52, label %label54, label %label56

  label56:
  %label53 = icmp ne i32 1, 0
  br i1 %label53, label %label54, label %label55

  label54:
  br label %label66

  label55:
  br label %label66

  label66:
  %label67 = phi i1 [ true, %label54 ], [ false, %label55 ]
  %label57 = zext i1 %label67 to i32
  store i32 %label57, i32* %label2
  ret void
}



