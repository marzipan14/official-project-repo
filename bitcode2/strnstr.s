	.text
	.file	"strnstr.c"
	.globl	strnstr                 # -- Begin function strnstr
	.p2align	4, 0x90
	.type	strnstr,@function
strnstr:                                # @strnstr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	strnlen
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jb	.LBB0_3
# %bb.1:
	cmpb	$0, (%r15,%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_3
# %bb.2:
	xorl	%ebx, %ebx
	jmp	.LBB0_7
.LBB0_3:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	%rax, %rcx
	callq	memmem
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_5
# %bb.4:
	movq	%rax, %rbx
	movq	%rax, %rdx
	subq	%r14, %rdx
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	memchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_6
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	strnstr, .Lfunc_end0-strnstr
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
