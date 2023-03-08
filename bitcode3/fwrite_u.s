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
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%r13)
	jne	.LBB0_3
# %bb.2:
	movq	%r13, %rdi
	callq	__sinit
.LBB0_3:
	movq	%r14, -56(%rbp)         # 8-byte Spill
	imulq	%r14, %r15
	testb	$8, 16(%rbx)
	je	.LBB0_5
# %bb.4:
	cmpq	$0, 24(%rbx)
	je	.LBB0_5
# %bb.13:
	movq	%r13, -48(%rbp)         # 8-byte Spill
	testq	%r15, %r15
	jne	.LBB0_7
# %bb.14:
	xorl	%r14d, %r14d
	jmp	.LBB0_17
.LBB0_5:
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	__swsetup_r
	xorl	%r14d, %r14d
	testl	%eax, %eax
	jne	.LBB0_17
# %bb.6:
	movq	%r13, -48(%rbp)         # 8-byte Spill
	testq	%r15, %r15
	je	.LBB0_17
.LBB0_7:
	xorl	%r14d, %r14d
	jmp	.LBB0_8
	.p2align	4, 0x90
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=1
	movq	(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rbx)
	movb	%r13b, (%rax)
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	addq	$1, %r14
	cmpq	%r15, %r14
	jae	.LBB0_17
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%r12,%r14), %r13d
	movl	12(%rbx), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%rbx)
	testl	%eax, %eax
	jg	.LBB0_11
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	cmpb	$10, %r13b
	je	.LBB0_15
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	cmpl	40(%rbx), %eax
	jg	.LBB0_11
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=1
	movsbl	%r13b, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rdx
	callq	__swbuf_r
	cmpl	$-1, %eax
	jne	.LBB0_12
# %bb.16:
	xorl	%eax, %eax
	cmpb	$10, %r13b
	sete	%al
	addq	%rax, %r14
.LBB0_17:
	movq	%r14, %rax
	xorl	%edx, %edx
	divq	-56(%rbp)               # 8-byte Folded Reload
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
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_fwrite_unlocked_r      # TAILCALL
.Lfunc_end1:
	.size	fwrite_unlocked, .Lfunc_end1-fwrite_unlocked
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
