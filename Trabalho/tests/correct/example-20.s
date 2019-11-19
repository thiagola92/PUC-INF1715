	.text
	.file	"example-20.ll"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	movb	$1, %al
	testb	%al, %al
	je	.LBB0_2
# %bb.1:
	xorl	%eax, %eax
.LBB0_2:                                # %label6
	movzbl	%al, %ecx
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_4
# %bb.3:                                # %label12
	testl	%ecx, %ecx
	setne	%al
.LBB0_4:                                # %label13
	movzbl	%al, %eax
	movl	%eax, -8(%rsp)
	xorl	%eax, %eax
	testb	%al, %al
	movb	$1, %al
	xorl	%ecx, %ecx
	testb	%cl, %cl
	movzbl	%al, %eax
	movl	%eax, -12(%rsp)
	movb	$1, %al
	testb	%al, %al
	je	.LBB0_6
# %bb.5:
	xorl	%eax, %eax
.LBB0_6:                                # %label34
	movzbl	%al, %ecx
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_8
# %bb.7:                                # %label40
	testl	%ecx, %ecx
	setne	%al
.LBB0_8:                                # %label41
	movzbl	%al, %eax
	movl	%eax, -8(%rsp)
	xorl	%eax, %eax
	testb	%al, %al
	movb	$1, %al
	xorl	%ecx, %ecx
	testb	%cl, %cl
	movzbl	%al, %eax
	movl	%eax, -12(%rsp)
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
