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
	movq	%rdx, %r12
	movq	%rcx, %rdx
	imulq	%r12, %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB0_1
# %bb.2:
	movq	%r8, %r13
	movq	%rsi, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	je	.LBB0_5
# %bb.3:
	cmpl	$0, 80(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_5
# %bb.4:
	movq	%rdi, %rbx
	movq	%rcx, %r14
	callq	__sinit
	movq	%r14, %rcx
	movq	%rbx, %rdi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
.LBB0_5:
	movl	8(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB0_7
# %bb.6:
	movl	$0, 8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB0_7:
	movzwl	16(%r13), %esi
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %sil
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jne	.LBB0_10
# %bb.8:
	movslq	%eax, %r14
	movq	(%r13), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rdx
	jbe	.LBB0_9
# %bb.21:
	movq	%rdi, %rbx
	movq	%r12, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %r12
	.p2align	4, 0x90
.LBB0_22:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	memcpy
	addq	%r14, (%r13)
	subq	%r14, %r12
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	__srefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_28
# %bb.23:                               #   in Loop: Header=BB0_22 Depth=1
	addq	%r14, %r15
	movslq	8(%r13), %r14
	movq	(%r13), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %r12
	ja	.LBB0_22
	jmp	.LBB0_24
.LBB0_1:
	xorl	%eax, %eax
	jmp	.LBB0_27
.LBB0_10:
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	cltq
	cmpq	%rax, %rdx
	cmovbeq	%rdx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r13), %rsi
	movslq	%eax, %r14
	movq	%rdx, %rbx
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	memcpy
	addq	%r14, (%r13)
	subl	%r14d, 8(%r13)
	movq	88(%r13), %rdi
	movl	$42, __A_VARIABLE(%rip)
	subq	%r14, %rbx
	movq	%r12, -48(%rbp)         # 8-byte Spill
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
	movq	%rdx, %r12
.LBB0_24:
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	memcpy
	subl	%r12d, 8(%r13)
	addq	%r12, (%r13)
	jmp	.LBB0_25
.LBB0_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_19
.LBB0_16:
	addq	%r14, %r15
	movq	(%r13), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	24(%r13), %r12
	movl	32(%r13), %r14d
	.p2align	4, 0x90
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, 24(%r13)
	movl	%ebx, 32(%r13)
	movq	%r15, (%r13)
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	callq	__srefill_r
	movq	%r12, 24(%r13)
	movl	%r14d, 32(%r13)
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, (%r13)
	movslq	8(%r13), %rcx
	subq	%rcx, %rbx
	movl	$0, 8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	addq	%rcx, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB0_17
.LBB0_19:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_25:
	movq	-64(%rbp), %rax         # 8-byte Reload
	jmp	.LBB0_26
.LBB0_20:
	movq	-56(%rbp), %rax         # 8-byte Reload
	subq	%rbx, %rax
	xorl	%edx, %edx
	divq	-48(%rbp)               # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
.LBB0_26:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_28:
	movq	-56(%rbp), %rax         # 8-byte Reload
	subq	%r12, %rax
	xorl	%edx, %edx
	divq	-48(%rbp)               # 8-byte Folded Reload
	jmp	.LBB0_27
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
	callq	_fread_unlocked_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fread_unlocked, .Lfunc_end1-fread_unlocked
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
