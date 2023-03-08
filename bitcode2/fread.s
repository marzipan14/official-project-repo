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
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB0_1
# %bb.2:
	movq	%r8, %r13
	movq	%rcx, %r14
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	je	.LBB0_5
# %bb.3:
	cmpl	$0, 80(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_5
# %bb.4:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB0_5:
	leaq	-44(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movl	8(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB0_7
# %bb.6:
	movl	$0, 8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB0_7:
	movzwl	16(%r13), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	jne	.LBB0_10
# %bb.8:
	movq	%r15, %rcx
	movslq	%eax, %r15
	movq	(%r13), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rcx
	jbe	.LBB0_9
# %bb.21:
	movq	%r12, -72(%rbp)         # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %r12
	.p2align	4, 0x90
.LBB0_22:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	memcpy
	addq	%r15, (%r13)
	subq	%r15, %r12
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	callq	__srefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_28
# %bb.23:                               #   in Loop: Header=BB0_22 Depth=1
	addq	%r15, %rbx
	movslq	8(%r13), %r15
	movq	(%r13), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r12
	ja	.LBB0_22
	jmp	.LBB0_24
.LBB0_1:
	xorl	%r14d, %r14d
	jmp	.LBB0_27
.LBB0_10:
	movq	%r12, -72(%rbp)         # 8-byte Spill
	cltq
	cmpq	%rax, %r15
	cmovbeq	%r15, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r13), %rsi
	movq	%r15, %r12
	movslq	%eax, %r15
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	memcpy
	addq	%r15, (%r13)
	subl	%r15d, 8(%r13)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movq	88(%r13), %rdi
	movl	$42, __A_VARIABLE(%rip)
	subq	%r15, %r12
	movq	%r14, -80(%rbp)         # 8-byte Spill
	je	.LBB0_15
# %bb.11:
	testq	%rdi, %rdi
	je	.LBB0_15
# %bb.12:
	leaq	116(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB0_14
# %bb.13:
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB0_14:
	movq	$0, 88(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_16
.LBB0_9:
	movq	%rcx, %r12
.LBB0_24:
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	memcpy
	subl	%r12d, 8(%r13)
	addq	%r12, (%r13)
	jmp	.LBB0_20
.LBB0_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB0_19
.LBB0_16:
	addq	%r15, %rbx
	movq	(%r13), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	24(%r13), %r14
	movl	32(%r13), %r15d
	.p2align	4, 0x90
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, 24(%r13)
	movl	%r12d, 32(%r13)
	movq	%rbx, (%r13)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	callq	__srefill_r
	movq	%r14, 24(%r13)
	movl	%r15d, 32(%r13)
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, (%r13)
	movslq	8(%r13), %rcx
	subq	%rcx, %r12
	movl	$0, 8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_25
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	addq	%rcx, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	jne	.LBB0_17
.LBB0_19:
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %r14         # 8-byte Reload
.LBB0_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %edi
	leaq	-44(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_27
.LBB0_25:
	movl	-44(%rbp), %edi
	leaq	-44(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_26
.LBB0_28:
	movl	-44(%rbp), %edi
	leaq	-44(%rbp), %rsi
	callq	pthread_setcancelstate
.LBB0_26:
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rax         # 8-byte Reload
	subq	%r12, %rax
	xorl	%edx, %edx
	divq	-72(%rbp)               # 8-byte Folded Reload
	movq	%rax, %r14
.LBB0_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
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
