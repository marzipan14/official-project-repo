	.text
	.file	"fgetwc_u.c"
	.globl	_fgetwc_unlocked_r      # -- Begin function _fgetwc_unlocked_r
	.p2align	4, 0x90
	.type	_fgetwc_unlocked_r,@function
_fgetwc_unlocked_r:                     # @_fgetwc_unlocked_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__fgetwc
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_fgetwc_unlocked_r, .Lfunc_end0-_fgetwc_unlocked_r
                                        # -- End function
	.globl	fgetwc_unlocked         # -- Begin function fgetwc_unlocked
	.p2align	4, 0x90
	.type	fgetwc_unlocked,@function
fgetwc_unlocked:                        # @fgetwc_unlocked
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	callq	__getreent
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_3
# %bb.1:
	cmpl	$0, 80(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_3
# %bb.2:
	movq	%rbx, %rdi
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB1_3:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__fgetwc
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fgetwc_unlocked, .Lfunc_end1-fgetwc_unlocked
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
