	.text
	.file	"pte_tkAssocCreate.c"
	.globl	pte_tkAssocCreate       # -- Begin function pte_tkAssocCreate
	.p2align	4, 0x90
	.type	pte_tkAssocCreate,@function
pte_tkAssocCreate:                      # @pte_tkAssocCreate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$1, %edi
	movl	$48, %esi
	callq	calloc
	testq	%rax, %rax
	je	.LBB0_1
# %bb.2:
	movq	%r14, (%rax)
	movq	%rbx, 8(%rax)
	movq	$0, 40(%rax)
	movq	24(%rbx), %rcx
	movq	%rcx, 24(%rax)
	testq	%rcx, %rcx
	je	.LBB0_4
# %bb.3:
	movq	%rax, 40(%rcx)
.LBB0_4:
	movq	%rax, 24(%rbx)
	movq	$0, 32(%rax)
	movq	176(%r14), %rcx
	movq	%rcx, 16(%rax)
	testq	%rcx, %rcx
	je	.LBB0_6
# %bb.5:
	movq	%rax, 32(%rcx)
.LBB0_6:
	movq	%rax, 176(%r14)
	xorl	%eax, %eax
	jmp	.LBB0_7
.LBB0_1:
	movl	$12, %eax
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pte_tkAssocCreate, .Lfunc_end0-pte_tkAssocCreate
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
