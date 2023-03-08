	.text
	.file	"funopen.c"
	.globl	_funopen_r              # -- Begin function _funopen_r
	.p2align	4, 0x90
	.type	_funopen_r,@function
_funopen_r:                             # @_funopen_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdx, %rax
	orq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_6
# %bb.1:
	movq	%r9, %r13
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%r8, -56(%rbp)          # 8-byte Spill
	callq	__sfp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_7
# %bb.2:
	movq	%rax, %rbx
	movq	%r13, -72(%rbp)         # 8-byte Spill
	movl	$40, %edi
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_8
# %bb.3:
	movq	%rax, %r13
	leaq	-44(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movw	$-1, 18(%rbx)
	movq	%r15, (%r13)
	movq	%r13, 48(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB0_9
# %bb.4:
	movq	%r14, 8(%r13)
	movq	$funreader, 56(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB0_10
# %bb.5:
	movw	$16, 16(%rbx)
	movq	%r12, 16(%r13)
	movq	$funwriter, 64(%rbx)
	jmp	.LBB0_11
.LBB0_6:
	movl	$22, (%rdi)
.LBB0_7:
	xorl	%ebx, %ebx
	jmp	.LBB0_12
.LBB0_8:
	leaq	-60(%rbp), %r14
	movl	$1, %edi
	movq	%r14, %rsi
	callq	pthread_setcancelstate
	callq	__sfp_lock_acquire
	movw	$0, 16(%rbx)
	callq	__sfp_lock_release
	movl	-60(%rbp), %edi
	movq	%r14, %rsi
	callq	pthread_setcancelstate
	xorl	%ebx, %ebx
	jmp	.LBB0_12
.LBB0_9:
	movw	$8, 16(%rbx)
	movq	%r12, 16(%r13)
	movq	$0, 8(%r13)
	movl	$funwriter, %eax
	movq	%rax, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqu	%xmm0, 56(%rbx)
	jmp	.LBB0_11
.LBB0_10:
	movw	$4, 16(%rbx)
	movq	$0, 16(%r13)
	movq	$0, 64(%rbx)
.LBB0_11:
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, 24(%r13)
	testq	%rcx, %rcx
	movl	$funseeker, %eax
	cmoveq	%rcx, %rax
	movq	%rax, 72(%rbx)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, 32(%r13)
	movq	$funcloser, 80(%rbx)
	movl	-44(%rbp), %edi
	leaq	-44(%rbp), %rsi
	callq	pthread_setcancelstate
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_funopen_r, .Lfunc_end0-_funopen_r
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function funreader
	.type	funreader,@function
funreader:                              # @funreader
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%ecx, %r15d
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	__errno
	movl	$0, (%rax)
	movq	(%rbx), %rdi
	movq	%r12, %rsi
	movl	%r15d, %edx
	callq	*8(%rbx)
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
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
	.size	funreader, .Lfunc_end1-funreader
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function funwriter
	.type	funwriter,@function
funwriter:                              # @funwriter
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%ecx, %r15d
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	__errno
	movl	$0, (%rax)
	movq	(%rbx), %rdi
	movq	%r12, %rsi
	movl	%r15d, %edx
	callq	*16(%rbx)
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB2_3
# %bb.1:
	callq	__errno
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_3
# %bb.2:
	callq	__errno
	movl	(%rax), %eax
	movl	%eax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_3:
	movslq	%ebx, %rax
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	funwriter, .Lfunc_end2-funwriter
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function funseeker
	.type	funseeker,@function
funseeker:                              # @funseeker
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%ecx, %r15d
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	__errno
	movl	$0, (%rax)
	movq	(%rbx), %rdi
	movq	%r12, %rsi
	movl	%r15d, %edx
	callq	*24(%rbx)
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
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
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	funseeker, .Lfunc_end3-funseeker
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function funcloser
	.type	funcloser,@function
funcloser:                              # @funcloser
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	cmpq	$0, 32(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_1
# %bb.2:
	movq	%rdi, %r15
	callq	__errno
	movl	$0, (%rax)
	movq	(%rbx), %rdi
	callq	*32(%rbx)
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
	.size	funcloser, .Lfunc_end4-funcloser
                                        # -- End function
	.globl	funopen                 # -- Begin function funopen
	.p2align	4, 0x90
	.type	funopen,@function
funopen:                                # @funopen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%r15, %r8
	movq	%r14, %r9
	callq	_funopen_r
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	funopen, .Lfunc_end5-funopen
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
