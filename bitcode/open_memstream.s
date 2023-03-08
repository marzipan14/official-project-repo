	.text
	.file	"open_memstream.c"
	.globl	_open_memstream_r       # -- Begin function _open_memstream_r
	.p2align	4, 0x90
	.type	_open_memstream_r,@function
_open_memstream_r:                      # @_open_memstream_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$-1, %ecx
	callq	internal_open_memstream_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_open_memstream_r, .Lfunc_end0-_open_memstream_r
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function internal_open_memstream_r
	.type	internal_open_memstream_r,@function
internal_open_memstream_r:              # @internal_open_memstream_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	testq	%rsi, %rsi
	je	.LBB1_10
# %bb.1:
	movq	%rdx, %r12
	testq	%rdx, %rdx
	je	.LBB1_10
# %bb.2:
	movl	%ecx, %r15d
	movq	%rsi, %rbx
	callq	__sfp
	testq	%rax, %rax
	je	.LBB1_11
# %bb.3:
	movq	%rax, %r13
	movl	$56, %edi
	callq	malloc
	testq	%rax, %rax
	je	.LBB1_12
# %bb.4:
	movq	%rax, %r14
	movq	(%r12), %rcx
	leaq	(,%rcx,4), %rax
	cmpl	$1, %r15d
	cmovneq	%rcx, %rax
	movq	%rax, 40(%r14)
	movl	$64, %ecx
	cmpq	$64, %rax
	jb	.LBB1_6
# %bb.5:
	movl	$65536, %ecx            # imm = 0x10000
	cmpq	$65537, %rax            # imm = 0x10001
	jb	.LBB1_7
.LBB1_6:
	movq	%rcx, 40(%r14)
.LBB1_7:
	movq	$0, (%r12)
	movq	40(%r14), %rdi
	callq	malloc
	movq	%rax, (%rbx)
	testq	%rax, %rax
	je	.LBB1_13
# %bb.8:
	cmpl	$1, %r15d
	jne	.LBB1_14
# %bb.9:
	movl	$0, (%rax)
	jmp	.LBB1_15
.LBB1_10:
	movl	$22, (%rdi)
.LBB1_11:
	xorl	%r13d, %r13d
.LBB1_16:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_12:
	leaq	-52(%rbp), %rbx
	movl	$1, %edi
	movq	%rbx, %rsi
	callq	pthread_setcancelstate
	callq	__sfp_lock_acquire
	movw	$0, 16(%r13)
	callq	__sfp_lock_release
	movl	-52(%rbp), %edi
	movq	%rbx, %rsi
	callq	pthread_setcancelstate
	xorl	%r13d, %r13d
	jmp	.LBB1_16
.LBB1_13:
	leaq	-48(%rbp), %rbx
	movl	$1, %edi
	movq	%rbx, %rsi
	callq	pthread_setcancelstate
	callq	__sfp_lock_acquire
	movw	$0, 16(%r13)
	callq	__sfp_lock_release
	movl	-48(%rbp), %edi
	movq	%rbx, %rsi
	callq	pthread_setcancelstate
	movq	%r14, %rdi
	callq	free
	xorl	%r13d, %r13d
	jmp	.LBB1_16
.LBB1_14:
	movb	$0, (%rax)
.LBB1_15:
	movq	%r14, (%r14)
	movq	%rbx, 8(%r14)
	movq	%r12, 16(%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%r14)
	movl	$0, 48(%r14)
	movb	%r15b, 52(%r14)
	leaq	-44(%rbp), %rbx
	movl	$1, %edi
	movq	%rbx, %rsi
	callq	pthread_setcancelstate
	movl	$-65528, 16(%r13)       # imm = 0xFFFF0008
	movq	%r14, 48(%r13)
	movl	$memwriter, %eax
	movq	%rax, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqu	%xmm0, 56(%r13)
	movq	$memseeker, 72(%r13)
	movq	$memcloser, 80(%r13)
	movl	-44(%rbp), %edi
	movq	%rbx, %rsi
	callq	pthread_setcancelstate
	jmp	.LBB1_16
.Lfunc_end1:
	.size	internal_open_memstream_r, .Lfunc_end1-internal_open_memstream_r
                                        # -- End function
	.globl	_open_wmemstream_r      # -- Begin function _open_wmemstream_r
	.p2align	4, 0x90
	.type	_open_wmemstream_r,@function
_open_wmemstream_r:                     # @_open_wmemstream_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %ecx
	callq	internal_open_memstream_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	_open_wmemstream_r, .Lfunc_end2-_open_wmemstream_r
                                        # -- End function
	.globl	open_memstream          # -- Begin function open_memstream
	.p2align	4, 0x90
	.type	open_memstream,@function
open_memstream:                         # @open_memstream
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
	movl	$-1, %ecx
	callq	internal_open_memstream_r
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	open_memstream, .Lfunc_end3-open_memstream
                                        # -- End function
	.globl	open_wmemstream         # -- Begin function open_wmemstream
	.p2align	4, 0x90
	.type	open_wmemstream,@function
open_wmemstream:                        # @open_wmemstream
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
	movl	$1, %ecx
	callq	internal_open_memstream_r
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	open_wmemstream, .Lfunc_end4-open_wmemstream
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function memwriter
	.type	memwriter,@function
memwriter:                              # @memwriter
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rax
	movq	24(%rsi), %rdi
	movslq	%ecx, %r14
	movq	%rdi, %rbx
	addq	%r14, %rbx
	js	.LBB5_1
