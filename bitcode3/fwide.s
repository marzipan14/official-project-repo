	.text
	.file	"fwide.c"
	.globl	_fwide_r                # -- Begin function _fwide_r
	.p2align	4, 0x90
	.type	_fwide_r,@function
_fwide_r:                               # @_fwide_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %r14
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%rdi)
	jne	.LBB0_3
# %bb.2:
	callq	__sinit
.LBB0_3:
	leaq	-20(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	xorl	%ebx, %ebx
	testb	$32, 17(%r14)
	je	.LBB0_5
# %bb.4:
	movb	173(%r14), %al
	andb	$32, %al
	shrb	$5, %al
	movzbl	%al, %eax
	leal	(%rax,%rax), %ebx
	addl	$-1, %ebx
.LBB0_5:
	movl	-20(%rbp), %edi
	leaq	-20(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_fwide_r, .Lfunc_end0-_fwide_r
                                        # -- End function
	.globl	fwide                   # -- Begin function fwide
	.p2align	4, 0x90
	.type	fwide,@function
fwide:                                  # @fwide
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %r14
	callq	__getreent
	testq	%rax, %rax
	je	.LBB1_3
# %bb.1:
	cmpl	$0, 80(%rax)
	jne	.LBB1_3
# %bb.2:
	movq	%rax, %rdi
	callq	__sinit
.LBB1_3:
	leaq	-20(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	xorl	%ebx, %ebx
	testb	$32, 17(%r14)
	je	.LBB1_5
# %bb.4:
	movb	173(%r14), %al
	andb	$32, %al
	shrb	$5, %al
	movzbl	%al, %eax
	leal	(%rax,%rax), %ebx
	addl	$-1, %ebx
.LBB1_5:
	movl	-20(%rbp), %edi
	leaq	-20(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fwide, .Lfunc_end1-fwide
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
