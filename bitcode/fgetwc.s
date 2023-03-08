	.text
	.file	"fgetwc.c"
	.globl	__fgetwc                # -- Begin function __fgetwc
	.p2align	4, 0x90
	.type	__fgetwc,@function
__fgetwc:                               # @__fgetwc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	cmpl	$0, 8(%rsi)
	jle	.LBB0_1
.LBB0_2:
	callq	__locale_mb_cur_max
	cmpl	$1, %eax
	jne	.LBB0_3
# %bb.12:
	movq	(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rbx)
	movzbl	(%rax), %eax
	movl	%eax, -36(%rbp)
	addl	$-1, 8(%rbx)
	jmp	.LBB0_11
.LBB0_3:
	leaq	164(%rbx), %r15
	leaq	-36(%rbp), %r12
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdx
	movslq	8(%rbx), %rcx
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r15, %r8
	callq	_mbrtowc_r
	cmpq	$-2, %rax
	jne	.LBB0_5
# %bb.9:                                #   in Loop: Header=BB0_4 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__srefill_r
	testl	%eax, %eax
	je	.LBB0_4
	jmp	.LBB0_10
.LBB0_1:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__srefill_r
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	jne	.LBB0_11
	jmp	.LBB0_2
.LBB0_5:
	cmpq	$-1, %rax
	je	.LBB0_10
# %bb.6:
	testq	%rax, %rax
	jne	.LBB0_8
# %bb.7:
	addq	$1, (%rbx)
	addl	$-1, 8(%rbx)
	xorl	%eax, %eax
	jmp	.LBB0_11
.LBB0_10:
	orb	$64, 16(%rbx)
	callq	__errno
	movl	$138, (%rax)
	movl	$-1, %eax
	jmp	.LBB0_11
.LBB0_8:
	addq	%rax, (%rbx)
	subl	%eax, 8(%rbx)
	movl	-36(%rbp), %eax
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__fgetwc, .Lfunc_end0-__fgetwc
                                        # -- End function
	.globl	_fgetwc_r               # -- Begin function _fgetwc_r
	.p2align	4, 0x90
	.type	_fgetwc_r,@function
_fgetwc_r:                              # @_fgetwc_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	-28(%rbp), %r15
	movl	$1, %edi
	movq	%r15, %rsi
	callq	pthread_setcancelstate
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__fgetwc
	movl	%eax, %ebx
	movl	-28(%rbp), %edi
	movq	%r15, %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_fgetwc_r, .Lfunc_end1-_fgetwc_r
                                        # -- End function
	.globl	fgetwc                  # -- Begin function fgetwc
	.p2align	4, 0x90
	.type	fgetwc,@function
fgetwc:                                 # @fgetwc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	callq	__getreent
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB2_3
# %bb.1:
	cmpl	$0, 80(%rbx)
	jne	.LBB2_3
# %bb.2:
	movq	%rbx, %rdi
	callq	__sinit
.LBB2_3:
	leaq	-28(%rbp), %r15
	movl	$1, %edi
	movq	%r15, %rsi
	callq	pthread_setcancelstate
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__fgetwc
	movl	%eax, %ebx
	movl	-28(%rbp), %edi
	movq	%r15, %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	fgetwc, .Lfunc_end2-fgetwc
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
