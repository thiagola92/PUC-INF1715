	.text
	.file	"c.c"
	.globl	nome7                   # -- Begin function nome7
	.p2align	4, 0x90
	.type	nome7,@function
nome7:                                  # @nome7
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	nome7, .Lfunc_end0-nome7
	.cfi_endproc
                                        # -- End function
	.globl	nome8                   # -- Begin function nome8
	.p2align	4, 0x90
	.type	nome8,@function
nome8:                                  # @nome8
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	nome8, .Lfunc_end1-nome8
	.cfi_endproc
                                        # -- End function
	.globl	nome9                   # -- Begin function nome9
	.p2align	4, 0x90
	.type	nome9,@function
nome9:                                  # @nome9
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	nome0, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	nome9, .Lfunc_end2-nome9
	.cfi_endproc
                                        # -- End function
	.globl	nome10                  # -- Begin function nome10
	.p2align	4, 0x90
	.type	nome10,@function
nome10:                                 # @nome10
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	nome0, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	nome10, .Lfunc_end3-nome10
	.cfi_endproc
                                        # -- End function
	.globl	nome11                  # -- Begin function nome11
	.p2align	4, 0x90
	.type	nome11,@function
nome11:                                 # @nome11
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	movss	%xmm0, -4(%rbp)
	movl	nome0, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	nome11, .Lfunc_end4-nome11
	.cfi_endproc
                                        # -- End function
	.globl	nome12                  # -- Begin function nome12
	.p2align	4, 0x90
	.type	nome12,@function
nome12:                                 # @nome12
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	nome9
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	nome12, .Lfunc_end5-nome12
	.cfi_endproc
                                        # -- End function
	.globl	nome13                  # -- Begin function nome13
	.p2align	4, 0x90
	.type	nome13,@function
nome13:                                 # @nome13
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	nome13
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	nome13, .Lfunc_end6-nome13
	.cfi_endproc
                                        # -- End function
	.type	nome0,@object           # @nome0
	.data
	.globl	nome0
	.p2align	2
nome0:
	.long	1                       # 0x1
	.size	nome0, 4

	.type	nome1,@object           # @nome1
	.globl	nome1
	.p2align	2
nome1:
	.long	1                       # 0x1
	.size	nome1, 4

	.type	nome2,@object           # @nome2
	.globl	nome2
	.p2align	2
nome2:
	.long	1073741824              # float 2
	.size	nome2, 4

	.type	nome3,@object           # @nome3
	.globl	nome3
nome3:
	.byte	48                      # 0x30
	.size	nome3, 1

	.type	nome4,@object           # @nome4
	.bss
	.globl	nome4
	.p2align	3
nome4:
	.quad	0
	.size	nome4, 8

	.type	nome5,@object           # @nome5
	.data
	.globl	nome5
	.p2align	2
nome5:
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.size	nome5, 12

	.type	nome6,@object           # @nome6
	.bss
	.globl	nome6
	.p2align	3
nome6:
	.quad	0
	.size	nome6, 8


	.ident	"clang version 8.0.0-3 (tags/RELEASE_800/final)"
	.section	".note.GNU-stack","",@progbits
