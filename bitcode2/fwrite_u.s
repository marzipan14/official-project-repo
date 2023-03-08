	.text
	.file	"fwrite_u.c"
	.globl	_fwrite_unlocked_r      # -- Begin function _fwrite_unlocked_r
	.p2align	4, 0x90
	.type	_fwrite_unlocked_r,@function
_fwrite_unlocked_r:                     # @_fwrite_unlocked_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%r8, %rbx
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_3
# %bb.2:
	movq	%r13, %rdi
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB0_3:
	movzwl	16(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %al
	movq	%r14, -48(%rbp)         # 8-byte Spill
	je	.LBB0_5
# %bb.4:
	cmpq	$0, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_7
.LBB0_5:
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	__swsetup_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_17
.LBB0_7:
	imulq	%r14, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB0_17
# %bb.8:
	movq	%r13, -56(%rbp)         # 8-byte Spill
	xorl	%r14d, %r14d
	jmp	.LBB0_11
	.p2align	4, 0x90
.LBB0_9:                                #   in Loop: Header=BB0_11 Depth=1
	movq	(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rbx)
	movb	%r13b, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_10:                               #   in Loop: Header=BB0_11 Depth=1
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r14
	jae	.LBB0_18
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r12,%r14), %r13d
	movl	12(%rbx), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB0_9
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	cmpl	40(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$10, %r13b
	jne	.LBB0_9
.LBB0_14:                               #   in Loop: Header=BB0_11 Depth=1
	movsbl	%r13b, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rdx
	callq	__swbuf_r
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB0_10
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$10, %r13b
	jne	.LBB0_18
# %bb.16:
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_18
.LBB0_17:
	xorl	%r14d, %r14d
.LBB0_18:
	movq	%r14, %rax
	xorl	%edx, %edx
	divq	-48(%rbp)               # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_fwrite_unlocked_r, .Lfunc_end0-_fwrite_unlocked_r
                                        # -- End function
	.globl	fwrite_unlocked         # -- Begin function fwrite_unlocked
	.p2align	4, 0x90
	.type	fwrite_unlocked,@function
fwrite_unlocked:                        # @fwrite_unlocked
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
	callq	_fwrite_unlocked_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fwrite_unlocked, .Lfunc_end1-fwrite_unlocked
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
