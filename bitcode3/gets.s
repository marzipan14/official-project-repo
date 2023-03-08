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
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%r14)
	jne	.LBB0_3
# %bb.2:
	movq	%r14, %rdi
	callq	__sinit
.LBB0_3:
	leaq	-36(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movl	8(%rbx), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 8(%rbx)
	testl	%eax, %eax
	jle	.LBB0_5
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	movq	(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rbx)
	movzbl	(%rax), %eax
	cmpl	$10, %eax
	jne	.LBB0_8
	jmp	.LBB0_11
	.p2align	4, 0x90
.LBB0_5:                                #   in Loop: Header=BB0_4 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__srget_r
	cmpl	$10, %eax
	je	.LBB0_11
.LBB0_8:                                #   in Loop: Header=BB0_4 Depth=1
	cmpl	$-1, %eax
	je	.LBB0_9
# %bb.13:                               #   in Loop: Header=BB0_4 Depth=1
	movb	%al, (%r15,%r12)
	addq	$1, %r12
	jmp	.LBB0_4
.LBB0_9:
	testq	%r12, %r12
	je	.LBB0_10
.LBB0_11:
	movb	$0, (%r15,%r12)
	movl	-36(%rbp), %edi
	leaq	-36(%rbp), %rsi
	callq	pthread_setcancelstate
	jmp	.LBB0_12
.LBB0_10:
	movl	-36(%rbp), %edi
	leaq	-36(%rbp), %rsi
	callq	pthread_setcancelstate
	xorl	%r15d, %r15d
.LBB0_12:
	movq	%r15, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	_gets_r                 # TAILCALL
.Lfunc_end1:
	.size	gets, .Lfunc_end1-gets
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
