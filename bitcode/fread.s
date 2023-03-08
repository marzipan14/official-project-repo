	.text
	.file	"fread.c"
	.globl	_fread_r                # -- Begin function _fread_r
	.p2align	4, 0x90
	.type	_fread_r,@function
_fread_r:                               # @_fread_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rcx, %r15
	imulq	%rdx, %r15
	testq	%r15, %r15
	je	.LBB0_1
# %bb.2:
	movq	%r8, %rbx
	movq	%rcx, %r14
	movq	%rsi, %r13
	movq	%rdi, %r12
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	testq	%rdi, %rdi
	je	.LBB0_5
# %bb.3:
	cmpl	$0, 80(%r12)
	jne	.LBB0_5
# %bb.4:
	movq	%r12, %rdi
	callq	__sinit
.LBB0_5:
	movq	%r12, -64(%rbp)         # 8-byte Spill
	leaq	-44(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movl	8(%rbx), %eax
	testl	%eax, %eax
	jns	.LBB0_7
# %bb.6:
	movl	$0, 8(%rbx)
	xorl	%eax, %eax
.LBB0_7:
	testb	$2, 16(%rbx)
	movq	%r14, -80(%rbp)         # 8-byte Spill
	jne	.LBB0_14
# %bb.8:
	movq	%r15, %r12
	movslq	%eax, %r15
	movq	(%rbx), %rsi
	cmpq	%r15, %r12
	jbe	.LBB0_12
# %bb.9:
	movq	%r12, -56(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %r14         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	movq	%r15, %rdx
	callq	memcpy
	addq	%r15, (%rbx)
	subq	%r15, %r12
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__srefill_r
	testl	%eax, %eax
	jne	.LBB0_22
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	addq	%r15, %r13
	movslq	8(%rbx), %r15
	movq	(%rbx), %rsi
	cmpq	%r15, %r12
	ja	.LBB0_10
.LBB0_12:
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	memcpy
	subl	%r12d, 8(%rbx)
	addq	%r12, (%rbx)
.LBB0_13:
	movl	-44(%rbp), %edi
	leaq	-44(%rbp), %rsi
	callq	pthread_setcancelstate
	movq	-80(%rbp), %rax         # 8-byte Reload
	jmp	.LBB0_23
.LBB0_1:
	xorl	%eax, %eax
	jmp	.LBB0_23
.LBB0_14:
	cltq
	cmpq	%rax, %r15
	cmovbeq	%r15, %rax
	movq	(%rbx), %rsi
	movq	%r15, %r12
	movslq	%eax, %r15
	movq	%r13, %rdi
	movq	%r15, %rdx
	callq	memcpy
	addq	%r15, (%rbx)
	subl	%r15d, 8(%rbx)
	movq	%r12, -56(%rbp)         # 8-byte Spill
	subq	%r15, %r12
	je	.LBB0_19
# %bb.15:
	movq	88(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB0_19
# %bb.16:
	leaq	116(%rbx), %rax
	cmpq	%rax, %rdi
	je	.LBB0_18
# %bb.17:
	callq	free
.LBB0_18:
	movq	$0, 88(%rbx)
.LBB0_19:
	addq	%r15, %r13
	.p2align	4, 0x90
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
	testq	%r12, %r12
	je	.LBB0_13
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=1
	movq	(%rbx), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	24(%rbx), %r14
	movl	32(%rbx), %r15d
	movq	%r13, 24(%rbx)
	movl	%r12d, 32(%rbx)
	movq	%r13, (%rbx)
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	__srefill_r
	movq	%r14, 24(%rbx)
	movl	%r15d, 32(%rbx)
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, (%rbx)
	movslq	8(%rbx), %rcx
	subq	%rcx, %r12
	addq	%rcx, %r13
	movl	$0, 8(%rbx)
	testl	%eax, %eax
	je	.LBB0_20
.LBB0_22:
	movl	-44(%rbp), %edi
	leaq	-44(%rbp), %rsi
	callq	pthread_setcancelstate
	movq	-56(%rbp), %rax         # 8-byte Reload
	subq	%r12, %rax
	xorl	%edx, %edx
	divq	-72(%rbp)               # 8-byte Folded Reload
.LBB0_23:
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_fread_r, .Lfunc_end0-_fread_r
                                        # -- End function
	.globl	fread                   # -- Begin function fread
	.p2align	4, 0x90
	.type	fread,@function
fread:                                  # @fread
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%r14, %r8
	callq	_fread_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fread, .Lfunc_end1-fread
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
