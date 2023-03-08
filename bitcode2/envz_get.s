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
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_7
# %bb.1:                                # %.preheader
	movq	%rdx, %rbx
	leaq	-32(%rbp), %r14
	leaq	-40(%rbp), %r15
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_7
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	_buf_findstr
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_6
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$61, %cl
	je	.LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	jne	.LBB0_6
.LBB0_7:
	xorl	%eax, %eax
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_4:
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_8
.Lfunc_end0:
	.size	envz_get, .Lfunc_end0-envz_get
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
