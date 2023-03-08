	.text
	.file	"rget.c"
	.globl	__srget_r               # -- Begin function __srget_r
	.p2align	4, 0x90
	.type	__srget_r,@function
__srget_r:                              # @__srget_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%rbx)
	jne	.LBB0_3
# %bb.2:
	movq	%rbx, %rdi
	callq	__sinit
.LBB0_3:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__srefill_r
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	jne	.LBB0_5
# %bb.4:
	addl	$-1, 8(%r14)
	movq	(%r14), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%r14)
	movzbl	(%rax), %eax
.LBB0_5:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__srget_r, .Lfunc_end0-__srget_r
                                        # -- End function
	.globl	__srget                 # -- Begin function __srget
	.p2align	4, 0x90
	.type	__srget,@function
__srget:                                # @__srget
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	callq	__getreent
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB1_3
# %bb.1:
	cmpl	$0, 80(%rbx)
	jne	.LBB1_3
# %bb.2:
	movq	%rbx, %rdi
	callq	__sinit
.LBB1_3:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__srefill_r
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	jne	.LBB1_5
# %bb.4:
	addl	$-1, 8(%r14)
	movq	(%r14), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%r14)
	movzbl	(%rax), %eax
.LBB1_5:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	__srget, .Lfunc_end1-__srget
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
