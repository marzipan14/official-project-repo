	.text
	.file	"fdopen.c"
	.globl	_fdopen_r               # -- Begin function _fdopen_r
	.p2align	4, 0x90
	.type	_fdopen_r,@function
_fdopen_r:                              # @_fdopen_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movl	%esi, %r14d
	movq	%rdi, %rbx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	__sflags
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_4
# %bb.1:
	movl	%eax, %r15d
	movq	%rbx, %rdi
	callq	__sfp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_4
# %bb.2:
	movq	%rax, %rbx
	leaq	-36(%rbp), %r12
	movl	$1, %edi
	movq	%r12, %rsi
	callq	pthread_setcancelstate
	movw	%r15w, 16(%rbx)
	movw	%r14w, 18(%rbx)
	movq	%rbx, 48(%rbx)
	movl	$__swrite, %eax
	movq	%rax, %xmm0
	movl	$__sread, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 56(%rbx)
	movq	$__sseek, 72(%rbx)
	movq	$__sclose, 80(%rbx)
	movl	-36(%rbp), %edi
	movq	%r12, %rsi
	callq	pthread_setcancelstate
	jmp	.LBB0_5
.LBB0_4:
	xorl	%ebx, %ebx
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_fdopen_r, .Lfunc_end0-_fdopen_r
                                        # -- End function
	.globl	fdopen                  # -- Begin function fdopen
	.p2align	4, 0x90
	.type	fdopen,@function
fdopen:                                 # @fdopen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %r15
	movl	%edi, %r14d
	callq	__getreent
	movq	%rax, %rbx
	leaq	-40(%rbp), %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	__sflags
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_4
# %bb.1:
	movl	%eax, %r15d
	movq	%rbx, %rdi
	callq	__sfp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_4
# %bb.2:
	movq	%rax, %rbx
	leaq	-36(%rbp), %r12
	movl	$1, %edi
	movq	%r12, %rsi
	callq	pthread_setcancelstate
	movw	%r15w, 16(%rbx)
	movw	%r14w, 18(%rbx)
	movq	%rbx, 48(%rbx)
	movl	$__swrite, %eax
	movq	%rax, %xmm0
	movl	$__sread, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 56(%rbx)
	movq	$__sseek, 72(%rbx)
	movq	$__sclose, 80(%rbx)
	movl	-36(%rbp), %edi
	movq	%r12, %rsi
	callq	pthread_setcancelstate
	jmp	.LBB1_5
.LBB1_4:
	xorl	%ebx, %ebx
.LBB1_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fdopen, .Lfunc_end1-fdopen
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
