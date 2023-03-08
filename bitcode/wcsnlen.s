	.text
	.file	"wcsnlen.c"
	.globl	wcsnlen                 # -- Begin function wcsnlen
	.p2align	4, 0x90
	.type	wcsnlen,@function
wcsnlen:                                # @wcsnlen
# %bb.0:
	movl	(%rdi), %edx
	testl	%edx, %edx
	sete	%cl
	movq	%rdi, %rax
	testq	%rsi, %rsi
	je	.LBB0_5
# %bb.1:
	movq	%rdi, %rax
	testl	%edx, %edx
	je	.LBB0_5
# %bb.2:                                # %.preheader
	movq	%rdi, %rax
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	notb	%cl
	movzbl	%cl, %r8d
	andl	$1, %r8d
	movl	4(%rax), %edx
	addq	$4, %rax
	testl	%edx, %edx
	sete	%cl
	subq	%r8, %rsi
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	testl	%edx, %edx
	jne	.LBB0_3
.LBB0_5:
	subq	%rdi, %rax
	sarq	$2, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	wcsnlen, .Lfunc_end0-wcsnlen
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
