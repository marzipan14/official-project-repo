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
	movl	40(%rbx), %eax
	movl	%eax, 12(%rbx)
	movzwl	16(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %al
	je	.LBB0_5
# %bb.4:
	movq	24(%rbx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jne	.LBB0_7
.LBB0_5:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__swsetup_r
	movl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB0_10
# %bb.8:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_fflush_r
	movl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	testl	%ecx, %ecx
	jne	.LBB0_16
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
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_13
# %bb.11:
	movzwl	16(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %r15d
	jne	.LBB0_14
# %bb.12:
	andl	$1, %eax
	testw	%ax, %ax
	je	.LBB0_14
.LBB0_13:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_fflush_r
	movl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	testl	%ecx, %ecx
	jne	.LBB0_15
.LBB0_14:
	movl	%r15d, %eax
.LBB0_15:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_16:
	movl	$42, __A_VARIABLE(%rip)
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
	callq	__swbuf_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	__swbuf, .Lfunc_end1-__swbuf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
