	.text
	.file	"c.c"
	.globl	nome1                   # -- Begin function nome1
	.p2align	4, 0x90
	.type	nome1,@function
nome1:                                  # @nome1
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	%edi, 4(%rsp)
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	popq	%rax
	retq
.Lfunc_end0:
	.size	nome1, .Lfunc_end0-nome1
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"hi"
	.size	.L.str, 3


	.section	".note.GNU-stack","",@progbits
