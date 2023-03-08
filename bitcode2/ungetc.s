	.text
	.file	"ungetc.c"
	.globl	__submore               # -- Begin function __submore
	.p2align	4, 0x90
	.type	__submore,@function
__submore:                              # @__submore
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	movq	88(%rsi), %r14
	leaq	116(%rsi), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r14
	je	.LBB0_3
# %bb.1:
	movslq	96(%rbx), %r15
	leal	(%r15,%r15), %r13d
	movslq	%r13d, %rsi
	movq	%r14, %rdi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_7
# %bb.2:
	movq	%rax, %r14
	movq	%rax, %r12
	addq	%r15, %r12
	movq	%r12, %rdi
	movq	%rax, %rsi
	movq	%r15, %rdx
	callq	memcpy
	movq	%r12, (%rbx)
	movq	%r14, 88(%rbx)
	movl	%r13d, 96(%rbx)
	jmp	.LBB0_5
.LBB0_3:
	movl	$1024, %edi             # imm = 0x400
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_7
# %bb.4:
	movq	%rax, 88(%rbx)
	movl	$1024, 96(%rbx)         # imm = 0x400
	movq	%rax, %rcx
	addq	$1021, %rcx             # imm = 0x3FD
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	118(%rbx), %dl
	movb	%dl, 1023(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	117(%rbx), %dl
	movb	%dl, 1022(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	(%r14), %dl
	movb	%dl, 1021(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, (%rbx)
.LBB0_5:
	xorl	%eax, %eax
	jmp	.LBB0_8
.LBB0_7:
	movl	$-1, %eax
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__submore, .Lfunc_end0-__submore
                                        # -- End function
	.globl	_ungetc_r               # -- Begin function _ungetc_r
	.p2align	4, 0x90
	.type	_ungetc_r,@function
_ungetc_r:                              # @_ungetc_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r15d
	cmpl	$-1, %esi
	je	.LBB1_23
# %bb.1:
	movq	%rdx, %rbx
	movl	%esi, %r14d
	movq	%rdi, %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB1_4
# %bb.2:
	cmpl	$0, 80(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_4
# %bb.3:
	movq	%r12, %rdi
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB1_4:
	leaq	-36(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movswl	16(%rbx), %ecx
	movl	%ecx, %eax
	andl	$-33, %eax
	movw	%ax, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %cl
	jne	.LBB1_11
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %al
	je	.LBB1_6
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %al
	je	.LBB1_10
# %bb.8:
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	_fflush_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_6
# %bb.9:
	movzwl	16(%rbx), %eax
	andl	$-9, %eax
	movw	%ax, 16(%rbx)
	movl	$0, 12(%rbx)
	movl	$0, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_10:
	orl	$4, %eax
	movw	%ax, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_11:
	movzbl	%r14b, %r15d
	cmpq	$0, 88(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_15
# %bb.12:
	movl	8(%rbx), %eax
	cmpl	96(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB1_14
# %bb.13:
	movq	%rbx, %rsi
	callq	__submore
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_14
.LBB1_6:
	movl	-36(%rbp), %edi
	leaq	-36(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r15d
	jmp	.LBB1_23
.LBB1_14:
	movq	(%rbx), %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, (%rbx)
	movb	%r15b, -1(%rax)
.LBB1_21:
	addl	$1, 8(%rbx)
	movl	-36(%rbp), %edi
	leaq	-36(%rbp), %rsi
	callq	pthread_setcancelstate
	jmp	.LBB1_22
.LBB1_15:
	movq	24(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB1_16
# %bb.18:
	movq	(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB1_17
# %bb.19:
	cmpb	%r14b, -1(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_17
# %bb.20:
	addq	$-1, %rax
	movq	%rax, (%rbx)
	jmp	.LBB1_21
.LBB1_16:
	movq	(%rbx), %rax
.LBB1_17:
	movl	8(%rbx), %ecx
	movl	%ecx, 112(%rbx)
	movq	%rax, 104(%rbx)
	leaq	116(%rbx), %rax
	movq	%rax, 88(%rbx)
	movl	$3, 96(%rbx)
	leaq	118(%rbx), %rax
	movb	%r14b, 118(%rbx)
	movq	%rax, (%rbx)
	movl	$1, 8(%rbx)
	movl	-36(%rbp), %edi
	leaq	-36(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
.LBB1_22:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_ungetc_r, .Lfunc_end1-_ungetc_r
                                        # -- End function
	.globl	ungetc                  # -- Begin function ungetc
	.p2align	4, 0x90
	.type	ungetc,@function
ungetc:                                 # @ungetc
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
	callq	_ungetc_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ungetc, .Lfunc_end2-ungetc
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
