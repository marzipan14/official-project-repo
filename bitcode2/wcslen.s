	.text
	.file	"wcslen.c"
	.globl	wcslen                  # -- Begin function wcslen
	.p2align	4, 0x90
	.type	wcslen,@function
wcslen:                                 # @wcslen
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %rax
	je	.LBB0_3
# %bb.1:                                # %.preheader
	movq	%rdi, %rax
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 4(%rax)
	leaq	4(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_2
.LBB0_3:
	subq	%rdi, %rax
	sarq	$2, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	wcslen, .Lfunc_end0-wcslen
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
