	.text
	.file	"pte_tkAssocDestroy.c"
	.globl	pte_tkAssocDestroy      # -- Begin function pte_tkAssocDestroy
	.p2align	4, 0x90
	.type	pte_tkAssocDestroy,@function
pte_tkAssocDestroy:                     # @pte_tkAssocDestroy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_16
# %bb.1:
	movq	16(%rdi), %rax
	movq	32(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB0_3
# %bb.2:
	movq	%rax, 16(%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_5
# %bb.4:
	movq	%rcx, 32(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_5:
	movq	(%rdi), %rcx
	cmpq	%rdi, 176(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_7
# %bb.6:
	movq	%rax, 176(%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_7:
	cmpq	%rdi, 184(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_9
# %bb.8:
	movq	%rax, 184(%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_9:
	movq	24(%rdi), %rax
	movq	40(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB0_11
# %bb.10:
	movq	%rax, 24(%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_13
# %bb.12:
	movq	%rcx, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_13:
	movq	8(%rdi), %rcx
	cmpq	%rdi, 24(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_15
# %bb.14:
	movq	%rax, 24(%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_15:
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB0_16:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pte_tkAssocDestroy, .Lfunc_end0-pte_tkAssocDestroy
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
