	.text
	.file	"fgets_u.c"
	.globl	_fgets_unlocked_r       # -- Begin function _fgets_unlocked_r
	.p2align	4, 0x90
	.type	_fgets_unlocked_r,@function
_fgets_unlocked_r:                      # @_fgets_unlocked_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	cmpl	$2, %edx
	jge	.LBB0_2
.LBB0_1:
	xorl	%eax, %eax
	jmp	.LBB0_15
.LBB0_2:
	movq	%rcx, %r15
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r12
	testq	%rdi, %rdi
	je	.LBB0_5
# %bb.3:
	cmpl	$0, 80(%r12)
	jne	.LBB0_5
# %bb.4:
	movq	%r12, %rdi
	callq	__sinit
.LBB0_5:
	movq	%r12, -56(%rbp)         # 8-byte Spill
	addl	$-1, %ebx
	movq	%r14, -48(%rbp)         # 8-byte Spill
	movq	%r14, %r12
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movl	8(%r15), %eax
	testl	%eax, %eax
	jne	.LBB0_9
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__srefill_r
	testl	%eax, %eax
	jne	.LBB0_12
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	movl	8(%r15), %eax
.LBB0_9:                                #   in Loop: Header=BB0_6 Depth=1
	movq	(%r15), %r14
	cmpl	%ebx, %eax
	cmoval	%ebx, %eax
	movslq	%eax, %r13
	movq	%r14, %rdi
	movl	$10, %esi
	movq	%r13, %rdx
	callq	memchr
	testq	%rax, %rax
	jne	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_6 Depth=1
	subl	%r13d, 8(%r15)
	addq	%r13, (%r15)
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	memcpy
	addq	%r13, %r12
	subl	%r13d, %ebx
	jne	.LBB0_6
	jmp	.LBB0_13
.LBB0_11:
	addq	$1, %rax
	movq	%rax, %rbx
	subq	%r14, %rbx
	subl	%ebx, 8(%r15)
	movq	%rax, (%r15)
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, (%r12,%rbx)
	jmp	.LBB0_14
.LBB0_12:
	cmpq	-48(%rbp), %r12         # 8-byte Folded Reload
	je	.LBB0_1
.LBB0_13:
	movb	$0, (%r12)
.LBB0_14:
	movq	-48(%rbp), %rax         # 8-byte Reload
.LBB0_15:
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
	.size	_fgets_unlocked_r, .Lfunc_end0-_fgets_unlocked_r
                                        # -- End function
	.globl	fgets_unlocked          # -- Begin function fgets_unlocked
	.p2align	4, 0x90
	.type	fgets_unlocked,@function
fgets_unlocked:                         # @fgets_unlocked
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	%r15d, %edx
	movq	%r14, %rcx
	callq	_fgets_unlocked_r
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fgets_unlocked, .Lfunc_end1-fgets_unlocked
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
