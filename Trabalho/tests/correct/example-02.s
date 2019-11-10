	.text
	.file	"example-02.ll"
	.type	aaa,@object             # @aaa
	.bss
	.globl	aaa
aaa:
	.byte	0                       # 0x0
	.size	aaa, 1

	.type	bbb,@object             # @bbb
	.globl	bbb
bbb:
	.byte	0                       # 0x0
	.size	bbb, 1

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
