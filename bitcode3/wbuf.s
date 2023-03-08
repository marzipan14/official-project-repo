	.text
	.file	"wbuf.c"
	.globl	__swbuf_r               # -- Begin function __swbuf_r
	.p2align	4, 0x90
	.type	__swbuf_r,@function
__swbuf_r:                              # @__swbuf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %rbx
	movl	%esi, %r15d
	movq	%rdi, %r14
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%r14)
	jne	.LBB0_3
# %bb.2:
	movq	%r14, %rdi
	callq	__sinit
.LBB0_3:
	movl	40(%rbx), %eax
	movl	%eax, 12(%rbx)
	testb	$8, 16(%rbx)
	je	.LBB0_5
# %bb.4:
	movq	24(%rbx), %rdx
	testq	%rdx, %rdx
	jne	.LBB0_7
.LBB0_5:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__swsetup_r
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	jne	.LBB0_15
# %bb.6:
	movq	24(%rbx), %rdx
.LBB0_7:
	movq	(%rbx), %rax
	movl	%eax, %ecx
	subl	%edx, %ecx
	cmpl	%ecx, 32(%rbx)
	jg	.LBB0_10
# %bb.8:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_fflush_r
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	jne	.LBB0_15
# %bb.9:
	movq	(%rbx), %rax
	xorl	%ecx, %ecx
.LBB0_10:
	addl	$-1, 12(%rbx)
	movzbl	%r15b, %r15d
	leaq	1(%rax), %rdx
	movq	%rdx, (%rbx)
	movb	%r15b, (%rax)
	addl	$1, %ecx
	cmpl	32(%rbx), %ecx
	je	.LBB0_13
# %bb.11:
	cmpl	$10, %r15d
	jne	.LBB0_14
# %bb.12:
	movzwl	16(%rbx), %eax
	andl	$1, %eax
	testw	%ax, %ax
	je	.LBB0_14
.LBB0_13:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_fflush_r
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	jne	.LBB0_15
.LBB0_14:
	movl	%r15d, %eax
.LBB0_15:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__swbuf_r, .Lfunc_end0-__swbuf_r
                                        # -- End function
	.globl	__swbuf                 # -- Begin function __swbuf
	.p2align	4, 0x90
	.type	__swbuf,@function
__swbuf:                                # @__swbuf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movl	%edi, %ebx
	callq	__getreent
	movq	%rax, %rdi
	movl	%ebx, %esi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	__swbuf_r               # TAILCALL
.Lfunc_end1:
	.size	__swbuf, .Lfunc_end1-__swbuf
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
