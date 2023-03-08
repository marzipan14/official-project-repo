	.text
	.file	"gets.c"
	.globl	_gets_r                 # -- Begin function _gets_r
	.p2align	4, 0x90
	.type	_gets_r,@function
_gets_r:                                # @_gets_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	8(%rdi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_3
# %bb.2:
	movq	%r14, %rdi
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB0_3:
	leaq	-36(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movl	8(%rbx), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB0_5
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	movq	(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rbx)
	movzbl	(%rax), %eax
	jmp	.LBB0_7
	.p2align	4, 0x90
.LBB0_5:                                #   in Loop: Header=BB0_4 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__srget_r
.LBB0_7:                                #   in Loop: Header=BB0_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %eax
	je	.LBB0_12
# %bb.8:                                #   in Loop: Header=BB0_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_9
# %bb.11:                               #   in Loop: Header=BB0_4 Depth=1
	movb	%al, (%r15,%r12)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r12
	jmp	.LBB0_4
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB0_10
.LBB0_12:
	movb	$0, (%r15,%r12)
	movl	-36(%rbp), %edi
	leaq	-36(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_10:
	movl	-36(%rbp), %edi
	leaq	-36(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	jmp	.LBB0_13
.Lfunc_end0:
	.size	_gets_r, .Lfunc_end0-_gets_r
                                        # -- End function
	.globl	gets                    # -- Begin function gets
	.p2align	4, 0x90
	.type	gets,@function
gets:                                   # @gets
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	_gets_r
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gets, .Lfunc_end1-gets
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
