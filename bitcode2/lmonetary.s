	.text
	.file	"lmonetary.c"
	.globl	__monetary_load_locale  # -- Begin function __monetary_load_locale
	.p2align	4, 0x90
	.type	__monetary_load_locale,@function
__monetary_load_locale:                 # @__monetary_load_locale
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	__monetary_load_locale, .Lfunc_end0-__monetary_load_locale
                                        # -- End function
	.type	empty,@object           # @empty
	.local	empty
	.comm	empty,1,1
	.type	numempty,@object        # @numempty
	.data
numempty:
	.asciz	"\177"
	.size	numempty, 2

	.type	_C_monetary_locale,@object # @_C_monetary_locale
	.section	.rodata,"a",@progbits
	.globl	_C_monetary_locale
	.p2align	3
_C_monetary_locale:
	.quad	empty
	.quad	empty
	.quad	empty
	.quad	empty
	.quad	numempty
	.quad	empty
	.quad	empty
	.quad	numempty
	.quad	numempty
	.quad	numempty
	.quad	numempty
	.quad	numempty
	.quad	numempty
	.quad	numempty
	.quad	numempty
	.size	_C_monetary_locale, 120

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
