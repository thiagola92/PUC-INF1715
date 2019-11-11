define i32* @nome() {
  %label1 = alloca i32*
  %label2 = load i32*, i32** %label1
  ret i32* %label2
}



