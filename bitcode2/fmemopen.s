	.text
	.file	"fmemopen.c"
	.globl	_fmemopen_r             # -- Begin function _fmemopen_r
	.p2align	4, 0x90
	.type	_fmemopen_r,@function
_fmemopen_r:                            # @_fmemopen_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rcx, %r12
	movq	%rdx, %r15
	movq	%rsi, %r13
	movq	%rdi, %rbx
	leaq	-52(%rbp), %rdx
	movq	%rcx, %rsi
	callq	__sflags
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_5
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB0_4
# %bb.2:
	movl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	jne	.LBB0_6
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r14b
	jne	.LBB0_6
.LBB0_4:
	movl	$22, (%rbx)
	jmp	.LBB0_5
.LBB0_6:
	movq	%rbx, %rdi
	callq	__sfp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_5
# %bb.7:
	movq	%rax, %rbx
	leaq	48(%r15), %rax
	testq	%r13, %r13
	movl	$48, %edi
	cmoveq	%rax, %rdi
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_15
# %bb.8:
	movl	%r14d, %ecx
	shrb	$3, %cl
	andb	$1, %cl
	movq	%rax, (%rax)
	movq	%r15, 32(%rax)
	movb	%cl, 41(%rax)
	movb	$0, 42(%rax)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB0_16
# %bb.9:
	movq	%r13, 8(%rax)
	movsbl	(%r12), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$119, %ecx
	je	.LBB0_18
# %bb.10:
	cmpl	$114, %ecx
	je	.LBB0_17
# %bb.11:
	cmpl	$97, %ecx
	jne	.LBB0_26
# %bb.12:
	movq	%rax, %r12
	movq	%r13, %rdi
	xorl	%esi, %esi
	movq	%r15, %rdx
	callq	memchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_20
