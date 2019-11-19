	.text
	.file	"example-18.ll"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	movl	$1, %eax
	testl	%eax, %eax
	je	.LBB0_1
# %bb.2:                                # %label22
	setne	%al
	jmp	.LBB0_3
.LBB0_1:
	xorl	%eax, %eax
.LBB0_3:                                # %label23
	movzbl	%al, %eax
	movl	%eax, -4(%rsp)
	movl	$1, %eax
	movb	$1, %cl
	testb	%cl, %cl
	jne	.LBB0_4
# %bb.5:                                # %label33
	testl	%eax, %eax
	setne	%al
	jmp	.LBB0_6
.LBB0_4:
	xorl	%eax, %eax
.LBB0_6:                                # %label34
	movzbl	%al, %eax
	movl	%eax, -8(%rsp)
	movl	$1, %eax
	movb	$1, %cl
	testb	%cl, %cl
	jne	.LBB0_7
# %bb.8:                                # %label44
	testl	%eax, %eax
	setne	%al
	jmp	.LBB0_9
.LBB0_7:
	xorl	%eax, %eax
.LBB0_9:                                # %label45
	movzbl	%al, %eax
	movl	%eax, -12(%rsp)
	movl	$1, %eax
	testl	%eax, %eax
	je	.LBB0_10
# %bb.11:                               # %label55
	setne	%al
	jmp	.LBB0_12
.LBB0_10:
	xorl	%eax, %eax
.LBB0_12:                               # %label56
	movzbl	%al, %eax
	movl	%eax, -16(%rsp)
	movb	$1, %al
	testb	%al, %al
	movl	$0, -20(%rsp)
	movl	$1, %eax
	testl	%eax, %eax
	movl	$0, -24(%rsp)
	movl	$1, %eax
	movb	$1, %cl
	testb	%cl, %cl
	jne	.LBB0_13
# %bb.14:                               # %label88
	testl	%eax, %eax
	setne	%al
	jmp	.LBB0_15
.LBB0_13:
	xorl	%eax, %eax
.LBB0_15:                               # %label89
	movzbl	%al, %eax
	movl	%eax, -28(%rsp)
	movb	$1, %al
	testb	%al, %al
	movl	$0, -32(%rsp)
	movl	$1, %eax
	movb	$1, %cl
	testb	%cl, %cl
	jne	.LBB0_16
# %bb.17:                               # %label110
	testl	%eax, %eax
	setne	%al
	jmp	.LBB0_18
.LBB0_16:
	xorl	%eax, %eax
.LBB0_18:                               # %label111
	movzbl	%al, %eax
	movl	%eax, -36(%rsp)
	movl	$1, %eax
	testl	%eax, %eax
	movl	$0, -40(%rsp)
	movl	$1, %eax
	testl	%eax, %eax
	je	.LBB0_19
# %bb.20:                               # %label132
	setne	%al
	jmp	.LBB0_21
.LBB0_19:
	xorl	%eax, %eax
.LBB0_21:                               # %label133
	movzbl	%al, %eax
	movl	%eax, -44(%rsp)
	movl	$1, %eax
	testl	%eax, %eax
	movl	$0, -48(%rsp)
	movl	$1, %eax
	movb	$1, %cl
	testb	%cl, %cl
	jne	.LBB0_22
# %bb.23:                               # %label154
	testl	%eax, %eax
	setne	%al
	jmp	.LBB0_24
.LBB0_22:
	xorl	%eax, %eax
.LBB0_24:                               # %label155
	movzbl	%al, %eax
	movl	%eax, -52(%rsp)
	movl	$1, %eax
	testl	%eax, %eax
	je	.LBB0_25
# %bb.26:                               # %label165
	setne	%al
	jmp	.LBB0_27
.LBB0_25:
	xorl	%eax, %eax
.LBB0_27:                               # %label166
	movzbl	%al, %eax
	movl	%eax, -56(%rsp)
	movl	$1, %eax
	movb	$1, %cl
	testb	%cl, %cl
	jne	.LBB0_28
# %bb.29:                               # %label176
	testl	%eax, %eax
	setne	%al
	jmp	.LBB0_30
.LBB0_28:
	xorl	%eax, %eax
.LBB0_30:                               # %label177
	movzbl	%al, %eax
	movl	%eax, -60(%rsp)
	movl	$1, %eax
	testl	%eax, %eax
	movl	$0, -64(%rsp)
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
