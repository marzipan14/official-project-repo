	.text
	.file	"strndup_r.c"
	.globl	_strndup_r              # -- Begin function _strndup_r
	.p2align	4, 0x90
	.type	_strndup_r,@function
_strndup_r:                             # @_strndup_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rsi, %rbx
	testq	%rdx, %rdx
	je	.LBB0_4
# %bb.1:                                # %.preheader
	movq	%r14, %rbx
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rbx)
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	addq	$-1, %rdx
	addq	$1, %rbx
	testq	%rdx, %rdx
	jne	.LBB0_2
.LBB0_4:
	subq	%r14, %rbx
	leaq	1(%rbx), %rdi
	callq	malloc
	movq	%rax, %r15
	testq	%rax, %rax
	je	.LBB0_6
# %bb.5:
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, (%r15,%rbx)
.LBB0_6:
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_strndup_r, .Lfunc_end0-_strndup_r
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
