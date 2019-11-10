	.text
	.file	"example-23.ll"
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
	.globl	fn                      # -- Begin function fn
	.p2align	4, 0x90
	.type	fn,@function
fn:                                     # @fn
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end1:
	.size	fn, .Lfunc_end1-fn
	.cfi_endproc
                                        # -- End function
	.type	a,@object               # @a
	.bss
	.globl	a
	.p2align	2
a:
	.long	0                       # 0x0
	.size	a, 4


	.section	".note.GNU-stack","",@progbits
