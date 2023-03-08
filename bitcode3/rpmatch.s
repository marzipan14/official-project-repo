	.text
	.file	"rpmatch.c"
	.globl	rpmatch                 # -- Begin function rpmatch
	.p2align	4, 0x90
	.type	rpmatch,@function
rpmatch:                                # @rpmatch
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
	movq	%rdi, %r14
	movl	$52, %edi
	callq	nl_langinfo
	leaq	-48(%rbp), %rdi
	movq	%rax, %rsi
	movl	$5, %edx
	callq	regcomp
	movl	$-1, %ebx
	testl	%eax, %eax
	jne	.LBB0_7
# %bb.1:
	movl	$53, %edi
	callq	nl_langinfo
	leaq	-80(%rbp), %rdi
	movq	%rax, %rsi
	movl	$5, %edx
	callq	regcomp
	leaq	-48(%rbp), %rdi
	testl	%eax, %eax
	jne	.LBB0_6
# %bb.2:
	movq	%r14, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	regexec
	testl	%eax, %eax
	je	.LBB0_3
# %bb.4:
	leaq	-80(%rbp), %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	regexec
	negl	%eax
	sbbl	%ebx, %ebx
	jmp	.LBB0_5
.LBB0_3:
	movl	$1, %ebx
.LBB0_5:
	leaq	-48(%rbp), %rdi
	callq	regfree
	leaq	-80(%rbp), %rdi
.LBB0_6:
	callq	regfree
.LBB0_7:
	movl	%ebx, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	rpmatch, .Lfunc_end0-rpmatch
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
