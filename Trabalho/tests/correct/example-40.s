	.text
	.file	"example-40.ll"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	c,@object               # @c
	.bss
	.globl	c
c:
	.byte	0                       # 0x0
	.size	c, 1


	.section	".note.GNU-stack","",@progbits
