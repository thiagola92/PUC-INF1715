	.text
	.file	"example-24.ll"
	.globl	first                   # -- Begin function first
	.p2align	4, 0x90
	.type	first,@function
first:                                  # @first
	.cfi_startproc
# %bb.0:
	movl	$1, %eax
	retq
.Lfunc_end0:
	.size	first, .Lfunc_end0-first
	.cfi_endproc
                                        # -- End function
	.globl	second                  # -- Begin function second
	.p2align	4, 0x90
	.type	second,@function
second:                                 # @second
	.cfi_startproc
# %bb.0:
	movl	%edi, -4(%rsp)
	movl	$1, %eax
	retq
.Lfunc_end1:
	.size	second, .Lfunc_end1-second
	.cfi_endproc
                                        # -- End function
	.globl	third                   # -- Begin function third
	.p2align	4, 0x90
	.type	third,@function
third:                                  # @third
	.cfi_startproc
# %bb.0:
	movl	%edi, -4(%rsp)
	movl	%esi, -8(%rsp)
	movl	$97, %eax
	retq
.Lfunc_end2:
	.size	third, .Lfunc_end2-third
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function fourth
.LCPI3_0:
	.long	1065353216              # float 1
	.text
	.globl	fourth
	.p2align	4, 0x90
	.type	fourth,@function
fourth:                                 # @fourth
	.cfi_startproc
# %bb.0:
	movl	%edi, -4(%rsp)
	movl	%esi, -8(%rsp)
	movss	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	retq
.Lfunc_end3:
	.size	fourth, .Lfunc_end3-fourth
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	callq	first
	movl	%eax, 8(%rsp)
	movl	%eax, %edi
	callq	second
	movl	%eax, 12(%rsp)
	movl	8(%rsp), %edi
	movl	%eax, %esi
	callq	third
	movl	%eax, 20(%rsp)
	movl	8(%rsp), %edi
	movl	12(%rsp), %esi
	callq	fourth
	movss	%xmm0, 16(%rsp)
	addq	$24, %rsp
	retq
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
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
