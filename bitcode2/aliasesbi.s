	.text
	.file	"aliasesbi.c"
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1

	.type	_iconv_aliases,@object  # @_iconv_aliases
	.data
	.globl	_iconv_aliases
	.p2align	3
_iconv_aliases:
	.quad	.L.str
	.size	_iconv_aliases, 8

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
