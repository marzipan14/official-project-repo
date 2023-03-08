	.text
	.file	"strrchr.c"
	.globl	strrchr                 # -- Begin function strrchr
	.p2align	4, 0x90
	.type	strrchr,@function
strrchr:                                # @strrchr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%esi, %r14d
	movl	$42, __A_VARIABLE(%rip)
	callq	strchr
	testl	%r14d, %r14d
	je	.LBB0_4
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_2
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	leaq	1(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %esi
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_3
	jmp	.LBB0_5
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rbx
	jmp	.LBB0_5
.LBB0_2:
	xorl	%ebx, %ebx
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	strrchr, .Lfunc_end0-strrchr
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
