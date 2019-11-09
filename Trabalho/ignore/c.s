	.text
	.file	"c.c"
	.globl	first                   # -- Begin function first
	.p2align	4, 0x90
	.type	first,@function
first:                                  # @first
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end0:
	.size	first, .Lfunc_end0-first
	.cfi_endproc
                                        # -- End function
	.globl	second                  # -- Begin function second
	.p2align	4, 0x90
	.type	second,@function
second:                                 # @second
	.cfi_startproc
# %bb.0:
	andl	$1, %edi
	movb	%dil, -1(%rsp)
	retq
.Lfunc_end1:
	.size	second, .Lfunc_end1-second
	.cfi_endproc
                                        # -- End function
	.globl	third                   # -- Begin function third
	.p2align	4, 0x90
	.type	third,@function
third:                                  # @third
	.cfi_startproc
# %bb.0:
	andl	$1, %edi
	movb	%dil, -1(%rsp)
	andl	$1, %esi
	movb	%sil, -2(%rsp)
	retq
.Lfunc_end2:
	.size	third, .Lfunc_end2-third
	.cfi_endproc
                                        # -- End function
	.globl	fourth                  # -- Begin function fourth
	.p2align	4, 0x90
	.type	fourth,@function
fourth:                                 # @fourth
	.cfi_startproc
# %bb.0:
	andl	$1, %edi
	movb	%dil, -1(%rsp)
	andl	$1, %esi
	movb	%sil, -2(%rsp)
	andl	$1, %edx
	movb	%dl, -3(%rsp)
	retq
.Lfunc_end3:
	.size	fourth, .Lfunc_end3-fourth
	.cfi_endproc
                                        # -- End function

	.ident	"clang version 6.0.1-11 (tags/RELEASE_601/final)"
	.section	".note.GNU-stack","",@progbits
