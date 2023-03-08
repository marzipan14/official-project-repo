	.text
	.file	"freopen.c"
	.globl	_freopen_r              # -- Begin function _freopen_r
	.p2align	4, 0x90
	.type	_freopen_r,@function
_freopen_r:                             # @_freopen_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, %rbx
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r14
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%r14)
	jne	.LBB0_3
# %bb.2:
	movq	%r14, %rdi
	callq	__sinit
.LBB0_3:
	leaq	-44(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	leaq	-48(%rbp), %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	__sflags
	testl	%eax, %eax
	je	.LBB0_10
# %bb.4:
	movl	%eax, %r15d
	movzwl	16(%rbx), %eax
	testw	%ax, %ax
	je	.LBB0_11
# %bb.5:
	testb	$8, %al
	je	.LBB0_7
# %bb.6:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_fflush_r
.LBB0_7:
	testq	%r12, %r12
	je	.LBB0_12
# %bb.8:
	movq	80(%rbx), %rax
	testq	%rax, %rax
	je	.LBB0_12
# %bb.9:
	movq	48(%rbx), %rsi
	movq	%r14, %rdi
	callq	*%rax
	jmp	.LBB0_13
.LBB0_10:
	movl	-44(%rbp), %edi
	leaq	-44(%rbp), %rsi
	callq	pthread_setcancelstate
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_fclose_r
	jmp	.LBB0_25
.LBB0_11:
	movw	$32, 16(%rbx)
.LBB0_12:
	testq	%r12, %r12
	je	.LBB0_27
.LBB0_13:
	movl	-48(%rbp), %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	movl	$438, %ecx              # imm = 0x1B6
	callq	_open_r
	movl	%eax, %r12d
	movl	(%r14), %r13d
.LBB0_14:
	cmpb	$0, 16(%rbx)
	jns	.LBB0_16
# %bb.15:
	movq	24(%rbx), %rdi
	callq	free
.LBB0_16:
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%rbx)
	movq	$0, 24(%rbx)
	movl	$0, 32(%rbx)
	movl	$0, 40(%rbx)
	movq	88(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB0_20
# %bb.17:
	leaq	116(%rbx), %rax
	cmpq	%rax, %rdi
	je	.LBB0_19
# %bb.18:
	callq	free
.LBB0_19:
	movq	$0, 88(%rbx)
.LBB0_20:
	movl	$0, 96(%rbx)
	movq	120(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB0_22
# %bb.21:
	callq	free
	movq	$0, 120(%rbx)
.LBB0_22:
	movl	$0, 128(%rbx)
	andb	$-33, 17(%rbx)
	andb	$-33, 173(%rbx)
	leaq	164(%rbx), %rdi
	movl	$8, %edx
	xorl	%esi, %esi
	callq	memset
	testl	%r12d, %r12d
	js	.LBB0_24
# %bb.23:
	movw	%r15w, 16(%rbx)
	movw	%r12w, 18(%rbx)
	movq	%rbx, 48(%rbx)
	movl	$__swrite, %eax
	movq	%rax, %xmm0
	movl	$__sread, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 56(%rbx)
	movq	$__sseek, 72(%rbx)
	movq	$__sclose, 80(%rbx)
	movl	-44(%rbp), %edi
	leaq	-44(%rbp), %rsi
	callq	pthread_setcancelstate
	jmp	.LBB0_26
.LBB0_24:
	callq	__sfp_lock_acquire
	movw	$0, 16(%rbx)
	movl	%r13d, (%r14)
	callq	__sfp_lock_release
	movl	-44(%rbp), %edi
	leaq	-44(%rbp), %rsi
	callq	pthread_setcancelstate
.LBB0_25:
	xorl	%ebx, %ebx
.LBB0_26:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_27:
	movq	80(%rbx), %rcx
	movl	$9, %r13d
	movl	$-1, %r12d
	testq	%rcx, %rcx
	je	.LBB0_14
# %bb.28:
	movq	48(%rbx), %rsi
	movq	%r14, %rdi
	callq	*%rcx
	jmp	.LBB0_14
.Lfunc_end0:
	.size	_freopen_r, .Lfunc_end0-_freopen_r
                                        # -- End function
	.globl	freopen                 # -- Begin function freopen
	.p2align	4, 0x90
	.type	freopen,@function
freopen:                                # @freopen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_freopen_r              # TAILCALL
.Lfunc_end1:
	.size	freopen, .Lfunc_end1-freopen
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
