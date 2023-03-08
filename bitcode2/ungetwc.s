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
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdx, %r15
	movl	%esi, %r14d
	movq	%rdi, %r12
	leaq	-40(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r14d
	je	.LBB0_5
# %bb.1:
	leaq	164(%r15), %rcx
	leaq	-33(%rbp), %rsi
	movq	%r12, %rdi
	movl	%r14d, %edx
	callq	_wcrtomb_r
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB0_7
# %bb.2:                                # %.preheader
	movq	%rax, %rbx
	addq	$1, %rbx
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rbx
	je	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movzbl	-33(%rbp), %esi
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	_ungetc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB0_3
	jmp	.LBB0_5
.LBB0_7:
	orb	$64, 16(%r15)
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r14d
.LBB0_6:
	movl	-40(%rbp), %edi
	leaq	-40(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
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
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movl	%edi, %r15d
	callq	__getreent
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_3
# %bb.1:
	cmpl	$0, 80(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_3
# %bb.2:
	movq	%rbx, %rdi
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB1_3:
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movq	%r14, %rdx
	callq	_ungetwc_r
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
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
