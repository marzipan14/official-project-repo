	.text
	.file	"clearerr.c"
	.globl	clearerr                # -- Begin function clearerr
	.p2align	4, 0x90
	.type	clearerr,@function
clearerr:                               # @clearerr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %r14
	callq	__getreent
	testq	%rax, %rax
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%rax)
	jne	.LBB0_3
# %bb.2:
	movq	%rax, %rdi
	callq	__sinit
.LBB0_3:
	leaq	-20(%rbp), %rbx
	movl	$1, %edi
	movq	%rbx, %rsi
	callq	pthread_setcancelstate
	andb	$-97, 16(%r14)
	movl	-20(%rbp), %edi
	movq	%rbx, %rsi
	callq	pthread_setcancelstate
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	clearerr, .Lfunc_end0-clearerr
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
