	.text
	.file	"toascii.c"
	.globl	toascii                 # -- Begin function toascii
	.p2align	4, 0x90
	.type	toascii,@function
toascii:                                # @toascii
# %bb.0:
	movl	%edi, %eax
	andl	$127, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	toascii, .Lfunc_end0-toascii
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
