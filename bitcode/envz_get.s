	.text
	.file	"envz_get.c"
	.globl	envz_get                # -- Begin function envz_get
	.p2align	4, 0x90
	.type	envz_get,@function
envz_get:                               # @envz_get
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	testq	%rsi, %rsi
	je	.LBB0_1
# %bb.2:                                # %.preheader
	movq	%rdx, %rbx
	leaq	-40(%rbp), %r15
	leaq	-48(%rbp), %r12
	xorl	%r14d, %r14d
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB0_8
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	_buf_findstr
	testl	%eax, %eax
	je	.LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	testb	%cl, %cl
	je	.LBB0_8
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	cmpb	$61, %cl
	jne	.LBB0_7
# %bb.6:
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	%rax, %r14
	jmp	.LBB0_8
.LBB0_1:
	xorl	%r14d, %r14d
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	envz_get, .Lfunc_end0-envz_get
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
