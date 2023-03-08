	.text
	.file	"tfind.c"
	.globl	tfind                   # -- Begin function tfind
	.p2align	4, 0x90
	.type	tfind,@function
tfind:                                  # @tfind
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	testq	%rsi, %rsi
	je	.LBB0_6
# %bb.1:
	movq	%rsi, %rbx
	movq	(%rsi), %rax
	testq	%rax, %rax
	je	.LBB0_6
# %bb.2:                                # %.preheader
	movq	%rdx, %r15
	movq	%rdi, %r12
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rsi
	movq	%r12, %rdi
	callq	*%r15
	testl	%eax, %eax
	je	.LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	(%rbx), %rcx
	leaq	8(%rcx), %rdx
	leaq	16(%rcx), %rbx
	xorl	%esi, %esi
	testl	%eax, %eax
	setns	%sil
	cmovsq	%rdx, %rbx
	movq	8(%rcx,%rsi,8), %rax
	testq	%rax, %rax
	jne	.LBB0_3
	jmp	.LBB0_8
.LBB0_6:
	xorl	%r14d, %r14d
	jmp	.LBB0_8
.LBB0_7:
	movq	(%rbx), %r14
.LBB0_8:
	movq	%r14, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tfind, .Lfunc_end0-tfind
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
