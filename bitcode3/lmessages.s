	.text
	.file	"lmessages.c"
	.globl	__messages_load_locale  # -- Begin function __messages_load_locale
	.p2align	4, 0x90
	.type	__messages_load_locale,@function
__messages_load_locale:                 # @__messages_load_locale
# %bb.0:
	retq
.Lfunc_end0:
	.size	__messages_load_locale, .Lfunc_end0-__messages_load_locale
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"^[yY]"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"^[nN]"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"yes"
	.size	.L.str.2, 4

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"no"
	.size	.L.str.3, 3

	.type	_C_messages_locale,@object # @_C_messages_locale
	.section	.rodata,"a",@progbits
	.globl	_C_messages_locale
	.p2align	3
_C_messages_locale:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.size	_C_messages_locale, 32

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
