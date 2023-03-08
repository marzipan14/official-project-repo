	.text
	.file	"btowc.c"
	.globl	btowc                   # -- Begin function btowc
	.p2align	4, 0x90
	.type	btowc,@function
btowc:                                  # @btowc
# %bb.0:
	cmpl	$-1, %edi
	je	.LBB0_1
# %bb.2:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movb	%dil, -17(%rbp)
	leaq	-32(%rbp), %r14
	movl	$8, %edx
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	memset
	callq	__getreent
	movq	72(%rax), %rax
	testq	%rax, %rax
	movl	$__global_locale, %ecx
	cmovneq	%rax, %rcx
	movq	232(%rcx), %rbx
	callq	__getreent
	leaq	-24(%rbp), %rsi
	leaq	-17(%rbp), %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%r14, %r8
	callq	*%rbx
	movl	%eax, %ecx
	movl	$-1, %eax
	cmpl	$1, %ecx
	ja	.LBB0_4
# %bb.3:
	movl	-24(%rbp), %eax
.LBB0_4:
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB0_1:
	movl	$-1, %eax
	retq
.Lfunc_end0:
	.size	btowc, .Lfunc_end0-btowc
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
