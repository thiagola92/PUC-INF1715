	.text
	.file	"c.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function nome1
.LCPI0_0:
	.quad	4608533498688228557     # double 1.3
	.text
	.globl	nome1
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
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	nome1, .Lfunc_end0-nome1
	.cfi_endproc
                                        # -- End function

	.ident	"clang version 6.0.1-11 (tags/RELEASE_601/final)"
	.section	".note.GNU-stack","",@progbits
