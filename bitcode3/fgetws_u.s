	.text
	.file	"fgetws_u.c"
	.globl	_fgetws_unlocked_r      # -- Begin function _fgetws_unlocked_r
	.p2align	4, 0x90
	.type	_fgetws_unlocked_r,@function
_fgetws_unlocked_r:                     # @_fgetws_unlocked_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	testl	%edx, %edx
	jle	.LBB0_16
# %bb.1:
	movq	%rcx, %rbx
	movl	%edx, %r15d
	movq	%rsi, %r12
	cmpl	$0, 8(%rcx)
	jle	.LBB0_17
.LBB0_2:
	leaq	164(%rbx), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%r12, -72(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	movq	%rdi, -56(%rbp)
	movslq	8(%rbx), %rdx
	movl	$10, %esi
	callq	memchr
	testq	%rax, %rax
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	subq	(%rbx), %rax
	addq	$1, %rax
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	movslq	8(%rbx), %rax
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	leal	-1(%r15), %ecx
	movslq	%ecx, %r8
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	leaq	-56(%rbp), %rdx
	movq	%rax, %rcx
	movq	-64(%rbp), %r9          # 8-byte Reload
	callq	_mbsnrtowcs_r
	cmpq	$-1, %rax
	je	.LBB0_21
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	movq	%rax, %r13
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	jne	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	addq	$1, %r13
	movq	(%rbx), %rdi
	movslq	8(%rbx), %rdx
	xorl	%esi, %esi
	callq	memchr
	addq	$1, %rax
	movq	%rax, -56(%rbp)
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	movl	(%rbx), %ecx
	subl	%eax, %ecx
	addl	8(%rbx), %ecx
	movl	%ecx, 8(%rbx)
	movq	%rax, (%rbx)
	subl	%r13d, %r15d
	leaq	(%r12,%r13,4), %r14
	cmpl	$2, %r15d
	jl	.LBB0_13
# %bb.10:                               #   in Loop: Header=BB0_3 Depth=1
	cmpl	$10, -4(%r12,%r13,4)
	je	.LBB0_13
# %bb.11:                               #   in Loop: Header=BB0_3 Depth=1
	movq	%r14, %r12
	testl	%ecx, %ecx
	jg	.LBB0_3
# %bb.12:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	__srefill_r
	movq	%r14, %r12
	testl	%eax, %eax
	je	.LBB0_3
.LBB0_13:
	movq	-72(%rbp), %rbx         # 8-byte Reload
	cmpq	%rbx, %r14
	je	.LBB0_21
# %bb.14:
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	mbsinit
	testl	%eax, %eax
	je	.LBB0_21
# %bb.15:
	movl	$0, (%r14)
	jmp	.LBB0_22
.LBB0_16:
	callq	__errno
	movl	$22, (%rax)
	jmp	.LBB0_21
.LBB0_17:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	__srefill_r
	testl	%eax, %eax
	je	.LBB0_2
.LBB0_21:
	xorl	%ebx, %ebx
.LBB0_22:
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
	.size	_fgetws_unlocked_r, .Lfunc_end0-_fgetws_unlocked_r
                                        # -- End function
	.globl	fgetws_unlocked         # -- Begin function fgetws_unlocked
	.p2align	4, 0x90
	.type	fgetws_unlocked,@function
fgetws_unlocked:                        # @fgetws_unlocked
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %r12
	callq	__getreent
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB1_3
# %bb.1:
	cmpl	$0, 80(%rbx)
	jne	.LBB1_3
# %bb.2:
	movq	%rbx, %rdi
	callq	__sinit
.LBB1_3:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	%r15d, %edx
	movq	%r14, %rcx
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_fgetws_unlocked_r      # TAILCALL
.Lfunc_end1:
	.size	fgetws_unlocked, .Lfunc_end1-fgetws_unlocked
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
