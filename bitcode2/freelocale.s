	.text
	.file	"freelocale.c"
	.globl	_freelocale_r           # -- Begin function _freelocale_r
	.p2align	4, 0x90
	.type	_freelocale_r,@function
_freelocale_r:                          # @_freelocale_r
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	_freelocale_r, .Lfunc_end0-_freelocale_r
                                        # -- End function
	.globl	freelocale              # -- Begin function freelocale
	.p2align	4, 0x90
	.type	freelocale,@function
freelocale:                             # @freelocale
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__getreent
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	freelocale, .Lfunc_end1-freelocale
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
