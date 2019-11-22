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
  br label %label4

  label4:
  %label7 = icmp ne i32 0, 0
  br i1 %label7, label %label5, label %label6

  label5:
  %label8 = icmp ne i32 1, 0
  br label %label6

  label6:
  %label9 = phi i1 [ false, %label4 ], [ %label8, %label5 ]
  %label10 = zext i1 %label9 to i32
  br label %label11

  label11:
  %label14 = icmp ne i32 1, 0
  br i1 %label14, label %label13, label %label12

  label12:
  %label15 = icmp ne i32 %label10, 0
  br label %label13

  label13:
  %label16 = phi i1 [ true, %label11 ], [ %label15, %label12 ]
  %label17 = zext i1 %label16 to i32

  ; assignment
  store i32 %label17, i32* %label1
  br label %label18

  label18:
  %label21 = icmp ne i32 1, 0
  br i1 %label21, label %label19, label %label20

  label19:
  %label22 = icmp ne i32 0, 0
  br label %label20

  label20:
  %label23 = phi i1 [ false, %label18 ], [ %label22, %label19 ]
  %label24 = zext i1 %label23 to i32
  br label %label25

  label25:
  %label28 = icmp ne i32 %label24, 0
  br i1 %label28, label %label27, label %label26

  label26:
  %label29 = icmp ne i32 1, 0
  br label %label27

  label27:
  %label30 = phi i1 [ true, %label25 ], [ %label29, %label26 ]
  %label31 = zext i1 %label30 to i32

  ; assignment
  store i32 %label31, i32* %label2
  br label %label32

  label32:
  %label35 = icmp ne i32 0, 0
  br i1 %label35, label %label33, label %label34

  label33:
  %label36 = icmp ne i32 1, 0
  br label %label34

  label34:
  %label37 = phi i1 [ false, %label32 ], [ %label36, %label33 ]
  %label38 = zext i1 %label37 to i32
  br label %label39

  label39:
  %label42 = icmp ne i32 1, 0
  br i1 %label42, label %label41, label %label40

  label40:
  %label43 = icmp ne i32 %label38, 0
  br label %label41

  label41:
  %label44 = phi i1 [ true, %label39 ], [ %label43, %label40 ]
  %label45 = zext i1 %label44 to i32

  ; assignment
  store i32 %label45, i32* %label1
  br label %label46

  label46:
  %label49 = icmp ne i32 1, 0
  br i1 %label49, label %label47, label %label48

  label47:
  %label50 = icmp ne i32 0, 0
  br label %label48

  label48:
  %label51 = phi i1 [ false, %label46 ], [ %label50, %label47 ]
  %label52 = zext i1 %label51 to i32
  br label %label53

  label53:
  %label56 = icmp ne i32 %label52, 0
  br i1 %label56, label %label55, label %label54

  label54:
  %label57 = icmp ne i32 1, 0
  br label %label55

  label55:
  %label58 = phi i1 [ true, %label53 ], [ %label57, %label54 ]
  %label59 = zext i1 %label58 to i32

  ; assignment
  store i32 %label59, i32* %label2
  ret void
}



