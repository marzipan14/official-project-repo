	.text
	.file	"wcstold.c"
	.globl	wcstold_l               # -- Begin function wcstold_l
	.p2align	4, 0x90
	.type	wcstold_l,@function
wcstold_l:                              # @wcstold_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	callq	wcstod_l
	movsd	%xmm0, -8(%rbp)
	fldl	-8(%rbp)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	wcstold_l, .Lfunc_end0-wcstold_l
                                        # -- End function
	.globl	wcstold                 # -- Begin function wcstold
	.p2align	4, 0x90
	.type	wcstold,@function
wcstold:                                # @wcstold
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	__getreent
	movq	72(%rax), %rax
	testq	%rax, %rax
	movl	$__global_locale, %edx
	cmovneq	%rax, %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	wcstod_l
	movsd	%xmm0, -24(%rbp)
	fldl	-24(%rbp)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	wcstold, .Lfunc_end1-wcstold
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
