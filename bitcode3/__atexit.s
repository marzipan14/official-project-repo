	.text
	.file	"__atexit.c"
	.globl	__register_exitproc     # -- Begin function __register_exitproc
	.p2align	4, 0x90
	.type	__register_exitproc,@function
__register_exitproc:                    # @__register_exitproc
# %bb.0:
	movq	%rcx, %r8
	movq	_global_impure_ptr(%rip), %rax
	movq	504(%rax), %r9
	testq	%r9, %r9
	jne	.LBB0_2
# %bb.1:
	leaq	512(%rax), %r9
	movq	%r9, 504(%rax)
.LBB0_2:
	movslq	8(%r9), %rcx
	movl	$-1, %eax
	cmpq	$31, %rcx
	jg	.LBB0_7
# %bb.3:
	testl	%edi, %edi
	je	.LBB0_6
# %bb.4:
	movl	$1, %eax
	shll	%cl, %eax
	movq	%rdx, 272(%r9,%rcx,8)
	orl	%eax, 784(%r9)
	movq	%r8, 528(%r9,%rcx,8)
	cmpl	$2, %edi
	jne	.LBB0_6
# %bb.5:
	orl	%eax, 788(%r9)
.LBB0_6:
	leal	1(%rcx), %eax
	movl	%eax, 8(%r9)
	movq	%rsi, 16(%r9,%rcx,8)
	xorl	%eax, %eax
.LBB0_7:
	retq
.Lfunc_end0:
	.size	__register_exitproc, .Lfunc_end0-__register_exitproc
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