# %bb.13:
	subq	8(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 16(%r12)
	movq	%rax, 24(%r12)
	jmp	.LBB0_22
.LBB0_5:
	xorl	%ebx, %ebx
.LBB0_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_15:
	leaq	-48(%rbp), %r14
	movl	$1, %edi
	movq	%r14, %rsi
	callq	pthread_setcancelstate
	callq	__sfp_lock_acquire
	movw	$0, 16(%rbx)
	callq	__sfp_lock_release
	movl	-48(%rbp), %edi
	movq	%r14, %rsi
	callq	pthread_setcancelstate
	xorl	%ebx, %ebx
	jmp	.LBB0_25
.LBB0_16:
	movq	%rax, %rcx
	addq	$48, %rcx
	movq	%rcx, 8(%rax)
	movb	$0, 48(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movl	%r14d, %ecx
	shrl	$8, %ecx
	andb	$1, %cl
	movb	%cl, 40(%rax)
	jmp	.LBB0_19
.LBB0_17:
	movb	$0, 40(%rax)
	movq	$0, 16(%rax)
	movq	%r15, 24(%rax)
	jmp	.LBB0_19
.LBB0_18:
	movb	$0, 40(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movb	$0, (%r13)
.LBB0_19:
	movq	%rax, %r12
	jmp	.LBB0_24
.LBB0_20:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, 16(%r12)
	movq	%r15, 24(%r12)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, 41(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_23
# %bb.21:
	movq	8(%r12), %rax
	movb	$0, -1(%r15,%rax)
.LBB0_22:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_23:
	movb	$1, 40(%r12)
.LBB0_24:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-44(%rbp), %r15
	movl	$1, %edi
	movq	%r15, %rsi
	callq	pthread_setcancelstate
	movw	$-1, 18(%rbx)
	movw	%r14w, 16(%rbx)
	movq	%r12, 48(%rbx)
	xorl	%eax, %eax
	testb	$20, %r14b
	movl	$fmemreader, %ecx
	cmoveq	%rax, %rcx
	movq	%rcx, 56(%rbx)
	testb	$24, %r14b
	movl	$fmemwriter, %ecx
	cmoveq	%rax, %rcx
	movq	%rcx, 64(%rbx)
	movq	$fmemseeker, 72(%rbx)
	movq	$fmemcloser, 80(%rbx)
	movl	-44(%rbp), %edi
	movq	%r15, %rsi
	callq	pthread_setcancelstate
	jmp	.LBB0_25
.LBB0_26:
	callq	abort
.Lfunc_end0:
	.size	_fmemopen_r, .Lfunc_end0-_fmemopen_r
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fmemreader
	.type	fmemreader,@function
fmemreader:                             # @fmemreader
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %rbx
	movq	16(%rsi), %rsi
	movq	24(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	subq	%rsi, %rax
	jae	.LBB1_2
# %bb.1:
	xorl	%r14d, %r14d
	jmp	.LBB1_5
.LBB1_2:
	movslq	%ecx, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rax
	ja	.LBB1_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movslq	%eax, %r14
.LBB1_4:
	addq	8(%rbx), %rsi
	movq	%rdx, %rdi
	movq	%r14, %rdx
	callq	memcpy
	addq	%r14, 16(%rbx)
.LBB1_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fmemreader, .Lfunc_end1-fmemreader
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fmemwriter
	.type	fmemwriter,@function
fmemwriter:                             # @fmemwriter
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%ecx, %r15d
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r9
	cmpb	$0, 40(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_2
# %bb.1:
	movq	24(%rbx), %rsi
	leaq	16(%rbx), %r12
	movq	%rsi, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_4
.LBB2_2:
	leaq	16(%rbx), %r12
	movq	16(%rbx), %rsi
	movq	24(%rbx), %rdi
	movq	%rsi, %rdx
	movl	$42, __A_VARIABLE(%rip)
	subq	%rdi, %rdx
	jbe	.LBB2_4
# %bb.3:
	addq	8(%rbx), %rdi
	xorl	%esi, %esi
	movq	%r9, %r13
	callq	memset
	movq	%r13, %r9
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rsi
.LBB2_4:
	movslq	%r15d, %r13
	leaq	(%rsi,%r13), %rcx
	movq	32(%rbx), %rax
	movsbq	41(%rbx), %rdi
	movq	%rax, %rdx
	subq	%rdi, %rdx
	xorl	%r8d, %r8d
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jbe	.LBB2_6
# %bb.5:
	movq	%rax, %r15
	subq	%rsi, %r15
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r15d, %r13
	addq	%r13, %rsi
	movq	%rsi, %rcx
	movl	%edi, %r8d
.LBB2_6:
	cmpq	24(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB2_9
# %bb.7:
	movq	%rcx, 24(%rbx)
	movslq	%r8d, %rdx
	subq	%rdx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jae	.LBB2_13
# %bb.8:
	movq	8(%rbx), %rax
	movb	$0, (%rax,%rcx)
	movb	$0, 42(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_13
.LBB2_9:
	movl	$42, __A_VARIABLE(%rip)
	testb	%dil, %dil
	je	.LBB2_13
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB2_12
# %bb.11:
	movq	8(%rbx), %rax
	movslq	%r8d, %rdx
	subq	%rdx, %rcx
	movb	(%rax,%rcx), %dl
	movb	%dl, 42(%rbx)
	movb	$0, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_13
.LBB2_12:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r8d, %r8d
.LBB2_13:
	movq	(%r12), %rdi
	leaq	(%rdi,%r13), %rax
	movq	%rax, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	subl	%r8d, %r15d
	je	.LBB2_15
# %bb.14:
	addq	8(%rbx), %rdi
	movslq	%r15d, %rdx
	movq	%r14, %rsi
	callq	memcpy
	jmp	.LBB2_16
.LBB2_15:
	movl	$28, (%r9)
	movq	$-1, %r13
.LBB2_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	fmemwriter, .Lfunc_end2-fmemwriter
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fmemseeker
	.type	fmemseeker,@function
fmemseeker:                             # @fmemseeker
# %bb.0:
	movq	%rdx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %edx
	cmpl	$1, %ecx
	je	.LBB3_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$24, %edx
	cmpl	$2, %ecx
	jne	.LBB3_3
.LBB3_2:
	addq	(%rsi,%rdx), %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB3_3:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	js	.LBB3_4
# %bb.6:
	cmpq	32(%rsi), %rax
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB3_8
# %bb.7:
	movl	$28, (%rdi)
	jmp	.LBB3_5
.LBB3_4:
	movl	$22, (%rdi)
.LBB3_5:
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB3_8:
	cmpb	$0, 41(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_9
# %bb.10:
	movq	16(%rsi), %rcx
	cmpq	24(%rsi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB3_11
# %bb.12:
	movb	42(%rsi), %dl
	movq	8(%rsi), %rdi
	movb	%dl, (%rdi,%rcx)
	movb	$0, 42(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 16(%rsi)
	cmpb	$0, 41(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_13
.LBB3_16:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB3_9:
	movq	%rax, 16(%rsi)
	jmp	.LBB3_15
.LBB3_11:
	movq	%rax, 16(%rsi)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_13:
	cmpq	24(%rsi), %rax
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB3_16
# %bb.14:
	movq	8(%rsi), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, 42(%rsi)
	movb	$0, (%rcx,%rax)
.LBB3_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end3:
	.size	fmemseeker, .Lfunc_end3-fmemseeker
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fmemcloser
	.type	fmemcloser,@function
fmemcloser:                             # @fmemcloser
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	(%rsi), %rdi
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	fmemcloser, .Lfunc_end4-fmemcloser
                                        # -- End function
	.globl	fmemopen                # -- Begin function fmemopen
	.p2align	4, 0x90
	.type	fmemopen,@function
fmemopen:                               # @fmemopen
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
	callq	_fmemopen_r
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	fmemopen, .Lfunc_end5-fmemopen
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
