	.text
	.file	"wcscpy.c"
	.globl	wcscpy                  # -- Begin function wcscpy
	.p2align	4, 0x90
	.type	wcscpy,@function
wcscpy:                                 # @wcscpy
# %bb.0:
	movq	%rdi, %rax
	movl	$0, (%rdi)
	movl	(%rsi), %ecx
	movq	%rdi, %rdx
	testl	%ecx, %ecx
	je	.LBB0_3
# %bb.1:                                # %.preheader
	addq	$4, %rsi
	movq	%rax, %rdx
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	%ecx, (%rdx)
	addq	$4, %rdx
	movl	(%rsi), %ecx
	addq	$4, %rsi
	testl	%ecx, %ecx
	jne	.LBB0_2
.LBB0_3:
	movl	$0, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	wcscpy, .Lfunc_end0-wcscpy
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
