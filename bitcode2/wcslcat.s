	.text
	.file	"wcslcat.c"
	.globl	wcslcat                 # -- Begin function wcslcat
	.p2align	4, 0x90
	.type	wcslcat,@function
wcslcat:                                # @wcslcat
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %rcx
	je	.LBB0_4
# %bb.1:
	movq	%rdx, %rax
	movq	%rdi, %rcx
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	addq	$-1, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 4(%rcx)
	leaq	4(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_2
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_5:
	movq	%rcx, %r14
	subq	%rdi, %r14
	sarq	$2, %r14
	movl	$42, __A_VARIABLE(%rip)
	subq	%r14, %rdx
	je	.LBB0_14
# %bb.6:
	movl	(%rsi), %edi
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rax
	testl	%edi, %edi
	je	.LBB0_12
# %bb.7:
	movl	$1, %ebx
	jmp	.LBB0_8
	.p2align	4, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	movl	%edi, (%rcx)
	addq	$4, %rcx
	addq	$-1, %rdx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%rax), %edi
	addq	$4, %rax
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	je	.LBB0_12
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %rdx
	jne	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	movq	%rbx, %rdx
	jmp	.LBB0_11
.LBB0_12:
	movl	$0, (%rcx)
	subq	%rsi, %rax
	sarq	$2, %rax
	jmp	.LBB0_13
.LBB0_14:
	movq	%rsi, %rdi
	callq	wcslen
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	addq	%r14, %rax
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	wcslcat, .Lfunc_end0-wcslcat
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
