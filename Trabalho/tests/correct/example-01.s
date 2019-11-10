	.text
	.file	"example-01.ll"
	.type	s,@object               # @s
	.bss
	.globl	s
s:
	.byte	0                       # 0x0
	.size	s, 1

	.type	normal_name,@object     # @normal_name
	.globl	normal_name
normal_name:
	.byte	0                       # 0x0
	.size	normal_name, 1

	.type	long_long_long_long_long_long_name,@object # @long_long_long_long_long_long_name
	.globl	long_long_long_long_long_long_name
long_long_long_long_long_long_name:
	.byte	0                       # 0x0
	.size	long_long_long_long_long_long_name, 1

	.type	s1,@object              # @s1
	.globl	s1
s1:
	.byte	0                       # 0x0
	.size	s1, 1

	.type	s_1,@object             # @s_1
	.globl	s_1
s_1:
	.byte	0                       # 0x0
	.size	s_1, 1

	.type	abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_012345679,@object # @abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_012345679
	.globl	abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_012345679
abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_012345679:
	.byte	0                       # 0x0
	.size	abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_012345679, 1


	.section	".note.GNU-stack","",@progbits
