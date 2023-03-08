	.text
	.file	"fwrite.c"
	.globl	_fwrite_r               # -- Begin function _fwrite_r
	.p2align	4, 0x90
	.type	_fwrite_r,@function
_fwrite_r:                              # @_fwrite_r
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
	movq	%r14, -64(%rbp)         # 8-byte Spill
	imulq	%r14, %r15
	leaq	-44(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	testb	$8, 16(%rbx)
	je	.LBB0_5
# %bb.4:
	cmpq	$0, 24(%rbx)
	je	.LBB0_5
# %bb.13:
	movq	%r13, -56(%rbp)         # 8-byte Spill
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
	movq	%r13, -56(%rbp)         # 8-byte Spill
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
	movl	$42, __A_VARIABLE(%rip)
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
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rdx
	callq	__swbuf_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB0_12
# %bb.16:
	xorl	%eax, %eax
	cmpb	$10, %r13b
	sete	%al
	addq	%rax, %r14
.LBB0_17:
	movl	-44(%rbp), %edi
	leaq	-44(%rbp), %rsi
	callq	pthread_setcancelstate
	movq	%r14, %rax
	xorl	%edx, %edx
	divq	-64(%rbp)               # 8-byte Folded Reload
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
	.size	_fwrite_r, .Lfunc_end0-_fwrite_r
                                        # -- End function
	.globl	fwrite                  # -- Begin function fwrite
	.p2align	4, 0x90
	.type	fwrite,@function
fwrite:                                 # @fwrite
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
	callq	_fwrite_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fwrite, .Lfunc_end1-fwrite
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
