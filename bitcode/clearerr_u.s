	.text
	.file	"clearerr_u.c"
	.globl	clearerr_unlocked       # -- Begin function clearerr_unlocked
	.p2align	4, 0x90
	.type	clearerr_unlocked,@function
clearerr_unlocked:                      # @clearerr_unlocked
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	__getreent
	testq	%rax, %rax
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%rax)
	jne	.LBB0_3
# %bb.2:
	movq	%rax, %rdi
	callq	__sinit
.LBB0_3:
	andb	$-97, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	clearerr_unlocked, .Lfunc_end0-clearerr_unlocked
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
