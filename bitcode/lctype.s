	.text
	.file	"lctype.c"
	.globl	__ctype_load_locale     # -- Begin function __ctype_load_locale
	.p2align	4, 0x90
	.type	__ctype_load_locale,@function
__ctype_load_locale:                    # @__ctype_load_locale
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	__ctype_load_locale, .Lfunc_end0-__ctype_load_locale
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ASCII"
	.size	.L.str, 6

	.type	numone,@object          # @numone
	.data
numone:
	.asciz	"\001"
	.size	numone, 2

	.type	_C_ctype_locale,@object # @_C_ctype_locale
	.section	.rodata,"a",@progbits
	.globl	_C_ctype_locale
	.p2align	3
_C_ctype_locale:
	.quad	.L.str
	.quad	numone
	.size	_C_ctype_locale, 16

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
