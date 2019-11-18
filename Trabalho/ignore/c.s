	.text
	.file	"c.ll"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %label7
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

	.section	".note.GNU-stack","",@progbits
