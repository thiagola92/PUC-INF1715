	.text
	.file	"c.c"
	.globl	nome7                   # -- Begin function nome7
	.p2align	4, 0x90
	.type	nome7,@function
nome7:                                  # @nome7
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end0:
	.size	nome7, .Lfunc_end0-nome7
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
