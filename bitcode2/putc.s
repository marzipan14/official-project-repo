	.text
	.file	"putc.c"
	.globl	_putc_r                 # -- Begin function _putc_r
	.p2align	4, 0x90
	.type	_putc_r,@function
_putc_r:                                # @_putc_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdx, %rbx
	movl	%esi, %r14d
	movq	%rdi, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_3
# %bb.2:
	movq	%r15, %rdi
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB0_3:
	leaq	-36(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movl	12(%rbx), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB0_5
# %bb.4:
	movzbl	%r14b, %r12d
.LBB0_7:
	movq	(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rbx)
	movb	%r14b, (%rax)
	jmp	.LBB0_9
.LBB0_5:
	cmpl	40(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB0_8
# %bb.6:
	movzbl	%r14b, %r12d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %r12d
	jne	.LBB0_7
.LBB0_8:
	movq	%r15, %rdi
	movl	%r14d, %esi
	movq	%rbx, %rdx
	callq	__swbuf_r
	movl	%eax, %r12d
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-36(%rbp), %edi
	leaq	-36(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_putc_r, .Lfunc_end0-_putc_r
                                        # -- End function
	.globl	putc                    # -- Begin function putc
	.p2align	4, 0x90
	.type	putc,@function
putc:                                   # @putc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %rbx
	movl	%edi, %r14d
	callq	__getreent
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_3
# %bb.1:
	cmpl	$0, 80(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_3
# %bb.2:
	movq	%r15, %rdi
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB1_3:
	leaq	-36(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movl	12(%rbx), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB1_5
# %bb.4:
	movzbl	%r14b, %r12d
.LBB1_7:
	movq	(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rbx)
	movb	%r14b, (%rax)
	jmp	.LBB1_9
.LBB1_5:
	cmpl	40(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB1_8
# %bb.6:
	movzbl	%r14b, %r12d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %r12d
	jne	.LBB1_7
.LBB1_8:
	movq	%r15, %rdi
	movl	%r14d, %esi
	movq	%rbx, %rdx
	callq	__swbuf_r
	movl	%eax, %r12d
.LBB1_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-36(%rbp), %edi
	leaq	-36(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	putc, .Lfunc_end1-putc
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
