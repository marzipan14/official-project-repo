	.text
	.file	"aligned_alloc.c"
	.globl	aligned_alloc           # -- Begin function aligned_alloc
	.p2align	4, 0x90
	.type	aligned_alloc,@function
aligned_alloc:                          # @aligned_alloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	leaq	-8(%rbp), %rdi
	callq	posix_memalign
	testl	%eax, %eax
	jne	.LBB0_1
# %bb.2:
	movq	-8(%rbp), %rax
	jmp	.LBB0_3
.LBB0_1:
	xorl	%eax, %eax
.LBB0_3:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	aligned_alloc, .Lfunc_end0-aligned_alloc
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
