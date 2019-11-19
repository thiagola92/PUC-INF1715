	.text
	.file	"example-62.ll"
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
	jne	.LBB0_2
# %bb.1:                                # %label9
	testl	%esi, %esi
	setne	%al
.LBB0_2:                                # %label10
	movzbl	%al, %eax
	movl	%eax, -12(%rsp)
	movl	-4(%rsp), %ecx
	movl	-8(%rsp), %eax
	testl	%ecx, %ecx
	je	.LBB0_3
# %bb.4:                                # %label18
	testl	%eax, %eax
	setne	%al
	jmp	.LBB0_5
.LBB0_3:
	xorl	%eax, %eax
.LBB0_5:                                # %label19
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
