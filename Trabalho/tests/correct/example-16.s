	.text
	.file	"example-16.ll"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	movl	$3, -4(%rsp)
	movl	$-1, -8(%rsp)
	movl	$1, -12(%rsp)
	movl	$1, -16(%rsp)
	movl	$1, -20(%rsp)
	movl	$2, -24(%rsp)
	movl	$2, -28(%rsp)
	movl	$1, -32(%rsp)
	movl	$2, -36(%rsp)
	movl	$2, -40(%rsp)
	movl	$4, -44(%rsp)
	movl	$-2, -48(%rsp)
	movl	$3, -52(%rsp)
	movl	$0, -56(%rsp)
	movl	$1, -60(%rsp)
	movl	$1, -64(%rsp)
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
