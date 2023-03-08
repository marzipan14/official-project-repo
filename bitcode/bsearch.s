	.text
	.file	"bsearch.c"
	.globl	bsearch                 # -- Begin function bsearch
	.p2align	4, 0x90
	.type	bsearch,@function
bsearch:                                # @bsearch
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	xorl	%r13d, %r13d
	testq	%rcx, %rcx
	je	.LBB0_9
# %bb.1:
	movq	%rdx, %rbx
	testq	%rdx, %rdx
	je	.LBB0_9
# %bb.2:                                # %.preheader
	movq	%rcx, %r12
	xorl	%r15d, %r15d
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	%r14, %rbx
	cmpq	%rbx, %r15
	jae	.LBB0_8
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	leaq	(%r15,%rbx), %r14
	shrq	%r14
	movq	%r14, %r13
	imulq	%r12, %r13
	addq	-56(%rbp), %r13         # 8-byte Folded Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	callq	*-64(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	js	.LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	je	.LBB0_9
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	addq	$1, %r14
	movq	%r14, %r15
	cmpq	%rbx, %r15
	jb	.LBB0_3
.LBB0_8:
	xorl	%r13d, %r13d
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	bsearch, .Lfunc_end0-bsearch
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
