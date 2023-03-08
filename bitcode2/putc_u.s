	.text
	.file	"putc_u.c"
	.globl	_putc_unlocked_r        # -- Begin function _putc_unlocked_r
	.p2align	4, 0x90
	.type	_putc_unlocked_r,@function
_putc_unlocked_r:                       # @_putc_unlocked_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	12(%rdx), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB0_2
# %bb.1:
	movzbl	%sil, %eax
.LBB0_4:
	movq	(%rdx), %rcx
	leaq	1(%rcx), %rdi
	movq	%rdi, (%rdx)
	movb	%sil, (%rcx)
	jmp	.LBB0_6
.LBB0_2:
	cmpl	40(%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB0_5
# %bb.3:
	movzbl	%sil, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %eax
	jne	.LBB0_4
.LBB0_5:
	callq	__swbuf_r
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_putc_unlocked_r, .Lfunc_end0-_putc_unlocked_r
                                        # -- End function
	.globl	putc_unlocked           # -- Begin function putc_unlocked
	.p2align	4, 0x90
	.type	putc_unlocked,@function
putc_unlocked:                          # @putc_unlocked
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %rbx
	movl	%edi, %r14d
	callq	__getreent
	movq	%rax, %rdi
	movl	12(%rbx), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB1_2
# %bb.1:
	movzbl	%r14b, %eax
.LBB1_4:
	movq	(%rbx), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rbx)
	movb	%r14b, (%rcx)
	jmp	.LBB1_6
.LBB1_2:
	cmpl	40(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB1_5
# %bb.3:
	movzbl	%r14b, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %eax
	jne	.LBB1_4
.LBB1_5:
	movl	%r14d, %esi
	movq	%rbx, %rdx
	callq	__swbuf_r
.LBB1_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	putc_unlocked, .Lfunc_end1-putc_unlocked
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
