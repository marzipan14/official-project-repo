	.text
	.file	"fpurge.c"
	.globl	_fpurge_r               # -- Begin function _fpurge_r
	.p2align	4, 0x90
	.type	_fpurge_r,@function
_fpurge_r:                              # @_fpurge_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%rbx)
	jne	.LBB0_3
# %bb.2:
	movq	%rbx, %rdi
	callq	__sinit
.LBB0_3:
	leaq	-20(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movswl	16(%r14), %eax
	testl	%eax, %eax
	je	.LBB0_14
# %bb.4:
	movq	24(%r14), %rcx
	movq	%rcx, (%r14)
	testb	$8, %al
	jne	.LBB0_9
# %bb.5:
	movl	$0, 8(%r14)
	movq	88(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB0_12
# %bb.6:
	leaq	116(%r14), %rax
	cmpq	%rax, %rdi
	je	.LBB0_8
# %bb.7:
	callq	free
.LBB0_8:
	movq	$0, 88(%r14)
	jmp	.LBB0_12
.LBB0_14:
	movl	$9, (%rbx)
	movl	-20(%rbp), %edi
	leaq	-20(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$-1, %eax
	jmp	.LBB0_13
.LBB0_9:
	xorl	%ecx, %ecx
	testb	$3, %al
	jne	.LBB0_11
# %bb.10:
	movl	32(%r14), %ecx
.LBB0_11:
	movl	%ecx, 12(%r14)
.LBB0_12:
	movl	-20(%rbp), %edi
	leaq	-20(%rbp), %rsi
	callq	pthread_setcancelstate
	xorl	%eax, %eax
.LBB0_13:
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_fpurge_r, .Lfunc_end0-_fpurge_r
                                        # -- End function
	.globl	fpurge                  # -- Begin function fpurge
	.p2align	4, 0x90
	.type	fpurge,@function
fpurge:                                 # @fpurge
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	_fpurge_r               # TAILCALL
.Lfunc_end1:
	.size	fpurge, .Lfunc_end1-fpurge
                                        # -- End function
	.globl	__fpurge                # -- Begin function __fpurge
	.p2align	4, 0x90
	.type	__fpurge,@function
__fpurge:                               # @__fpurge
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	_fpurge_r               # TAILCALL
.Lfunc_end2:
	.size	__fpurge, .Lfunc_end2-__fpurge
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
