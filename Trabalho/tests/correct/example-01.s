	.text
	.file	"example-01.ll"
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

	.type	s,@object               # @s
	.bss
	.globl	s
	.p2align	2
s:
	.long	0                       # 0x0
	.size	s, 4

	.type	normal_name,@object     # @normal_name
	.globl	normal_name
	.p2align	2
normal_name:
	.long	0                       # 0x0
	.size	normal_name, 4

	.type	long_long_long_long_long_long_name,@object # @long_long_long_long_long_long_name
	.globl	long_long_long_long_long_long_name
	.p2align	2
long_long_long_long_long_long_name:
	.long	0                       # 0x0
	.size	long_long_long_long_long_long_name, 4

	.type	s1,@object              # @s1
	.globl	s1
	.p2align	2
s1:
	.long	0                       # 0x0
	.size	s1, 4

	.type	s_1,@object             # @s_1
	.globl	s_1
	.p2align	2
s_1:
	.long	0                       # 0x0
	.size	s_1, 4

	.type	abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_012345679,@object # @abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_012345679
	.globl	abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_012345679
	.p2align	2
abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_012345679:
	.long	0                       # 0x0
	.size	abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_012345679, 4


	.section	".note.GNU-stack","",@progbits
