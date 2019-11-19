	.text
	.file	"example-41.ll"
	.globl	fn                      # -- Begin function fn
	.p2align	4, 0x90
	.type	fn,@function
fn:                                     # @fn
	.cfi_startproc
# %bb.0:
	movl	$97, %eax
	retq
.Lfunc_end0:
	.size	fn, .Lfunc_end0-fn
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	fn
	addl	$98, %eax
	movl	%eax, c(%rip)
	popq	%rax
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
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

	.type	c,@object               # @c
	.bss
	.globl	c
	.p2align	2
c:
	.long	0                       # 0x0
	.size	c, 4


	.section	".note.GNU-stack","",@progbits
