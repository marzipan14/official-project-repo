	.text
	.file	"argz_next.c"
	.globl	argz_next               # -- Begin function argz_next
	.p2align	4, 0x90
	.type	argz_next,@function
argz_next:                              # @argz_next
# %bb.0:
	testq	%rdx, %rdx
	je	.LBB0_3
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rdx)
	leaq	1(%rdx), %rdx
	jne	.LBB0_1
# %bb.2:
	addq	%rsi, %rdi
	xorl	%eax, %eax
	cmpq	%rdi, %rdx
	cmovbq	%rdx, %rax
	retq
.LBB0_3:
	testq	%rsi, %rsi
	cmoveq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end0:
	.size	argz_next, .Lfunc_end0-argz_next
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
