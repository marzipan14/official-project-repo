	.text
	.file	"fileno_u.c"
	.globl	fileno_unlocked         # -- Begin function fileno_unlocked
	.p2align	4, 0x90
	.type	fileno_unlocked,@function
fileno_unlocked:                        # @fileno_unlocked
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	__getreent
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_3
# %bb.2:
	movq	%rax, %rdi
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB0_3:
	cmpw	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_5
# %bb.4:
	movswl	18(%rbx), %eax
	jmp	.LBB0_6
.LBB0_5:
	callq	__getreent
	movl	$9, (%rax)
	movl	$-1, %eax
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	fileno_unlocked, .Lfunc_end0-fileno_unlocked
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
