	.text
	.file	"ungetwc.c"
	.globl	_ungetwc_r              # -- Begin function _ungetwc_r
	.p2align	4, 0x90
	.type	_ungetwc_r,@function
_ungetwc_r:                             # @_ungetwc_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r12
	movl	%esi, %r15d
	movq	%rdi, %r13
	leaq	-48(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movl	$-1, %r14d
	cmpl	$-1, %r15d
	je	.LBB0_6
# %bb.1:
	leaq	164(%r12), %rcx
	leaq	-41(%rbp), %rsi
	movq	%r13, %rdi
	movl	%r15d, %edx
	callq	_wcrtomb_r
	cmpq	$-1, %rax
	je	.LBB0_7
# %bb.2:                                # %.preheader
	movq	%rax, %rbx
	addq	$1, %rbx
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	addq	$-1, %rbx
	je	.LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movzbl	-41(%rbp), %esi
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	_ungetc_r
	cmpl	$-1, %eax
	jne	.LBB0_3
	jmp	.LBB0_6
.LBB0_7:
	orb	$64, 16(%r12)
	jmp	.LBB0_6
.LBB0_4:
	movl	%r15d, %r14d
.LBB0_6:
	movl	-48(%rbp), %edi
	leaq	-48(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
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
	.size	_ungetwc_r, .Lfunc_end0-_ungetwc_r
                                        # -- End function
	.globl	ungetwc                 # -- Begin function ungetwc
	.p2align	4, 0x90
	.type	ungetwc,@function
ungetwc:                                # @ungetwc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r15
	movl	%edi, %r14d
	callq	__getreent
	movq	%rax, %r13
	testq	%rax, %rax
	je	.LBB1_3
# %bb.1:
	cmpl	$0, 80(%r13)
	jne	.LBB1_3
# %bb.2:
	movq	%r13, %rdi
	callq	__sinit
.LBB1_3:
	leaq	-48(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movl	$-1, %r12d
	cmpl	$-1, %r14d
	je	.LBB1_9
# %bb.4:
	leaq	164(%r15), %rcx
	leaq	-41(%rbp), %rsi
	movq	%r13, %rdi
	movl	%r14d, %edx
	callq	_wcrtomb_r
	cmpq	$-1, %rax
	je	.LBB1_10
# %bb.5:                                # %.preheader
	movq	%rax, %rbx
	addq	$1, %rbx
	.p2align	4, 0x90
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	addq	$-1, %rbx
	je	.LBB1_7
# %bb.8:                                #   in Loop: Header=BB1_6 Depth=1
	movzbl	-41(%rbp), %esi
	movq	%r13, %rdi
	movq	%r15, %rdx
	callq	_ungetc_r
	cmpl	$-1, %eax
	jne	.LBB1_6
	jmp	.LBB1_9
.LBB1_10:
	orb	$64, 16(%r15)
	jmp	.LBB1_9
.LBB1_7:
	movl	%r14d, %r12d
.LBB1_9:
	movl	-48(%rbp), %edi
	leaq	-48(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ungetwc, .Lfunc_end1-ungetwc
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
