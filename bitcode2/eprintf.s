	.text
	.file	"eprintf.c"
	.globl	__eprintf               # -- Begin function __eprintf
	.p2align	4, 0x90
	.type	__eprintf,@function
__eprintf:                              # @__eprintf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rcx, %r14
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %rbx
	callq	__getreent
	movq	24(%rax), %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movl	%r15d, %ecx
	movq	%r14, %r8
	xorl	%eax, %eax
	callq	fiprintf
	callq	abort
.Lfunc_end0:
	.size	__eprintf, .Lfunc_end0-__eprintf
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
