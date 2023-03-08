	.text
	.file	"fread_u.c"
	.globl	_fread_unlocked_r       # -- Begin function _fread_unlocked_r
	.p2align	4, 0x90
	.type	_fread_unlocked_r,@function
_fread_unlocked_r:                      # @_fread_unlocked_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rcx, %r12
	imulq	%rdx, %r12
	testq	%r12, %r12
	je	.LBB0_1
# %bb.2:
	movq	%r8, %r15
	movq	%rdx, %r14
	movq	%rsi, %r13
	movq	%rdi, %rbx
	testq	%rdi, %rdi
	movq	%r12, -48(%rbp)         # 8-byte Spill
	je	.LBB0_5
# %bb.3:
	cmpl	$0, 80(%rbx)
	jne	.LBB0_5
# %bb.4:
	movq	%rbx, %rdi
	movq	%rcx, %r12
	callq	__sinit
	movq	%r12, %rcx
	movq	-48(%rbp), %r12         # 8-byte Reload
.LBB0_5:
	movl	8(%r15), %eax
	testl	%eax, %eax
	jns	.LBB0_7
# %bb.6:
	movl	$0, 8(%r15)
	xorl	%eax, %eax
.LBB0_7:
	testb	$2, 16(%r15)
	movq	%r14, -56(%rbp)         # 8-byte Spill
	movq	%rbx, -64(%rbp)         # 8-byte Spill
	jne	.LBB0_13
# %bb.8:
	movslq	%eax, %r14
	movq	(%r15), %rsi
	movq	%rcx, %rbx
	cmpq	%r14, %r12
	jbe	.LBB0_12
	.p2align	4, 0x90
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	movq	%r14, %rdx
	callq	memcpy
	addq	%r14, (%r15)
	subq	%r14, %r12
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__srefill_r
	testl	%eax, %eax
	jne	.LBB0_25
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	addq	%r14, %r13
	movslq	8(%r15), %r14
	movq	(%r15), %rsi
	cmpq	%r14, %r12
	ja	.LBB0_10
.LBB0_12:
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	memcpy
	subl	%r12d, 8(%r15)
	addq	%r12, (%r15)
	movq	%rbx, %rax
	jmp	.LBB0_24
.LBB0_1:
	xorl	%eax, %eax
	jmp	.LBB0_24
.LBB0_13:
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	cltq
	cmpq	%rax, %r12
	cmovbeq	%r12, %rax
	movq	(%r15), %rsi
	movslq	%eax, %r14
	movq	%r13, %rdi
	movq	%r14, %rdx
	callq	memcpy
	addq	%r14, (%r15)
	subl	%r14d, 8(%r15)
	movq	%r12, %rbx
	subq	%r14, %rbx
	je	.LBB0_18
# %bb.14:
	movq	88(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB0_18
# %bb.15:
	leaq	116(%r15), %rax
	cmpq	%rax, %rdi
	je	.LBB0_17
# %bb.16:
	callq	free
.LBB0_17:
	movq	$0, 88(%r15)
.LBB0_18:
	addq	%r14, %r13
	.p2align	4, 0x90
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB0_20
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=1
	movq	(%r15), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	24(%r15), %r12
	movl	32(%r15), %r14d
	movq	%r13, 24(%r15)
	movl	%ebx, 32(%r15)
	movq	%r13, (%r15)
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__srefill_r
	movq	%r12, 24(%r15)
	movl	%r14d, 32(%r15)
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, (%r15)
	movslq	8(%r15), %rcx
	subq	%rcx, %rbx
	addq	%rcx, %r13
	movl	$0, 8(%r15)
	testl	%eax, %eax
	je	.LBB0_19
# %bb.22:
	movq	-48(%rbp), %rax         # 8-byte Reload
	subq	%rbx, %rax
	jmp	.LBB0_23
.LBB0_20:
	movq	-72(%rbp), %rax         # 8-byte Reload
	jmp	.LBB0_24
.LBB0_25:
	movq	-48(%rbp), %rax         # 8-byte Reload
	subq	%r12, %rax
.LBB0_23:
	xorl	%edx, %edx
	divq	-56(%rbp)               # 8-byte Folded Reload
.LBB0_24:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_fread_unlocked_r, .Lfunc_end0-_fread_unlocked_r
                                        # -- End function
	.globl	fread_unlocked          # -- Begin function fread_unlocked
	.p2align	4, 0x90
	.type	fread_unlocked,@function
fread_unlocked:                         # @fread_unlocked
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
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_fread_unlocked_r       # TAILCALL
.Lfunc_end1:
	.size	fread_unlocked, .Lfunc_end1-fread_unlocked
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
