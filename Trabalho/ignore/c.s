	.text
	.file	"c.c"
	.globl	nome                    # -- Begin function nome
	.p2align	4, 0x90
	.type	nome,@function
nome:                                   # @nome
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	-16(%rbp), %rax
	movl	$99, -16(%rbp)
	movl	$111, -12(%rbp)
	movl	$101, -8(%rbp)
	movl	$0, -4(%rbp)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	nome, .Lfunc_end0-nome
	.cfi_endproc
                                        # -- End function

	.ident	"clang version 6.0.1-11 (tags/RELEASE_601/final)"
	.section	".note.GNU-stack","",@progbits
