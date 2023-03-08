	.text
	.file	"impure.c"
	.type	_impure_ptr,@object     # @_impure_ptr
	.data
	.globl	_impure_ptr
	.p2align	3
_impure_ptr:
	.quad	impure_data
	.size	_impure_ptr, 8

	.type	_global_impure_ptr,@object # @_global_impure_ptr
	.section	.rodata,"a",@progbits
	.globl	_global_impure_ptr
	.p2align	3
_global_impure_ptr:
	.quad	impure_data
	.size	_global_impure_ptr, 8

	.type	impure_data,@object     # @impure_data
	.data
	.p2align	3
impure_data:
	.long	0                       # 0x0
	.zero	4
	.quad	impure_data+1336
	.quad	impure_data+1512
	.quad	impure_data+1688
	.long	0                       # 0x0
	.zero	25
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	26
	.zero	2
	.zero	36
	.long	0                       # 0x0
	.zero	4
	.quad	1                       # 0x1
	.short	13070                   # 0x330e
	.short	43981                   # 0xabcd
	.short	4660                    # 0x1234
	.short	58989                   # 0xe66d
	.short	57068                   # 0xdeec
	.short	5                       # 0x5
	.short	11                      # 0xb
	.zero	2
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	24
	.long	0                       # 0x0
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.long	0                       # 0x0
	.zero	144
	.quad	0
	.zero	792
	.quad	0
	.zero	24
	.zero	528
	.size	impure_data, 1864

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
