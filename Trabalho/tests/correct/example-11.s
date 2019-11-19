	.text
	.file	"example-11.ll"
	.globl	first                   # -- Begin function first
	.p2align	4, 0x90
	.type	first,@function
first:                                  # @first
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end0:
	.size	first, .Lfunc_end0-first
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	movb	$1, %al
	.p2align	4, 0x90
.LBB1_1:                                # %label1
                                        # =>This Inner Loop Header: Depth=1
	testb	%al, %al
	jne	.LBB1_1
# %bb.2:                                # %label4
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB1_5
	.p2align	4, 0x90
.LBB1_4:                                # %label7
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	testb	%al, %al
	je	.LBB1_4
.LBB1_5:                                # %label8
	xorl	%ebx, %ebx
	testb	%bl, %bl
	jne	.LBB1_8
	.p2align	4, 0x90
.LBB1_7:                                # %label12
                                        # =>This Inner Loop Header: Depth=1
	callq	first
	testb	%bl, %bl
	je	.LBB1_7
.LBB1_8:                                # %label13
	xorl	%ebx, %ebx
	testb	%bl, %bl
	jne	.LBB1_11
	.p2align	4, 0x90
.LBB1_10:                               # %label16
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	callq	first
	testb	%bl, %bl
	je	.LBB1_10
.LBB1_11:                               # %label17
	leaq	-8(%rbp), %rsp
	popq	%rbx
	popq	%rbp
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


	.section	".note.GNU-stack","",@progbits
