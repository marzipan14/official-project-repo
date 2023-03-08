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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	-60(%rbp), %rdx
	movq	%rcx, %rsi
	callq	__sflags
	testl	%eax, %eax
	je	.LBB0_5
# %bb.1:
	testq	%r15, %r15
	je	.LBB0_4
# %bb.2:
	movl	%eax, %r13d
	testb	$16, %r13b
	jne	.LBB0_7
# %bb.3:
	testq	%r14, %r14
	jne	.LBB0_7
.LBB0_4:
	movl	$22, (%rbx)
.LBB0_5:
	xorl	%r14d, %r14d
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_7:
	movq	%r14, -48(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	callq	__sfp
	testq	%rax, %rax
	je	.LBB0_5
# %bb.8:
	movq	%rax, %r14
	leaq	48(%r15), %rax
	cmpq	$0, -48(%rbp)           # 8-byte Folded Reload
	movl	$48, %edi
	cmoveq	%rax, %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB0_16
# %bb.9:
	movq	%rax, %rbx
	movl	%r13d, %eax
	shrb	$3, %al
	andb	$1, %al
	movq	%rbx, (%rbx)
	movq	%r15, 32(%rbx)
	movb	%al, 41(%rbx)
	movb	$0, 42(%rbx)
	movq	-48(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB0_17
# %bb.10:
	movq	%rax, 8(%rbx)
	movsbl	(%r12), %eax
	cmpl	$119, %eax
	je	.LBB0_19
# %bb.11:
	cmpl	$114, %eax
	je	.LBB0_18
# %bb.12:
	cmpl	$97, %eax
	jne	.LBB0_24
# %bb.13:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%esi, %esi
	movq	%r15, %rdx
	callq	memchr
	testq	%rax, %rax
	je	.LBB0_20
# %bb.14:
	subq	8(%rbx), %rax
	movq	%rax, 16(%rbx)
	movq	%rax, 24(%rbx)
	jmp	.LBB0_22
.LBB0_16:
	leaq	-56(%rbp), %rbx
	movl	$1, %edi
	movq	%rbx, %rsi
	callq	pthread_setcancelstate
	callq	__sfp_lock_acquire
	movw	$0, 16(%r14)
	callq	__sfp_lock_release
	movl	-56(%rbp), %edi
	movq	%rbx, %rsi
	callq	pthread_setcancelstate
	jmp	.LBB0_5
.LBB0_17:
	movq	%rbx, %rax
	addq	$48, %rax
	movq	%rax, 8(%rbx)
	movb	$0, 48(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rbx)
	movl	%r13d, %eax
	shrl	$8, %eax
	andb	$1, %al
	movb	%al, 40(%rbx)
	jmp	.LBB0_23
.LBB0_18:
	movb	$0, 40(%rbx)
	movq	$0, 16(%rbx)
	movq	%r15, 24(%rbx)
	jmp	.LBB0_23
.LBB0_19:
	movb	$0, 40(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rbx)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movb	$0, (%rax)
	jmp	.LBB0_23
.LBB0_20:
	movq	%r15, 16(%rbx)
	movq	%r15, 24(%rbx)
	cmpb	$0, 41(%rbx)
	je	.LBB0_22
# %bb.21:
	movq	8(%rbx), %rax
	movb	$0, -1(%r15,%rax)
.LBB0_22:
	movb	$1, 40(%rbx)
.LBB0_23:
	leaq	-52(%rbp), %r15
	movl	$1, %edi
	movq	%r15, %rsi
	callq	pthread_setcancelstate
	movw	$-1, 18(%r14)
	movw	%r13w, 16(%r14)
	movq	%rbx, 48(%r14)
	xorl	%eax, %eax
	testb	$20, %r13b
	movl	$fmemreader, %ecx
	cmoveq	%rax, %rcx
	movq	%rcx, 56(%r14)
	testb	$24, %r13b
	movl	$fmemwriter, %ecx
	cmoveq	%rax, %rcx
	movq	%rcx, 64(%r14)
	movq	$fmemseeker, 72(%r14)
	movq	$fmemcloser, 80(%r14)
	movl	-52(%rbp), %edi
	movq	%r15, %rsi
	callq	pthread_setcancelstate
	jmp	.LBB0_6
.LBB0_24:
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
	subq	%rsi, %rax
	jae	.LBB1_2
# %bb.1:
	xorl	%r14d, %r14d
	jmp	.LBB1_3
.LBB1_2:
	movslq	%ecx, %rcx
	cmpq	%rcx, %rax
	cmovbel	%eax, %ecx
	addq	8(%rbx), %rsi
	movslq	%ecx, %r14
	movq	%rdx, %rdi
	movq	%r14, %rdx
	callq	memcpy
	addq	%r14, 16(%rbx)
.LBB1_3:
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
	movl	%ecx, %r12d
	movq	%rdx, %r11
	movq	%rsi, %r14
	movq	%rdi, %rax
	cmpb	$0, 40(%rsi)
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	je	.LBB2_2
# %bb.1:
	leaq	24(%r14), %r15
	movq	24(%r14), %rdi
	leaq	16(%r14), %r13
	movq	%rdi, 16(%r14)
	movq	%rdi, %rcx
	jmp	.LBB2_4
.LBB2_2:
	leaq	16(%r14), %r13
	movq	16(%r14), %rcx
	movq	24(%r14), %rdi
	leaq	24(%r14), %r15
	movq	%rcx, %rdx
	subq	%rdi, %rdx
	jbe	.LBB2_4
# %bb.3:
	addq	8(%r14), %rdi
	xorl	%esi, %esi
	movq	%r11, %rbx
	callq	memset
	movq	%rbx, %r11
	movq	16(%r14), %rcx
	movq	24(%r14), %rdi
.LBB2_4:
	movslq	%r12d, %rax
	leaq	(%rcx,%rax), %r9
	movq	32(%r14), %r10
	movsbl	41(%r14), %edx
	movslq	%edx, %rbx
	movq	%r10, %rsi
	subq	%rbx, %rsi
	movl	%r10d, %ebx
	subl	%ecx, %ebx
	xorl	%r8d, %r8d
	cmpq	%rsi, %r9
	cmoval	%ebx, %eax
	cmoval	%edx, %r8d
	movslq	%eax, %r12
	addq	%r12, %rcx
	cmpq	%rdi, %rcx
	jbe	.LBB2_7
# %bb.5:
	movq	%rcx, (%r15)
	movslq	%r8d, %rdx
	subq	%rdx, %rcx
	cmpq	%r10, %rcx
	jae	.LBB2_11
# %bb.6:
	movq	8(%r14), %rdx
	movb	$0, (%rdx,%rcx)
	movb	$0, 42(%r14)
	jmp	.LBB2_11
.LBB2_7:
	testb	%dl, %dl
	je	.LBB2_11
# %bb.8:
	testl	%eax, %eax
	je	.LBB2_9
# %bb.10:
	movq	8(%r14), %rdx
	movslq	%r8d, %rsi
	subq	%rsi, %rcx
	movb	(%rdx,%rcx), %bl
	movb	%bl, 42(%r14)
	movb	$0, (%rdx,%rcx)
	jmp	.LBB2_11
.LBB2_9:
	xorl	%r8d, %r8d
.LBB2_11:
	movq	(%r13), %rdi
	leaq	(%rdi,%r12), %rcx
	movq	%rcx, (%r13)
	subl	%r8d, %eax
	je	.LBB2_13
# %bb.12:
	addq	8(%r14), %rdi
	movslq	%eax, %rdx
	movq	%r11, %rsi
	callq	memcpy
	jmp	.LBB2_14
.LBB2_13:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$28, (%rax)
	movq	$-1, %r12
.LBB2_14:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
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
	cmpl	$1, %ecx
	je	.LBB3_3
# %bb.1:
	cmpl	$2, %ecx
	jne	.LBB3_5
# %bb.2:
	movl	$24, %ecx
	jmp	.LBB3_4
.LBB3_3:
	movl	$16, %ecx
.LBB3_4:
	addq	(%rsi,%rcx), %rax
.LBB3_5:
	testq	%rax, %rax
	js	.LBB3_8
# %bb.6:
	cmpq	32(%rsi), %rax
	jbe	.LBB3_10
# %bb.7:
	movl	$28, (%rdi)
	jmp	.LBB3_9
.LBB3_8:
	movl	$22, (%rdi)
.LBB3_9:
	movq	$-1, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB3_10:
	cmpb	$0, 41(%rsi)
	je	.LBB3_14
# %bb.11:
	movq	16(%rsi), %rcx
	cmpq	24(%rsi), %rcx
	jae	.LBB3_15
# %bb.12:
	movb	42(%rsi), %dl
	movq	8(%rsi), %rdi
	movb	%dl, (%rdi,%rcx)
	movb	$0, 42(%rsi)
	movq	%rax, 16(%rsi)
	cmpb	$0, 41(%rsi)
	je	.LBB3_13
# %bb.16:
	cmpq	24(%rsi), %rax
	jae	.LBB3_13
.LBB3_17:
	movq	8(%rsi), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, 42(%rsi)
	movb	$0, (%rcx,%rax)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB3_14:
	movq	%rax, 16(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB3_15:
	movq	%rax, 16(%rsi)
	cmpq	24(%rsi), %rax
	jb	.LBB3_17
.LBB3_13:
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
