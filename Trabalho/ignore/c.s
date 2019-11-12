	.text
	.file	"c.c"
	.globl	nome2                   # -- Begin function nome2
	.p2align	4, 0x90
	.type	nome2,@function
nome2:                                  # @nome2
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -12(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	nome2, .Lfunc_end0-nome2
	.cfi_endproc
                                        # -- End function
	.globl	nome1                   # -- Begin function nome1
	.p2align	4, 0x90
	.type	nome1,@function
nome1:                                  # @nome1
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	$2, %esi
	callq	nome2
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	nome1, .Lfunc_end1-nome1
	.cfi_endproc
                                        # -- End function
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
	movl	$97, -4(%rbp)
	movl	$97, -4(%rbp)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	nome, .Lfunc_end2-nome
	.cfi_endproc
                                        # -- End function

	.ident	"clang version 6.0.1-11 (tags/RELEASE_601/final)"
	.section	".note.GNU-stack","",@progbits
