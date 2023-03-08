	.text
	.file	"fopencookie.c"
	.globl	_fopencookie_r          # -- Begin function _fopencookie_r
	.p2align	4, 0x90
	.type	_fopencookie_r,@function
_fopencookie_r:                         # @_fopencookie_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	-52(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	__sflags
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_12
# %bb.1:
	movl	%eax, %r12d
	leaq	16(%rbp), %r13
	movl	$42, __A_VARIABLE(%rip)
	testb	$20, %r12b
	je	.LBB0_3
# %bb.2:
	cmpq	$0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_9
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	testb	$24, %r12b
	je	.LBB0_5
# %bb.4:
	cmpq	$0, 8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_9
.LBB0_5:
	movq	%rbx, %rdi
	callq	__sfp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_12
# %bb.6:
	movq	%rax, %r15
	movl	$48, %edi
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_11
# %bb.7:
	movq	%rax, %rbx
	leaq	-44(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movw	$-1, 18(%r15)
	movw	%r12w, 16(%r15)
	movq	%r14, (%rbx)
	movq	%r15, 8(%rbx)
	movq	%rbx, 48(%r15)
	movups	(%r13), %xmm0
	movups	%xmm0, 16(%rbx)
	movl	$fcwriter, %eax
	movq	%rax, %xmm0
	movl	$fcreader, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 56(%r15)
	movdqu	16(%r13), %xmm0
	movq	%xmm0, %rax
	testq	%rax, %rax
	movl	$fcseeker, %ecx
	cmoveq	%rax, %rcx
	movq	%rcx, 72(%r15)
	movdqu	%xmm0, 32(%rbx)
	movq	$fccloser, 80(%r15)
	movl	-44(%rbp), %edi
	leaq	-44(%rbp), %rsi
	callq	pthread_setcancelstate
	jmp	.LBB0_13
.LBB0_9:
	movl	$22, (%rbx)
	jmp	.LBB0_12
.LBB0_11:
	leaq	-48(%rbp), %rbx
	movl	$1, %edi
	movq	%rbx, %rsi
	callq	pthread_setcancelstate
	callq	__sfp_lock_acquire
	movw	$0, 16(%r15)
	callq	__sfp_lock_release
	movl	-48(%rbp), %edi
	movq	%rbx, %rsi
	callq	pthread_setcancelstate
.LBB0_12:
	xorl	%r15d, %r15d
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_fopencookie_r, .Lfunc_end0-_fopencookie_r
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fcreader
	.type	fcreader,@function
fcreader:                               # @fcreader
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%ecx, %r12d
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	__errno
	movl	$0, (%rax)
	movq	(%rbx), %rdi
	movslq	%r12d, %rdx
	movq	%r15, %rsi
	callq	*16(%rbx)
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jns	.LBB1_3
# %bb.1:
	callq	__errno
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_3
# %bb.2:
	callq	__errno
	movl	(%rax), %eax
	movl	%eax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_3:
	movslq	%ebx, %rax
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fcreader, .Lfunc_end1-fcreader
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fcwriter
	.type	fcwriter,@function
fcwriter:                               # @fcwriter
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%ecx, %r12d
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	8(%rsi), %rax
	movzwl	16(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %ecx              # imm = 0x100
	je	.LBB2_3
# %bb.1:
	movq	72(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_3
# %bb.2:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movl	$2, %ecx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB2_3:
	callq	__errno
	movl	$0, (%rax)
	movq	(%rbx), %rdi
	movslq	%r12d, %rdx
	movq	%r15, %rsi
	callq	*24(%rbx)
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jns	.LBB2_6
# %bb.4:
	callq	__errno
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_6
# %bb.5:
	callq	__errno
	movl	(%rax), %eax
	movl	%eax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_6:
	movslq	%ebx, %rax
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	fcwriter, .Lfunc_end2-fcwriter
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fcseeker
	.type	fcseeker,@function
fcseeker:                               # @fcseeker
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%ecx, %r15d
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rdx, -32(%rbp)
	callq	__errno
	movl	$0, (%rax)
	movq	(%rbx), %rdi
	leaq	-32(%rbp), %rsi
	movl	%r15d, %edx
	callq	*32(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB3_3
# %bb.1:
	callq	__errno
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_3
# %bb.2:
	callq	__errno
	movl	(%rax), %eax
	movl	%eax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_3:
	movq	-32(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	fcseeker, .Lfunc_end3-fcseeker
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fccloser
	.type	fccloser,@function
fccloser:                               # @fccloser
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	cmpq	$0, 40(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_1
# %bb.2:
	movq	%rdi, %r15
	callq	__errno
	movl	$0, (%rax)
	movq	(%rbx), %rdi
	callq	*40(%rbx)
	movl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB4_5
# %bb.3:
	callq	__errno
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_5
# %bb.4:
	callq	__errno
	movl	(%rax), %eax
	movl	%eax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_5
.LBB4_1:
	xorl	%r14d, %r14d
.LBB4_5:
	movq	%rbx, %rdi
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	fccloser, .Lfunc_end4-fccloser
                                        # -- End function
	.globl	fopencookie             # -- Begin function fopencookie
	.p2align	4, 0x90
	.type	fopencookie,@function
fopencookie:                            # @fopencookie
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	__getreent
	movaps	16(%rbp), %xmm0
	movaps	32(%rbp), %xmm1
	movups	%xmm1, 16(%rsp)
	movups	%xmm0, (%rsp)
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	_fopencookie_r
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	fopencookie, .Lfunc_end5-fopencookie
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
