	.text
	.file	"argz_next.c"
	.globl	argz_next               # -- Begin function argz_next
	.p2align	4, 0x90
	.type	argz_next,@function
argz_next:                              # @argz_next
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB0_3
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rdx)
	leaq	1(%rdx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_1
# %bb.2:
	addq	%rsi, %rdi
	xorl	%eax, %eax
	cmpq	%rdi, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovbq	%rdx, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_3:
	testq	%rsi, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmoveq	%rsi, %rdi
	movq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	argz_next, .Lfunc_end0-argz_next
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
