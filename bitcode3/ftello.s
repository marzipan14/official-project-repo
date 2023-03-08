	.text
	.file	"ftello.c"
	.globl	_ftello_r               # -- Begin function _ftello_r
	.p2align	4, 0x90
	.type	_ftello_r,@function
_ftello_r:                              # @_ftello_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r15
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
	leaq	-28(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	cmpq	$0, 72(%r15)
	je	.LBB0_4
# %bb.6:
	movzwl	16(%r15), %eax
	testb	$8, %al
	je	.LBB0_8
# %bb.7:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_fflush_r
	movzwl	16(%r15), %eax
.LBB0_8:
	testl	$4096, %eax             # imm = 0x1000
	jne	.LBB0_9
# %bb.10:
	movq	48(%r15), %rsi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	*72(%r15)
	cmpq	$-1, %rax
	je	.LBB0_5
# %bb.11:
	movq	%rax, %r14
	movzwl	16(%r15), %eax
	jmp	.LBB0_12
.LBB0_4:
	movl	$29, (%rbx)
.LBB0_5:
	movl	-28(%rbp), %edi
	leaq	-28(%rbp), %rsi
	callq	pthread_setcancelstate
	movq	$-1, %r14
	jmp	.LBB0_19
.LBB0_9:
	movq	144(%r15), %r14
.LBB0_12:
	cwtl
	testb	$4, %al
	jne	.LBB0_13
# %bb.15:
	testb	$8, %al
	je	.LBB0_18
# %bb.16:
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.LBB0_18
# %bb.17:
	addq	%rax, %r14
	subq	24(%r15), %r14
	jmp	.LBB0_18
.LBB0_13:
	movslq	8(%r15), %rax
	subq	%rax, %r14
	cmpq	$0, 88(%r15)
	je	.LBB0_18
# %bb.14:
	movslq	112(%r15), %rax
	subq	%rax, %r14
.LBB0_18:
	movl	-28(%rbp), %edi
	leaq	-28(%rbp), %rsi
	callq	pthread_setcancelstate
.LBB0_19:
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_ftello_r, .Lfunc_end0-_ftello_r
                                        # -- End function
	.globl	ftello                  # -- Begin function ftello
	.p2align	4, 0x90
	.type	ftello,@function
ftello:                                 # @ftello
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	_ftello_r               # TAILCALL
.Lfunc_end1:
	.size	ftello, .Lfunc_end1-ftello
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
