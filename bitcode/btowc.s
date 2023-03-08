	.text
	.file	"btowc.c"
	.globl	btowc                   # -- Begin function btowc
	.p2align	4, 0x90
	.type	btowc,@function
btowc:                                  # @btowc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	cmpl	$-1, %edi
	je	.LBB0_1
# %bb.2:
	movb	%dil, -9(%rbp)
	leaq	-24(%rbp), %rdi
	movl	$8, %edx
	xorl	%esi, %esi
	callq	memset
	callq	__getreent
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.LBB0_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %eax
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	movq	232(%rax), %rbx
	callq	__getreent
	leaq	-16(%rbp), %rsi
	leaq	-9(%rbp), %rdx
	leaq	-24(%rbp), %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	callq	*%rbx
	movl	%eax, %ecx
	movl	$-1, %eax
	cmpl	$1, %ecx
	ja	.LBB0_6
# %bb.5:
	movl	-16(%rbp), %eax
	jmp	.LBB0_6
.LBB0_1:
	movl	$-1, %eax
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	btowc, .Lfunc_end0-btowc
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
