	.text
	.file	"argz_count.c"
	.globl	argz_count              # -- Begin function argz_count
	.p2align	4, 0x90
	.type	argz_count,@function
argz_count:                             # @argz_count
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_1
# %bb.2:
	movl	%esi, %ecx
	andl	$1, %ecx
	cmpq	$1, %rsi
	jne	.LBB0_9
# %bb.3:
	xorl	%edx, %edx
	xorl	%eax, %eax
.LBB0_4:
	testq	%rcx, %rcx
	je	.LBB0_8
# %bb.5:
	cmpb	$0, (%rdi,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_7
# %bb.6:
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_1:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_9:
	subq	%rcx, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.LBB0_10
	.p2align	4, 0x90
.LBB0_14:                               #   in Loop: Header=BB0_10 Depth=1
	addq	$2, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rsi
	je	.LBB0_4
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rdi,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB0_12:                               #   in Loop: Header=BB0_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, 1(%rdi,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_10 Depth=1
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_14
.Lfunc_end0:
	.size	argz_count, .Lfunc_end0-argz_count
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
