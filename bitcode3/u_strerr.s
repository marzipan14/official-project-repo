	.text
	.file	"u_strerr.c"
	.globl	_user_strerror          # -- Begin function _user_strerror
	.p2align	4, 0x90
	.type	_user_strerror,@function
_user_strerror:                         # @_user_strerror
# %bb.0:
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	_user_strerror, .Lfunc_end0-_user_strerror
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
