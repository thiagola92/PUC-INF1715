	.text
	.file	"example-10.ll"
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
	jne	.LBB1_2
# %bb.1:                                # %label2
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	callq	first
.LBB1_2:                                # %label3
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_4
# %bb.3:                                # %label6
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	callq	first
.LBB1_4:                                # %label8
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB1_8
# %bb.5:                                # %label12
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB1_7
# %bb.6:                                # %label16
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	callq	first
.LBB1_7:                                # %label17
	callq	first
.LBB1_8:                                # %label13
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB1_12
# %bb.9:                                # %label20
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_11
# %bb.10:                               # %label24
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	callq	first
.LBB1_11:                               # %label26
	callq	first
.LBB1_12:                               # %label21
	movb	$1, %bl
	testb	%bl, %bl
	jne	.LBB1_14
# %bb.13:                               # %label30
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	callq	first
.LBB1_14:                               # %label32
	testb	%bl, %bl
	jne	.LBB1_16
# %bb.15:                               # %label40
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	callq	first
.LBB1_16:                               # %label42
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
