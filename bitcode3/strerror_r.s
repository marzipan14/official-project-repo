	.text
	.file	"strerror_r.c"
	.globl	strerror_r              # -- Begin function strerror_r
	.p2align	4, 0x90
	.type	strerror_r,@function
strerror_r:                             # @strerror_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r15
	movq	%rsi, %r14
	movl	%edi, %ebx
	callq	__getreent
	movq	%rax, %rdi
	movl	%ebx, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	callq	_strerror_r
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	strlen
	cmpq	%r15, %rax
	jae	.LBB0_1
# %bb.2:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	strcpy                  # TAILCALL
.LBB0_1:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	strerror_r, .Lfunc_end0-strerror_r
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
