	.text
	.file	"putc_u.c"
	.globl	_putc_unlocked_r        # -- Begin function _putc_unlocked_r
	.p2align	4, 0x90
	.type	_putc_unlocked_r,@function
_putc_unlocked_r:                       # @_putc_unlocked_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	12(%rdx), %ecx
	leal	-1(%rcx), %eax
	movl	%eax, 12(%rdx)
	movzbl	%sil, %eax
	testl	%ecx, %ecx
	jg	.LBB0_3
# %bb.1:
	cmpl	$10, %eax
	je	.LBB0_4
# %bb.2:
	cmpl	40(%rdx), %ecx
	jle	.LBB0_4
.LBB0_3:
	movq	(%rdx), %rcx
	leaq	1(%rcx), %rdi
	movq	%rdi, (%rdx)
	movb	%sil, (%rcx)
	jmp	.LBB0_5
.LBB0_4:
	callq	__swbuf_r
.LBB0_5:
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
	movl	12(%rbx), %ecx
	leal	-1(%rcx), %eax
	movl	%eax, 12(%rbx)
	movzbl	%r14b, %eax
	testl	%ecx, %ecx
	jg	.LBB1_3
# %bb.1:
	cmpl	$10, %eax
	je	.LBB1_4
# %bb.2:
	cmpl	40(%rbx), %ecx
	jle	.LBB1_4
.LBB1_3:
	movq	(%rbx), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rbx)
	movb	%r14b, (%rcx)
	jmp	.LBB1_5
.LBB1_4:
	movl	%r14d, %esi
	movq	%rbx, %rdx
	callq	__swbuf_r
.LBB1_5:
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
