	.text
	.file	"twalk.c"
	.globl	twalk                   # -- Begin function twalk
	.p2align	4, 0x90
	.type	twalk,@function
twalk:                                  # @twalk
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.1:
	testq	%rsi, %rsi
	je	.LBB0_3
# %bb.2:
	xorl	%edx, %edx
	callq	trecurse
	movl	$42, __A_VARIABLE(%rip)
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	twalk, .Lfunc_end0-twalk
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function trecurse
	.type	trecurse,@function
trecurse:                               # @trecurse
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpq	$0, 8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_3
# %bb.1:
	cmpq	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_2
.LBB1_3:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	%r15d, %edx
	callq	*%r14
	movq	8(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB1_5
# %bb.4:
	leal	1(%r15), %edx
	movq	%r14, %rsi
	callq	trecurse
	movl	$42, __A_VARIABLE(%rip)
.LBB1_5:
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	%r15d, %edx
	callq	*%r14
	movq	16(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB1_7
# %bb.6:
	leal	1(%r15), %edx
	movq	%r14, %rsi
	callq	trecurse
	movl	$42, __A_VARIABLE(%rip)
.LBB1_7:
	movq	%rbx, %rdi
	movl	$2, %esi
.LBB1_8:
	movl	%r15d, %edx
	callq	*%r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_2:
	movq	%rbx, %rdi
	movl	$3, %esi
	jmp	.LBB1_8
.Lfunc_end1:
	.size	trecurse, .Lfunc_end1-trecurse
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
