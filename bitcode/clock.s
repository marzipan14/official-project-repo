	.text
	.file	"clock.c"
	.globl	clock                   # -- Begin function clock
	.p2align	4, 0x90
	.type	clock,@function
clock:                                  # @clock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	callq	__getreent
	leaq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	_times_r
	cmpq	$-1, %rax
	je	.LBB0_1
# %bb.2:
	movq	-24(%rbp), %rax
	addq	-32(%rbp), %rax
	addq	-16(%rbp), %rax
	addq	-8(%rbp), %rax
	jmp	.LBB0_3
.LBB0_1:
	movq	$-1, %rax
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	clock, .Lfunc_end0-clock
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
