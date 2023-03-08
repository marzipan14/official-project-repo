	.text
	.file	"s_lib_ver.c"
	.type	__fdlib_version,@object # @__fdlib_version
	.data
	.globl	__fdlib_version
	.p2align	2
__fdlib_version:
	.long	1                       # 0x1
	.size	__fdlib_version, 4

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
