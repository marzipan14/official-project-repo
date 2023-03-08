	.text
	.file	"lnumeric.c"
	.globl	__numeric_load_locale   # -- Begin function __numeric_load_locale
	.p2align	4, 0x90
	.type	__numeric_load_locale,@function
__numeric_load_locale:                  # @__numeric_load_locale
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	__numeric_load_locale, .Lfunc_end0-__numeric_load_locale
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"."
	.size	.L.str, 2

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.zero	1
	.size	.L.str.1, 1

	.type	numempty,@object        # @numempty
	.data
numempty:
	.asciz	"\177"
	.size	numempty, 2

	.type	_C_numeric_locale,@object # @_C_numeric_locale
	.section	.rodata,"a",@progbits
	.globl	_C_numeric_locale
	.p2align	3
_C_numeric_locale:
	.quad	.L.str
	.quad	.L.str.1
	.quad	numempty
	.size	_C_numeric_locale, 24

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
