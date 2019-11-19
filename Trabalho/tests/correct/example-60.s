	.text
	.file	"example-60.ll"
	.globl	nome                    # -- Begin function nome
	.p2align	4, 0x90
	.type	nome,@function
nome:                                   # @nome
	.cfi_startproc
# %bb.0:
	movl	-4(%rsp), %edx
	movl	-8(%rsp), %ecx
	movb	$1, %al
	testl	%edx, %edx
	je	.LBB0_1
# %bb.2:                                # %label7
	movzbl	%al, %eax
	retq
.LBB0_1:                                # %label6
	testl	%ecx, %ecx
	setne	%al
	movzbl	%al, %eax
	retq
.Lfunc_end0:
	.size	nome, .Lfunc_end0-nome
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
