	.text
	.file	"example-02.ll"
	.type	.print.int,@object      # @.print.int
	.section	.rodata,"a",@progbits
	.globl	.print.int
.print.int:
	.asciz	"%d"
	.size	.print.int, 3

	.type	.print.float,@object    # @.print.float
	.globl	.print.float
.print.float:
	.asciz	"%f"
	.size	.print.float, 3

	.type	aaa,@object             # @aaa
	.bss
	.globl	aaa
	.p2align	2
aaa:
	.long	0                       # 0x0
	.size	aaa, 4

	.type	bbb,@object             # @bbb
	.globl	bbb
	.p2align	2
bbb:
	.long	0                       # 0x0
	.size	bbb, 4

	.type	ccc,@object             # @ccc
	.globl	ccc
	.p2align	2
ccc:
	.long	0                       # 0x0
	.size	ccc, 4

	.type	ddd,@object             # @ddd
	.globl	ddd
	.p2align	2
ddd:
	.long	0                       # float 0
	.size	ddd, 4

	.type	eee,@object             # @eee
	.globl	eee
	.p2align	3
eee:
	.quad	0
	.size	eee, 8

	.type	fff,@object             # @fff
	.globl	fff
	.p2align	3
fff:
	.quad	0
	.size	fff, 8


	.section	".note.GNU-stack","",@progbits
