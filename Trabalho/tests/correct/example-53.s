	.text
	.file	"example-53.ll"
	.globl	nome                    # -- Begin function nome
	.p2align	4, 0x90
	.type	nome,@function
nome:                                   # @nome
	.cfi_startproc
# %bb.0:
	movl	%edi, -68(%rsp)
	movl	%esi, -72(%rsp)
	movl	%edx, -76(%rsp)
	retq
.Lfunc_end0:
	.size	nome, .Lfunc_end0-nome
	.cfi_endproc
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
