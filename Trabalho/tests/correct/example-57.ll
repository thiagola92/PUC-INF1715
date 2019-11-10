define i32* @nome() {
  %1 = alloca i32*
  %2 = load i32*, i32** %1
  ret i32* %2
}



