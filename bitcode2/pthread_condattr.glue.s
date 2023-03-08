	.text
	.file	"pthread_condattr.c"
	.globl	pthread_condattr_getclock # -- Begin function pthread_condattr_getclock
	.p2align	4, 0x90
	.type	pthread_condattr_getclock,@function
pthread_condattr_getclock:              # @pthread_condattr_getclock
# %bb.0:
	movq	(%rdi), %rax
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	andl	(%rax), %ecx
	movl	%ecx, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	pthread_condattr_getclock, .Lfunc_end0-pthread_condattr_getclock
                                        # -- End function
	.globl	pthread_condattr_setclock # -- Begin function pthread_condattr_setclock
	.p2align	4, 0x90
	.type	pthread_condattr_setclock,@function
pthread_condattr_setclock:              # @pthread_condattr_setclock
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %eax
	testl	%esi, %esi
	js	.LBB1_3
# %bb.1:
	movl	%esi, %ecx
	andl	$-2, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	je	.LBB1_3
# %bb.2:
	movq	(%rdi), %rax
	movl	$-2147483648, %ecx      # imm = 0x80000000
	andl	(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, (%rax)
	xorl	%eax, %eax
.LBB1_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end1:
	.size	pthread_condattr_setclock, .Lfunc_end1-pthread_condattr_setclock
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
