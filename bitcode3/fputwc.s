	.text
	.file	"fputwc.c"
	.globl	__fputwc                # -- Begin function __fputwc
	.p2align	4, 0x90
	.type	__fputwc,@function
__fputwc:                               # @__fputwc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r13
	movl	%esi, %r14d
	movq	%rdi, %r15
	callq	__locale_mb_cur_max
	leal	-1(%r14), %ecx
	cmpl	$254, %ecx
	ja	.LBB0_9
# %bb.1:
	cmpl	$1, %eax
	jne	.LBB0_9
# %bb.2:
	movb	%r14b, -41(%rbp)
	movl	$1, %r12d
	jmp	.LBB0_3
.LBB0_9:
	leaq	164(%r13), %rcx
	leaq	-41(%rbp), %rsi
	movq	%r15, %rdi
	movl	%r14d, %edx
	callq	_wcrtomb_r
	testq	%rax, %rax
	je	.LBB0_14
# %bb.10:
	movq	%rax, %r12
	cmpq	$-1, %rax
	jne	.LBB0_3
# %bb.11:
	orb	$64, 16(%r13)
	jmp	.LBB0_13
.LBB0_3:
	xorl	%ebx, %ebx
	jmp	.LBB0_4
	.p2align	4, 0x90
.LBB0_7:                                #   in Loop: Header=BB0_4 Depth=1
	movq	(%r13), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%r13)
	movb	%al, (%rcx)
.LBB0_8:                                #   in Loop: Header=BB0_4 Depth=1
	addq	$1, %rbx
	cmpq	%r12, %rbx
	jae	.LBB0_14
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movzbl	-41(%rbp), %eax
	movl	12(%r13), %ecx
	leal	-1(%rcx), %edx
	movl	%edx, 12(%r13)
	testl	%ecx, %ecx
	jg	.LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	cmpb	$10, %al
	je	.LBB0_12
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	cmpl	40(%r13), %ecx
	jg	.LBB0_7
.LBB0_12:                               #   in Loop: Header=BB0_4 Depth=1
	movzbl	%al, %esi
	movq	%r15, %rdi
	movq	%r13, %rdx
	callq	__swbuf_r
	cmpl	$-1, %eax
	jne	.LBB0_8
.LBB0_13:
	movl	$-1, %r14d
.LBB0_14:
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__fputwc, .Lfunc_end0-__fputwc
                                        # -- End function
	.globl	_fputwc_r               # -- Begin function _fputwc_r
	.p2align	4, 0x90
	.type	_fputwc_r,@function
_fputwc_r:                              # @_fputwc_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %rbx
	leaq	-36(%rbp), %r12
	movl	$1, %edi
	movq	%r12, %rsi
	callq	pthread_setcancelstate
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movq	%r14, %rdx
	callq	__fputwc
	movl	%eax, %ebx
	movl	-36(%rbp), %edi
	movq	%r12, %rsi
	callq	pthread_setcancelstate
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_fputwc_r, .Lfunc_end1-_fputwc_r
                                        # -- End function
	.globl	fputwc                  # -- Begin function fputwc
	.p2align	4, 0x90
	.type	fputwc,@function
fputwc:                                 # @fputwc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %r14
	movl	%edi, %r15d
	callq	__getreent
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB2_3
# %bb.1:
	cmpl	$0, 80(%rbx)
	jne	.LBB2_3
# %bb.2:
	movq	%rbx, %rdi
	callq	__sinit
.LBB2_3:
	leaq	-36(%rbp), %r12
	movl	$1, %edi
	movq	%r12, %rsi
	callq	pthread_setcancelstate
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movq	%r14, %rdx
	callq	__fputwc
	movl	%eax, %ebx
	movl	-36(%rbp), %edi
	movq	%r12, %rsi
	callq	pthread_setcancelstate
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	fputwc, .Lfunc_end2-fputwc
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
