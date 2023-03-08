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
	testl	%esi, %esi
	je	.LBB0_3
# %bb.1:                                # %.preheader
	movl	%esi, %r14d
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movl	%r14d, %esi
	callq	strchr
	leaq	1(%rax), %rdi
	testq	%rax, %rax
	jne	.LBB0_2
	jmp	.LBB0_4
.LBB0_3:
	xorl	%esi, %esi
	callq	strchr
	movq	%rax, %rbx
.LBB0_4:
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
