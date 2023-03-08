	.text
	.file	"wcpcpy.c"
	.globl	wcpcpy                  # -- Begin function wcpcpy
	.p2align	4, 0x90
	.type	wcpcpy,@function
wcpcpy:                                 # @wcpcpy
# %bb.0:
	movq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$-4, %rax
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	(%rsi), %ecx
	addq	$4, %rsi
	movl	%ecx, 4(%rax)
	addq	$4, %rax
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB0_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	wcpcpy, .Lfunc_end0-wcpcpy
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
