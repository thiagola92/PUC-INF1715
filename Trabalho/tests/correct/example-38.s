	.text
	.file	"example-38.ll"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %label30
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
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


	.section	".note.GNU-stack","",@progbits
