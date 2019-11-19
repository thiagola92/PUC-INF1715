	.text
	.file	"example-61.ll"
	.globl	nome                    # -- Begin function nome
	.p2align	4, 0x90
	.type	nome,@function
nome:                                   # @nome
	.cfi_startproc
# %bb.0:
	movl	%edi, -4(%rsp)
	movl	%esi, -8(%rsp)
	movb	$1, %al
	testl	%edi, %edi
	je	.LBB0_1
# %bb.2:                                # %label9
	movzbl	%al, %eax
	retq
.LBB0_1:                                # %label8
	testl	%esi, %esi
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
