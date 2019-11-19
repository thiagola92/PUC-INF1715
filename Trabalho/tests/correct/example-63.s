	.text
	.file	"example-63.ll"
	.globl	nome                    # -- Begin function nome
	.p2align	4, 0x90
	.type	nome,@function
nome:                                   # @nome
	.cfi_startproc
# %bb.0:
	movl	%edi, -4(%rsp)
	movl	%esi, -8(%rsp)
	testl	%esi, %esi
	je	.LBB0_1
# %bb.2:                                # %label10
	testl	%edi, %edi
	setne	%al
	jmp	.LBB0_3
.LBB0_1:
	xorl	%eax, %eax
.LBB0_3:                                # %label11
	movzbl	%al, %ecx
	movb	$1, %al
	testl	%edi, %edi
	jne	.LBB0_5
# %bb.4:                                # %label17
	testl	%ecx, %ecx
	setne	%al
.LBB0_5:                                # %label18
	movzbl	%al, %eax
	movl	%eax, -12(%rsp)
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