# %bb.2:
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	8(%rsi), %rax
	movq	(%rax), %r15
	movq	40(%rsi), %rax
	cmpq	%rax, %rbx
	jb	.LBB5_6
# %bb.3:
	leaq	(%rax,%rax,2), %rax
	shrq	%rax
	addq	$1, %rbx
	cmpq	%rbx, %rax
	cmovaeq	%rax, %rbx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB5_4
# %bb.5:
	movq	%rax, %r15
	movq	8(%r13), %rax
	movq	%r15, (%rax)
	movq	%rbx, 40(%r13)
	movq	24(%r13), %rdi
.LBB5_6:
	movq	32(%r13), %rax
	movq	%rdi, %rdx
	subq	%rax, %rdx
	jbe	.LBB5_8
# %bb.7:
	addq	%r15, %rax
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset
	movq	24(%r13), %rdi
.LBB5_8:
	addq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	memcpy
	movq	24(%r13), %rax
	addq	%r14, %rax
	movq	%rax, 24(%r13)
	cmpq	32(%r13), %rax
	jbe	.LBB5_10
# %bb.9:
	movq	%rax, 32(%r13)
	addq	%rax, %r15
	jmp	.LBB5_13
.LBB5_1:
	movl	$27, (%rax)
	movq	$-1, %r14
	jmp	.LBB5_14
.LBB5_10:
	addq	%rax, %r15
	cmpb	$0, 52(%r13)
	jle	.LBB5_12
# %bb.11:
	movl	(%r15), %eax
	movl	%eax, 48(%r13)
	jmp	.LBB5_13
.LBB5_4:
	movq	$-1, %r14
	jmp	.LBB5_14
.LBB5_12:
	movb	(%r15), %al
	movb	%al, 48(%r13)
.LBB5_13:
	movb	$0, (%r15)
	movq	24(%r13), %rax
	movq	%rax, %rcx
	shrq	$2, %rcx
	cmpb	$0, 52(%r13)
	movq	16(%r13), %rdx
	cmovleq	%rax, %rcx
	movq	%rcx, (%rdx)
.LBB5_14:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	memwriter, .Lfunc_end5-memwriter
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function memseeker
	.type	memseeker,@function
memseeker:                              # @memseeker
# %bb.0:
	movq	%rdx, %rax
	cmpl	$1, %ecx
	je	.LBB6_1
# %bb.2:
	cmpl	$2, %ecx
	jne	.LBB6_5
# %bb.3:
	movl	$32, %ecx
	jmp	.LBB6_4
.LBB6_1:
	movl	$24, %ecx
.LBB6_4:
	addq	(%rsi,%rcx), %rax
.LBB6_5:
	testq	%rax, %rax
	js	.LBB6_6
# %bb.7:
	movq	24(%rsi), %rdx
	movq	32(%rsi), %rcx
	cmpq	%rcx, %rdx
	jae	.LBB6_12
# %bb.8:
	cmpb	$0, 52(%rsi)
	jle	.LBB6_10
# %bb.9:
	movl	48(%rsi), %r8d
	movq	8(%rsi), %rdi
	movq	(%rdi), %rdi
	movl	%r8d, (%rdi,%rdx)
	jmp	.LBB6_11
.LBB6_6:
	movl	$22, (%rdi)
	movq	$-1, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB6_10:
	movb	48(%rsi), %cl
	movq	8(%rsi), %rdi
	movq	(%rdi), %rdi
	movb	%cl, (%rdi,%rdx)
	movq	32(%rsi), %rcx
.LBB6_11:
	movl	$0, 48(%rsi)
.LBB6_12:
	movq	%rax, 24(%rsi)
	movb	52(%rsi), %dl
	cmpq	%rcx, %rax
	jae	.LBB6_16
# %bb.13:
	movq	8(%rsi), %rcx
	movq	(%rcx), %rdi
	testb	%dl, %dl
	jle	.LBB6_15
# %bb.14:
	movl	(%rdi,%rax), %edx
	movl	%edx, 48(%rsi)
	movq	(%rcx), %rcx
	movl	$0, (%rcx,%rax)
	movq	%rax, %rcx
	jmp	.LBB6_17
.LBB6_16:
	testb	%dl, %dl
	jle	.LBB6_18
.LBB6_17:
	shrq	$2, %rcx
.LBB6_18:
	movq	16(%rsi), %rdx
	movq	%rcx, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB6_15:
	movb	(%rdi,%rax), %dl
	movb	%dl, 48(%rsi)
	movq	(%rcx), %rcx
	movb	$0, (%rcx,%rax)
	movq	16(%rsi), %rcx
	movq	24(%rsi), %rdx
	movq	%rdx, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end6:
	.size	memseeker, .Lfunc_end6-memseeker
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function memcloser
	.type	memcloser,@function
memcloser:                              # @memcloser
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	movq	8(%rsi), %rax
	movq	16(%rsi), %rcx
	movq	(%rax), %rdi
	movq	(%rcx), %rax
	cmpb	$0, 52(%rsi)
	leaq	4(,%rax,4), %rcx
	leaq	1(%rax), %rsi
	cmovgq	%rcx, %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB7_2
# %bb.1:
	movq	8(%rbx), %rcx
	movq	%rax, (%rcx)
.LBB7_2:
	movq	(%rbx), %rdi
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	memcloser, .Lfunc_end7-memcloser
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
