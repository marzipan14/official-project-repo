	.text
	.file	"gettimeofdayr.c"
	.globl	_gettimeofday_r         # -- Begin function _gettimeofday_r
	.p2align	4, 0x90
	.type	_gettimeofday_r,@function
_gettimeofday_r:                        # @_gettimeofday_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	65504(%rbp), %rdi
	movl	$0, errno(%rip)
	xorl	%esi, %esi
	callq	gettimeofday
	movups	65504(%rbp), %xmm0
	movups	%xmm0, (%rbx)
	movl	errno(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB0_3
# %bb.1:
	testl	%ecx, %ecx
	je	.LBB0_3
# %bb.2:
	movl	%ecx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_gettimeofday_r, .Lfunc_end0-_gettimeofday_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
