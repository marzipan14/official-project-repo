	.text
	.file	"twalk.c"
	.globl	twalk                   # -- Begin function twalk
	.p2align	4, 0x90
	.type	twalk,@function
twalk:                                  # @twalk
# %bb.0:
	testq	%rdi, %rdi
	je	.LBB0_2
# %bb.1:
	testq	%rsi, %rsi
	je	.LBB0_2
# %bb.3:
	xorl	%edx, %edx
	jmp	trecurse                # TAILCALL
.LBB0_2:
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
	movl	%edx, %r14d
	movq	%rsi, %rax
	movq	%rdi, %rbx
	cmpq	$0, 8(%rdi)
	jne	.LBB1_4
# %bb.1:
	cmpq	$0, 16(%rbx)
	je	.LBB1_2
.LBB1_4:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	%r14d, %edx
	movq	%rax, %r15
	callq	*%rax
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB1_6
# %bb.5:
	leal	1(%r14), %edx
	movq	%r15, %rsi
	callq	trecurse
.LBB1_6:
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	%r14d, %edx
	callq	*%r15
	movq	16(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB1_8
# %bb.7:
	leal	1(%r14), %edx
	movq	%r15, %rsi
	callq	trecurse
.LBB1_8:
	movq	%rbx, %rdi
	movl	$2, %esi
	movl	%r14d, %edx
	movq	%r15, %rax
.LBB1_3:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB1_2:
	movq	%rbx, %rdi
	movl	$3, %esi
	movl	%r14d, %edx
	jmp	.LBB1_3
.Lfunc_end1:
	.size	trecurse, .Lfunc_end1-trecurse
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
