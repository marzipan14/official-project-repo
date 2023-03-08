	.text
	.file	"in6addr_loopback.c"
	.type	in6addr_loopback,@object # @in6addr_loopback
	.section	.rodata,"a",@progbits
	.globl	in6addr_loopback
	.p2align	2
in6addr_loopback:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	16777216                # 0x1000000
	.size	in6addr_loopback, 16

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
