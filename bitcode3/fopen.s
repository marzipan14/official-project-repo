	.text
	.file	"fopen.c"
	.globl	_fopen_r                # -- Begin function _fopen_r
	.p2align	4, 0x90
	.type	_fopen_r,@function
_fopen_r:                               # @_fopen_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %r12
	movq	%rdi, %r14
	leaq	-44(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	__sflags
	testl	%eax, %eax
	je	.LBB0_9
# %bb.1:
	movl	%eax, %r15d
	movq	%r14, %rdi
	callq	__sfp
	testq	%rax, %rax
	je	.LBB0_9
# %bb.2:
	movq	%rax, %rbx
	movl	-44(%rbp), %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	movl	$438, %ecx              # imm = 0x1B6
	callq	_open_r
	testl	%eax, %eax
	js	.LBB0_8
# %bb.3:
	movl	%eax, %r12d
	leaq	-36(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movw	%r12w, 18(%rbx)
	movw	%r15w, 16(%rbx)
	movq	%rbx, 48(%rbx)
	movl	$__swrite, %eax
	movq	%rax, %xmm0
	movl	$__sread, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 56(%rbx)
	movq	$__sseek, 72(%rbx)
	movq	$__sclose, 80(%rbx)
	testl	$256, %r15d             # imm = 0x100
	je	.LBB0_5
# %bb.4:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movl	$2, %ecx
	callq	_fseek_r
.LBB0_5:
	movl	-36(%rbp), %edi
	leaq	-36(%rbp), %rsi
	callq	pthread_setcancelstate
	jmp	.LBB0_10
.LBB0_8:
	leaq	-40(%rbp), %r14
	movl	$1, %edi
	movq	%r14, %rsi
	callq	pthread_setcancelstate
	callq	__sfp_lock_acquire
	movw	$0, 16(%rbx)
	callq	__sfp_lock_release
	movl	-40(%rbp), %edi
	movq	%r14, %rsi
	callq	pthread_setcancelstate
.LBB0_9:
	xorl	%ebx, %ebx
.LBB0_10:
	movq	%rbx, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_fopen_r, .Lfunc_end0-_fopen_r
                                        # -- End function
	.globl	fopen                   # -- Begin function fopen
	.p2align	4, 0x90
	.type	fopen,@function
fopen:                                  # @fopen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	_fopen_r                # TAILCALL
.Lfunc_end1:
	.size	fopen, .Lfunc_end1-fopen
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
