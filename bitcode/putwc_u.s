	.text
	.file	"putwc_u.c"
	.globl	_putwc_unlocked_r       # -- Begin function _putwc_unlocked_r
	.p2align	4, 0x90
	.type	_putwc_unlocked_r,@function
_putwc_unlocked_r:                      # @_putwc_unlocked_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_fputwc_unlocked_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_putwc_unlocked_r, .Lfunc_end0-_putwc_unlocked_r
                                        # -- End function
	.globl	putwc_unlocked          # -- Begin function putwc_unlocked
	.p2align	4, 0x90
	.type	putwc_unlocked,@function
putwc_unlocked:                         # @putwc_unlocked
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	fputwc_unlocked
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	putwc_unlocked, .Lfunc_end1-putwc_unlocked
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
