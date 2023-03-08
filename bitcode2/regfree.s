	.text
	.file	"regfree.c"
	.globl	regfree                 # -- Begin function regfree
	.p2align	4, 0x90
	.type	regfree,@function
regfree:                                # @regfree
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	cmpl	$62053, (%rdi)          # imm = 0xF265
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_16
# %bb.1:
	movq	24(%rdi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_16
# %bb.2:
	cmpl	$53829, (%rbx)          # imm = 0xD245
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_16
# %bb.3:
	movl	$0, (%rdi)
	movl	$0, (%rbx)
	movq	8(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_5
# %bb.4:
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB0_5:
	movq	24(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_7
# %bb.6:
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB0_7:
	movq	32(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_9
# %bb.8:
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB0_9:
	movq	96(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_11
# %bb.10:
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB0_11:
	movq	112(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_13
# %bb.12:
	addq	$-512, %rdi             # imm = 0xFE00
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB0_13:
	movq	120(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_15
# %bb.14:
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB0_15:
	movq	%rbx, %rdi
	callq	free
.LBB0_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	regfree, .Lfunc_end0-regfree
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
