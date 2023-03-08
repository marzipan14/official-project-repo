	.text
	.file	"inet6.c"
	.type	in6addr_any,@object     # @in6addr_any
	.section	.rodata,"a",@progbits
	.globl	in6addr_any
	.p2align	2
in6addr_any:
	.zero	16
	.size	in6addr_any, 16

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
