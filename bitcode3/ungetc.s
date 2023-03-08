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
	cmpq	%rax, %r14
	je	.LBB0_3
# %bb.1:
	movslq	96(%rbx), %r15
	leal	(%r15,%r15), %r13d
	movslq	%r13d, %rsi
	movq	%r14, %rdi
	callq	realloc
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
	testq	%rax, %rax
	je	.LBB0_7
# %bb.4:
	movq	%rax, 88(%rbx)
	movl	$1024, 96(%rbx)         # imm = 0x400
	movq	%rax, %rcx
	addq	$1021, %rcx             # imm = 0x3FD
	movb	118(%rbx), %dl
	movb	%dl, 1023(%rax)
	movb	117(%rbx), %dl
	movb	%dl, 1022(%rax)
	movb	(%r14), %dl
	movb	%dl, 1021(%rax)
	movq	%rcx, (%rbx)
.LBB0_5:
	xorl	%eax, %eax
	jmp	.LBB0_8
.LBB0_7:
	movl	$-1, %eax
.LBB0_8:
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	$-1, %r14d
	cmpl	$-1, %esi
	je	.LBB1_27
# %bb.1:
	movq	%rdx, %r12
	movl	%esi, %r15d
	movq	%rdi, %rbx
	testq	%rdi, %rdi
	je	.LBB1_4
# %bb.2:
	cmpl	$0, 80(%rbx)
	jne	.LBB1_4
# %bb.3:
	movq	%rbx, %rdi
	callq	__sinit
.LBB1_4:
	leaq	-44(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movswl	16(%r12), %ecx
	movl	%ecx, %eax
	andl	$-33, %eax
	movw	%ax, 16(%r12)
	testb	$4, %cl
	jne	.LBB1_10
# %bb.5:
	testb	$16, %al
	je	.LBB1_26
# %bb.6:
	testb	$8, %al
	je	.LBB1_9
# %bb.7:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_fflush_r
	testl	%eax, %eax
	jne	.LBB1_26
# %bb.8:
	movzwl	16(%r12), %eax
	andl	$-9, %eax
	movw	%ax, 16(%r12)
	movl	$0, 12(%r12)
	movl	$0, 40(%r12)
.LBB1_9:
	orl	$4, %eax
	movw	%ax, 16(%r12)
.LBB1_10:
	movzbl	%r15b, %r14d
	movq	88(%r12), %r13
	testq	%r13, %r13
	je	.LBB1_19
# %bb.11:
	movslq	96(%r12), %r15
	cmpl	%r15d, 8(%r12)
	jge	.LBB1_13
# %bb.12:
	movq	(%r12), %rbx
	jmp	.LBB1_18
.LBB1_19:
	movq	24(%r12), %rcx
	testq	%rcx, %rcx
	je	.LBB1_20
# %bb.22:
	movq	(%r12), %rax
	cmpq	%rcx, %rax
	jbe	.LBB1_21
# %bb.23:
	cmpb	%r15b, -1(%rax)
	jne	.LBB1_21
# %bb.24:
	addq	$-1, %rax
	movq	%rax, (%r12)
	jmp	.LBB1_25
.LBB1_13:
	leaq	116(%r12), %rax
	cmpq	%rax, %r13
	je	.LBB1_14
# %bb.16:
	leal	(%r15,%r15), %ebx
	movslq	%ebx, %rsi
	movq	%r13, %rdi
	callq	realloc
	testq	%rax, %rax
	je	.LBB1_28
# %bb.17:
	movq	%rax, %r13
	movl	%ebx, -48(%rbp)         # 4-byte Spill
	movq	%rax, %rbx
	addq	%r15, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%r15, %rdx
	callq	memcpy
	movq	%rbx, (%r12)
	movq	%r13, 88(%r12)
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, 96(%r12)
	jmp	.LBB1_18
.LBB1_20:
	movq	(%r12), %rax
.LBB1_21:
	movl	8(%r12), %ecx
	movl	%ecx, 112(%r12)
	movq	%rax, 104(%r12)
	leaq	116(%r12), %rax
	movq	%rax, 88(%r12)
	movl	$3, 96(%r12)
	leaq	118(%r12), %rax
	movb	%r15b, 118(%r12)
	movq	%rax, (%r12)
	movl	$1, 8(%r12)
	jmp	.LBB1_26
.LBB1_14:
	movl	$1024, %edi             # imm = 0x400
	callq	malloc
	testq	%rax, %rax
	je	.LBB1_28
# %bb.15:
	movq	%rax, 88(%r12)
	movl	$1024, 96(%r12)         # imm = 0x400
	movq	%rax, %rbx
	addq	$1021, %rbx             # imm = 0x3FD
	movb	118(%r12), %cl
	movb	%cl, 1023(%rax)
	movb	117(%r12), %cl
	movb	%cl, 1022(%rax)
	movb	(%r13), %cl
	movb	%cl, 1021(%rax)
	movq	%rbx, (%r12)
.LBB1_18:
	leaq	-1(%rbx), %rax
	movq	%rax, (%r12)
	movb	%r14b, -1(%rbx)
.LBB1_25:
	addl	$1, 8(%r12)
.LBB1_26:
	movl	-44(%rbp), %edi
	leaq	-44(%rbp), %rsi
	callq	pthread_setcancelstate
.LBB1_27:
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_28:
	movl	-44(%rbp), %edi
	leaq	-44(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$-1, %r14d
	jmp	.LBB1_27
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
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	_ungetc_r               # TAILCALL
.Lfunc_end2:
	.size	ungetc, .Lfunc_end2-ungetc
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
