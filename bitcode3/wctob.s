	.text
	.file	"wctob.c"
	.globl	wctob                   # -- Begin function wctob
	.p2align	4, 0x90
	.type	wctob,@function
wctob:                                  # @wctob
# %bb.0:
	cmpl	$-1, %edi
	je	.LBB0_1
# %bb.2:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movl	%edi, %r12d
	leaq	-48(%rbp), %r14
	movl	$8, %edx
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	memset
	callq	__getreent
	movq	%rax, %r15
	callq	__getreent
	movq	72(%rax), %rax
	testq	%rax, %rax
	movl	$__global_locale, %ebx
	cmovneq	%rax, %rbx
	leaq	-33(%rbp), %rsi
	movq	%r15, %rdi
	movl	%r12d, %edx
	movq	%r14, %rcx
	callq	*224(%rbx)
	cmpl	$1, %eax
	movzbl	-33(%rbp), %ecx
	movl	$-1, %eax
	cmovel	%ecx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_1:
	movl	$-1, %eax
	retq
.Lfunc_end0:
	.size	wctob, .Lfunc_end0-wctob
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
